//
// Created by deniz on 4/22/24.
//

#ifndef SUPERMAN_REBORN_SPARSEPERMANSHAREDCOALESCINGSHAREDMULTIGPUCPUCHUNKSSKIPPER_CUH
#define SUPERMAN_REBORN_SPARSEPERMANSHAREDCOALESCINGSHAREDMULTIGPUCPUCHUNKSSKIPPER_CUH

#include "Permanent.h"
#include "SparseKernelDefinitions.cuh"
#include "SparseMatrix.h"


template <class C, class S>
class SparsePermanSharedCoalescingSharedMultiGPUCPUChunksSkipper: public Permanent<C, S>
{
public:
    SparsePermanSharedCoalescingSharedMultiGPUCPUChunksSkipper(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};


template<class C, class S>
double SparsePermanSharedCoalescingSharedMultiGPUCPUChunksSkipper<C, S>::permanentFunction()
{
    SparseMatrix<S>* sparsemat = dynamic_cast<SparseMatrix<S>*>(this->m_Matrix);

    //Pack parameters
    S* mat = sparsemat->mat;
    int* cptrs = sparsemat->cptrs;
    int* rows = sparsemat->rows;
    int* rptrs = sparsemat->rptrs;
    int* cols = sparsemat->cols;
    S* cvals = sparsemat->cvals;
    int nov = sparsemat->noRow;
    //Pack parameters

    //Pack flags
    unsigned threads = this->m_Settings.threadC;
    unsigned gpu_num = this->m_Settings.gpuNum;
    bool cpu = true;
    //Pack flags

    cudaDeviceProp* props = new cudaDeviceProp[gpu_num];
    for(int i = 0; i < gpu_num; i++){
        cudaGetDeviceProperties(&props[i], i);
        printf("===SC=== Using Device: %d -- %s \n", i, props[i].name); //Just print this for every GPU we have
    }

    int gpu_driver_threads = gpu_num;
    int calculation_threads = threads - (gpu_num);

    printf("===SC=== Using %d threads for GPU drivers \n", gpu_driver_threads);
    printf("===SC=== Using %d threads for calculation \n", calculation_threads);
    if(calculation_threads < 1){
        printf("===WARNING=== No calculation threads left for CPU \n");
        cpu = false;
    }
    int if_cpu = (int)cpu; //1 thread will be responsible for launching cpu kernel if cpu is chosen

    C x[nov];
    C rs; //row sum
    C p = 1; //product of the elements in vector 'x'
    C p_partial[gpu_num + if_cpu];

    for (int id = 0; id < gpu_num+1; id++) {
        p_partial[id] = 0;
    }

    unsigned long long number_of_chunks = 1;
    for (int i = 0; i < nov/4; i++) {
        number_of_chunks *= 2;
    }

    int chunk_id = 0;

    int total = 0;
    //create the x vector and initiate the permanent
    for (int j = 0; j < nov; j++) {
        rs = .0f;
        for (int k = 0; k < nov; k++) {
            if (mat[(j * nov) + k] != 0) {
                total++;
                rs += mat[(j * nov) + k];  // sum of row j
            }
        }
        x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
        p *= x[j];   // product of the elements in vector 'x'
    }

    //For variable smem
    glob_nov = nov;
    glob_total = total;
    glob_sizeof_c = sizeof(C);
    glob_sizeof_s = sizeof(S);

    if((total != sparsemat->nnz)){
        printf("Some pointers flew away, exiting.. \n");
        exit(1);
    }

    unsigned long long start = 1;
    unsigned long long end = (1LL << (nov-1));
    unsigned long long offset = (end - start) / number_of_chunks;

    unsigned long long curr_chunk = gpu_num + if_cpu - 1;

    omp_set_nested(1);
    omp_set_dynamic(0);

#pragma omp parallel for num_threads(gpu_num + if_cpu) schedule(static, 1)
    for (int dev = 0; dev < gpu_num + if_cpu; dev++) {

        int tid = omp_get_thread_num();
        int nt = omp_get_num_threads();
        unsigned long long last = tid;

        if(tid == gpu_num){//CPU PART

            while(last < number_of_chunks){

                if(last == number_of_chunks - 1){
                    p_partial[tid] += cpu_perman64_skip(sparsemat, calculation_threads, x,
                                                        (start + last * offset), end);
                }
                else{
                    p_partial[tid] += cpu_perman64_skip(sparsemat, calculation_threads, x,
                                                        (start + last * offset),
                                                        (start + (last+1) * offset));
                }

#pragma omp atomic update
                curr_chunk++;
#pragma omp atomic read
                last = curr_chunk;
            }
        }//CPU PART
        else{//GPU PART

            cudaSetDevice(tid);
            cudaStream_t thread_stream;
            cudaStreamCreate(&thread_stream);
            //printf("Thread %d set device to: %s \n", tid, props[tid].name);


            int grid_dim = 0;
            int block_dim = 0;

            cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
                                                           &block_dim,
                                                           &Definitions::kernel_xshared_coalescing_mshared_skipper<C,S>,
                                                           xshared_coalescing_mshared_skipper_sharedmem,
                                                           0);

            size_t size = nov*block_dim*sizeof(C) + 2*(nov+1)*sizeof(int) + 2*total*sizeof(int) + total*sizeof(S);

            S *d_cvals;
            int *d_rptrs, *d_cols, *d_cptrs, *d_rows;
            C *d_x, *d_p;
            C *h_p = new C[grid_dim * block_dim];

            cudaMalloc( &d_x, (nov) * sizeof(C));
            cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
            cudaMalloc( &d_rptrs, (nov + 1) * sizeof(int));
            cudaMalloc( &d_cols, (total) * sizeof(int));
            cudaMalloc( &d_cptrs, (nov + 1) * sizeof(int));
            cudaMalloc( &d_rows, (total) * sizeof(int));
            cudaMalloc( &d_cvals, (total) * sizeof(S));

            cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
            cudaMemcpy( d_rptrs, rptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice);
            cudaMemcpy( d_cols, cols, (total) * sizeof(int), cudaMemcpyHostToDevice);
            cudaMemcpy( d_cptrs, cptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice);
            cudaMemcpy( d_rows, rows, (total) * sizeof(int), cudaMemcpyHostToDevice);
            cudaMemcpy( d_cvals, cvals, (total) * sizeof(S), cudaMemcpyHostToDevice);


            while(last < number_of_chunks){

                cudaMalloc(&d_p, (grid_dim * block_dim) * sizeof(C));
                //printf("tid: %d -- last: %d / %llu \n", tid, last, number_of_chunks);

                if(last == number_of_chunks - 1){
                    Definitions::kernel_xshared_coalescing_mshared_skipper<C,S><<<grid_dim, block_dim, size>>>(d_rptrs,
                            d_cols,
                            d_cptrs,
                            d_rows,
                            d_cvals,
                            d_x,
                            d_p,
                            nov,
                            total,
                            (start + last * offset),
                            end);

                    cudaStreamSynchronize(thread_stream);
                }
                else{
                    Definitions::kernel_xshared_coalescing_mshared_skipper<C,S><<<grid_dim, block_dim, size>>>(d_rptrs,
                            d_cols,
                            d_cptrs,
                            d_rows,
                            d_cvals,
                            d_x,
                            d_p,
                            nov,
                            total,
                            (start + last * offset),
                            (start + (last+1) * offset));
                    cudaStreamSynchronize(thread_stream);
                }

                cudaMemcpy(h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);
                cudaFree(d_p);

                for(int i = 0; i < grid_dim * block_dim; i++){
                    p_partial[tid] += h_p[i];
                }

#pragma omp atomic update
                curr_chunk++;
#pragma omp atomic read
                last = curr_chunk;
            }

            cudaFree(d_x);
            cudaFree(d_p);
            cudaFree(d_rptrs);
            cudaFree(d_cols);
            cudaFree(d_cptrs);
            cudaFree(d_rows);
            cudaFree(d_cvals);
            delete[] h_p;

        }//GPU PART
    }


    double return_p = p;

    //for(int i = 0; i < gpu_num + if_cpu; i++){
    //printf("p_partial[%d]: %f \n", i, p_partial[i]);
    //}

    for (int dev = 0; dev < gpu_num + if_cpu; dev++) {
        return_p += p_partial[dev];
    }

    return (4*(nov&1)-2) * return_p;
}


#endif //SUPERMAN_REBORN_SPARSEPERMANSHAREDCOALESCINGSHAREDMULTIGPUCPUCHUNKSSKIPPER_CUH
