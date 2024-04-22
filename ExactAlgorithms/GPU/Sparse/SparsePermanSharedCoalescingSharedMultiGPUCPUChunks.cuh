//
// Created by deniz on 4/22/24.
//

#ifndef SUPERMAN_REBORN_SPARSEPERMANSHAREDCOALESCINGSHAREDMULTIGPUCPUCHUNKS_CUH
#define SUPERMAN_REBORN_SPARSEPERMANSHAREDCOALESCINGSHAREDMULTIGPUCPUCHUNKS_CUH

#include "Permanent.h"
#include "SparseMatrix.h"


template <class C, class S>
class SparsePermanSharedCoalescingSharedMultiGPUCPUChunks: public Permanent<C, S>
{
public:
    SparsePermanSharedCoalescingSharedMultiGPUCPUChunks(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};


template<class C, class S>
double SparsePermanSharedCoalescingSharedMultiGPUCPUChunks<C, S>::permanentFunction()
{
    SparseMatrix<S>* sparsemat = dynamic_cast<SparseMatrix<S>*>(this->m_Matrix);

    //Pack parameters
    S* mat = sparsemat->mat;
    int* cptrs = sparsemat->cptrs;
    int* rows = sparsemat->rows;
    S* cvals = sparsemat->cvals;
    int nov = sparsemat->noRow;
    //Pack parameters

    //Pack flags
    //int grid_dim = flags.grid_dim;
    //int block_dim = flags.block_dim;
    unsigned gpu_num = this->m_Settings.gpuNum;
    unsigned threads = this->m_Settings.threadC;
    unsigned grid_dim_multip = this->m_Settings.gridDimMultiplier;
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

    C p_partial[gpu_num + if_cpu]; //This is only used while calculating return value

    //printf("if_cpu: %d \n", if_cpu);

    for (int id = 0; id < gpu_num + if_cpu; id++) {
        p_partial[id] = 0;
        //printf("p_partial[id]: %f \n", (double)p_partial[id]);
    }

    unsigned long long number_of_chunks = 1;
    for (int i = 0; i < nov/4; i++) {
        number_of_chunks *= 2;
    }

    int total = 0; //?
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

    if((total != sparsemat->nnz) || (total != sparsemat->nnz)){
        printf("Some pointers flew away, exiting.. \n");
        exit(1);
    }

    unsigned long long start = 1;
    unsigned long long end = (1LL << (nov-1));
    unsigned long long offset = (end - start) / number_of_chunks;

    unsigned long long curr_chunk = gpu_num + if_cpu - 1;


    omp_set_nested(1);
    omp_set_dynamic(0);

    //print_x(x, nov);

#pragma omp parallel for num_threads(gpu_num + if_cpu) schedule(static, 1)
    for(int dev = 0; dev < gpu_num + if_cpu; dev++){

        int tid = omp_get_thread_num();
        int nt = omp_get_num_threads();
        unsigned long long last = tid;


        if(tid == gpu_num){//CPU PART

            //printf("I'm thread %d, I am running CPU, my last: %llu \n", tid, last);

            while(last < number_of_chunks){
                //printf("tid: %d last: %llu / %llu -- Start: %llu - End: %llu \n", tid, last, number_of_chunks, (start + last * offset), (start + (last+1) * offset));

                if(last == number_of_chunks - 1){
                    p_partial[tid] += cpu_perman64_sparse(sparsemat, calculation_threads, x,
                                                          (start + last * offset), end);
                }
                else{
                    p_partial[tid] += cpu_perman64_sparse(sparsemat, calculation_threads, x,
                                                          (start + last * offset),
                                                          (start + (last+1) * offset));
                }

                //lasts[last] = !lasts[last];

#pragma omp atomic update
                curr_chunk++;
#pragma omp atomic read
                last = curr_chunk;
            }
        }//CPU PART
        else{//GPU PART

            cudaSetDevice(tid);
            //printf("Thread %d running device %d -- %s \n", tid, tid, props[tid].name);

            //printf("I'm thread %d, I am running GPU, my last: %llu \n", tid, last);
            cudaStream_t thread_stream;
            cudaStreamCreate(&thread_stream);

            int grid_dim = 0;
            int block_dim = 0;

            cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
                                                           &block_dim,
                                                           &Definitions::kernel_xshared_coalescing_mshared_sparse<C,S>,
                                                           xshared_coalescing_mshared_sparse_sharedmem,
                                                           0);

            size_t size = nov*block_dim*sizeof(C) + (nov+1)*sizeof(int) + total*sizeof(int) + total*sizeof(S) + sizeof(S);

            //?
            if(grid_dim_multip != 1){
                grid_dim *= grid_dim_multip;
            }

            //printf("==SC== Device: %d -- Grid Dim: %d -- Block Dim: %d -- Shared Per Block: %zu \n", dev, grid_dim, block_dim, size);

            S *d_cvals;
            int *d_cptrs, *d_rows;
            C *d_x, *d_p;
            C *h_p = new C[grid_dim*block_dim];


            cudaMalloc(&d_x, (nov) * sizeof(C));
            //cudaMalloc(&d_p, (grid_dim * block_dim) * sizeof(C), thread_stream);
            cudaMalloc(&d_rows, (total) * sizeof(int));
            cudaMalloc(&d_cptrs, (nov + 1) * sizeof(int));
            cudaMalloc(&d_cvals, (total) * sizeof(S));

            cudaMemcpy(d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
            cudaMemcpy(d_cptrs, cptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice);
            cudaMemcpy(d_rows, rows, (total) * sizeof(int), cudaMemcpyHostToDevice);
            cudaMemcpy(d_cvals, cvals, (total) * sizeof(S), cudaMemcpyHostToDevice);

            while(last < number_of_chunks){
                //printf("tid: %d last: %llu / %llu \n", tid, last, number_of_chunks);

                cudaMalloc(&d_p, (grid_dim * block_dim) * sizeof(C));

                if(last == number_of_chunks -1){
                    //printf("Ending with gpu, dev: %d \n", tid);
                    Definitions::kernel_xshared_coalescing_mshared_sparse<C,S><<<grid_dim, block_dim, size, thread_stream>>>(d_cptrs,
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
                    Definitions::kernel_xshared_coalescing_mshared_sparse<C,S><<<grid_dim, block_dim, size, thread_stream>>>(d_cptrs,
                            d_rows,
                            d_cvals,
                            d_x,
                            d_p,
                            nov,
                            total,
                            (start + last * offset),
                            (start + (last + 1) * offset));
                    cudaStreamSynchronize(thread_stream);
                }


                cudaMemcpy(h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);
                cudaFree(d_p);

                for(int i = 0; i < grid_dim * block_dim; i++){
                    p_partial[tid] += h_p[i];
                }

                //lasts[last] = !lasts[last];

#pragma omp atomic update
                curr_chunk++;
#pragma omp atomic read
                last = curr_chunk;
            }

            cudaFree(d_x);
            cudaFree(d_cptrs);
            cudaFree(d_rows);
            cudaFree(d_cvals);

        }//GPU PART
    }
    double return_p = p;

    for (int dev = 0; dev < gpu_num + if_cpu; dev++) {
        return_p += p_partial[dev];
        //printf("p_partial[%d]: %.16f \n", dev, p_partial[dev]);
    }

//for(int i = 0; i < number_of_chunks; i++){
//if(!lasts[i])
//printf("lasts[%d] is weird! \n", i);
//}

    //delete p_partial;

    return (4*(nov&1)-2) * return_p;
}


#endif //SUPERMAN_REBORN_SPARSEPERMANSHAREDCOALESCINGSHAREDMULTIGPUCPUCHUNKS_CUH
