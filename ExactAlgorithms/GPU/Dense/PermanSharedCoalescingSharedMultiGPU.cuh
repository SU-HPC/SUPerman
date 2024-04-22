//
// Created by deniz on 4/22/24.
//

#ifndef SUPERMAN_REBORN_PERMANSHAREDCOALESCINGSHAREDMULTIGPU_CUH
#define SUPERMAN_REBORN_PERMANSHAREDCOALESCINGSHAREDMULTIGPU_CUH

#include "Permanent.h"


template <class C, class S>
class PermanSharedCoalescingSharedMultiGPU: public Permanent<C, S>
{
public:
    PermanSharedCoalescingSharedMultiGPU(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};


template<class C, class S>
double PermanSharedCoalescingSharedMultiGPU<C, S>::permanentFunction()
{
    //Pack parameters
    S* mat = this->m_Matrix->mat;
    int nov = this->m_Matrix->noRow;
    //Pack parameters//

    //Pack flags//
    unsigned grid_dim = this->m_Settings.gridDim;
    unsigned block_dim = this->m_Settings.blockDim;
    unsigned grid_dim_multip = this->m_Settings.gridDimMultiplier;
    unsigned gpu_num = this->m_Settings.gpuNum;
    //Pack flags//

    //Multigpu special//
    int grid_dims[gpu_num];
    int block_dims[gpu_num];

    for(int i = 0; i < gpu_num; i++){
        grid_dims[i] = grid_dim;
        block_dims[i] = block_dim;
    }
    //Multigpu special//

    C x[nov];
    C rs; //row sum
    C p = 1; //product of the elements in vector 'x'
    C p_partial[gpu_num];

    for (int gpu_id = 0; gpu_id < gpu_num; gpu_id++) {
        p_partial[gpu_id] = 0;
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

    long long start = 1;
    long long end = (1LL << (nov-1));
    long long offset = (end - start) / gpu_num;

#pragma omp parallel num_threads(gpu_num)
    {
        int gpu_id = omp_get_thread_num();
        cudaSetDevice(gpu_id);

        cudaDeviceProp prop;
        cudaGetDeviceProperties(&prop, gpu_id);
        printf("==SC== Running on device: %d -- %s \n", gpu_id, prop.name);

        cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dims[gpu_id],
                                                       &block_dims[gpu_id],
                                                       &Definitions::kernel_xshared_coalescing_mshared<C,S>,
                                                       xshared_coalescing_mshared_sharedmem,
                                                       0);

        size_t size = (nov*block_dims[gpu_id]*sizeof(C) + nov*nov*sizeof(S));

        printf("==SC== Shared memory per block is set to : %zu on %d-%s \n", size, gpu_id, prop.name);
        printf("==SC== Grid dim is set to : %d  on %d-%s \n", grid_dims[gpu_id], gpu_id, prop.name);
        printf("==SC== Block dim is set to : %d on %d-%s \n", block_dims[gpu_id], gpu_id, prop.name);

        if(grid_dim_multip != 1){
            grid_dims[gpu_id]*=grid_dim_multip;
            printf("==SC== Grid dim is re-set to : %d on %d-%s \n", grid_dims[gpu_id], gpu_id, prop.name);
        }

        S *d_mat_t;
        C *d_x, *d_p;
        C *h_p = new C[grid_dims[gpu_id] * block_dims[gpu_id]];

        cudaMalloc( &d_x, (nov) * sizeof(C));
        cudaMalloc( &d_p, (grid_dims[gpu_id] * block_dims[gpu_id]) * sizeof(C));
        cudaMalloc( &d_mat_t, (nov * nov) * sizeof(S));

        cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
        cudaMemcpy( d_mat_t, mat_t, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice);


        if (gpu_id == gpu_num-1) {
            Definitions::kernel_xshared_coalescing_mshared<<< grid_dims[gpu_id] , block_dims[gpu_id] , size >>> (d_mat_t, d_x, d_p, nov, (start + gpu_id*offset), end);
        }
        else {
            Definitions::kernel_xshared_coalescing_mshared<<< grid_dims[gpu_id] , block_dims[gpu_id] , size >>> (d_mat_t, d_x, d_p, nov, (start + gpu_id*offset), (start + (gpu_id+1)*offset));
        }
        cudaDeviceSynchronize();

        cudaMemcpy( h_p, d_p, grid_dims[gpu_id] * block_dims[gpu_id] * sizeof(C), cudaMemcpyDeviceToHost);

        cudaFree(d_mat_t);
        cudaFree(d_x);
        cudaFree(d_p);

        for (int i = 0; i < grid_dims[gpu_id] * block_dims[gpu_id]; i++) {
            p_partial[gpu_id] += h_p[i];
        }
        delete[] h_p;
    }

    delete [] mat_t;
    for (int gpu_id = 0; gpu_id < gpu_num; gpu_id++) {
        p += p_partial[gpu_id];
    }

    double return_p = p;

    return (4*(nov&1)-2) * return_p;
}


#endif //SUPERMAN_REBORN_PERMANSHAREDCOALESCINGSHAREDMULTIGPU_CUH
