//
// Created by deniz on 4/22/24.
//

#ifndef SUPERMAN_REBORN_PERMANSHAREDCOALESCINGSHAREDMULTIGPUCPUCHUNKS_CUH
#define SUPERMAN_REBORN_PERMANSHAREDCOALESCINGSHAREDMULTIGPUCPUCHUNKS_CUH

#include "Permanent.h"
#include "DenseKernelDefinitions.cuh"


template <class C, class S>
class PermanSharedCoalescingSharedMultiGPUCPUChunks: public Permanent<C, S>
{
public:
    PermanSharedCoalescingSharedMultiGPUCPUChunks(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};


template<class C, class S>
double PermanSharedCoalescingSharedMultiGPUCPUChunks<C, S>::permanentFunction()
{
    //Pack parameters//
    S* mat = this->m_Matrix->mat;
    int nov = this->m_Matrix->noRow;
    //Pack parameters//

    //Pack flags//
    unsigned gpu_num = this->m_Settings.gpuNum;
    unsigned f_grid_dim = this->m_Settings.gridDim;
    unsigned f_block_dim = this->m_Settings.blockDim;
    unsigned threads = this->m_Settings.threadC;
    unsigned device_id = this->m_Settings.deviceID;
    unsigned grid_dim_multip = this->m_Settings.gridDimMultiplier;
    bool cpu = true;

    cudaDeviceProp* props = new cudaDeviceProp[gpu_num];
    for(int i = 0; i < gpu_num; i++){
        cudaGetDeviceProperties(&props[i], i);
        printf("===SC=== Using Device: %d -- %s \n", i, props[i].name);
    }

    int gpu_driver_threads = gpu_num;
    int calculation_threads = threads - gpu_num;

    printf("===SC=== Using %d threads for GPU drivers \n", gpu_driver_threads);
    printf("===SC=== Using %d threads for calculation \n", calculation_threads);

    if(calculation_threads < 1){
        printf("===WARNING=== No calculation threads left for CPU \n");
        cpu = false;
    }

    int if_cpu = (int)cpu;

    //printf("threads: %d | calculation_threads: %d | if_cpu: %d \n", threads, calculation_threads, if_cpu);



    C x[nov];
    C rs; //row sum
    C p = 1; //product of the elements in vector 'x'
    C p_partial[gpu_num + if_cpu];

    for (int id = 0; id < gpu_num+1; id++) {
        p_partial[id] = 0;
    }

    int number_of_chunks = 1;

    for (int i = 0; i < nov/4; i++) {
        number_of_chunks *= 2;
    }


    //create the x vector and initiate the permanent
    for (int j = 0; j < nov; j++) {
        rs = .0f;
        for (int k = 0; k < nov; k++) {
            rs += mat[(j * nov) + k];  // sum of row j
        }
        x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
        p *= x[j];   // product of the elements in vector 'x'
    }


    //For variable smem
    glob_nov = nov;
    glob_sizeof_c = sizeof(C);
    glob_sizeof_s = sizeof(S);
    //For variable smem

    //create the transpose of the matrix
    S* mat_t = new S[nov * nov];
    for (int i = 0; i < nov; i++) {
        for (int j = 0; j < nov; j++) {
            mat_t[(i * nov) + j] = mat[(j * nov) + i];
        }
    }

    unsigned long long start = 1;
    long long end = (1LL << (nov-1));
    long long offset = (end - start) / number_of_chunks;

    unsigned long long curr_chunk = gpu_num + if_cpu - 1;

    omp_set_nested(1);
    omp_set_dynamic(0);
#pragma omp parallel for num_threads(gpu_num + if_cpu) schedule(static, 1)
    for (int dev = 0; dev < gpu_num + if_cpu ; dev++) {

        int tid = omp_get_thread_num();
        int nt = omp_get_num_threads();
        unsigned long long last = tid;

        if (tid == gpu_num) {//CPU PART

            while(last < number_of_chunks){

                //printf("thread %d Running CPU kernel, last: %d \n", tid, last);

                if (last == number_of_chunks - 1) {
                    p_partial[tid] += cpu_perman64(mat_t, x, nov,
                                                   (start + last*offset),
                                                   end,
                                                   calculation_threads);
                }
                else {
                    p_partial[tid] += cpu_perman64(mat_t, x, nov,
                                                   (start + last*offset),
                                                   (start + (last+1)*offset),
                                                   calculation_threads);
                }
#pragma omp atomic update
                curr_chunk++;
#pragma omp atomic read
                last = curr_chunk;
            }
        }//CPU PART
        else {//GPU PART

            cudaSetDevice(tid);

            int grid_dim = f_grid_dim;
            int block_dim = f_block_dim;

            cudaStream_t thread_stream;
            cudaStreamCreate(&thread_stream);

            cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
                                                           &block_dim,
                                                           &Definitions::kernel_xshared_coalescing_mshared<C,S>,
                                                           xshared_coalescing_mshared_sharedmem,
                                                           0);

            size_t size = (nov*block_dim*sizeof(C) + nov*nov*sizeof(S));

            if(grid_dim_multip != 1){
                grid_dim *= grid_dim_multip;
            }

            S *d_mat_t;
            C *d_x, *d_p;
            C *h_p = new C[grid_dim * block_dim];

            cudaMalloc( &d_x, (nov) * sizeof(C));
            //cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
            cudaMalloc( &d_mat_t, (nov * nov) * sizeof(S));

            cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
            cudaMemcpy( d_mat_t, mat_t, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice);


            while (last < number_of_chunks) {

                //printf("thread %d Running GPU kernel, last: %d \n", tid, last);

                cudaMalloc(&d_p, (grid_dim * block_dim) * sizeof(C));

                if (last == number_of_chunks - 1) {
                    Definitions::kernel_xshared_coalescing_mshared<<< grid_dim , block_dim , size, thread_stream >>> (d_mat_t, d_x, d_p, nov,
                                                                                                         (start + last*offset), end);
                    cudaStreamSynchronize(thread_stream);
                } else {
                    Definitions::kernel_xshared_coalescing_mshared<<< grid_dim , block_dim , size, thread_stream >>> (d_mat_t, d_x, d_p, nov,
                                                                                                         (start + last*offset),
                                                                                                         (start + (last+1)*offset));

                    cudaStreamSynchronize(thread_stream);
                }

                cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);
                cudaFree(d_p);

                for (int i = 0; i < grid_dim * block_dim; i++) {
                    p_partial[tid] += h_p[i];
                }

#pragma omp atomic update
                curr_chunk++;
#pragma omp atomic read
                last = curr_chunk;
            }

            cudaFree(d_mat_t);
            cudaFree(d_x);
            cudaFree(d_p);
            delete[] h_p;
        }//GPU PART
    }

    delete [] mat_t;

    double return_p = p;

    for (int dev = 0; dev < gpu_num + if_cpu; dev++) {
        return_p += p_partial[dev];
    }

    return (4*(nov&1)-2) * return_p;
}


#endif //SUPERMAN_REBORN_PERMANSHAREDCOALESCINGSHAREDMULTIGPUCPUCHUNKS_CUH
