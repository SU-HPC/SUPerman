//
// Created by deniz on 4/22/24.
//

#ifndef SUPERMAN_REBORN_SPARSEPERMANSHAREDCOALESCINGSHAREDMULTIGPU_CUH
#define SUPERMAN_REBORN_SPARSEPERMANSHAREDCOALESCINGSHAREDMULTIGPU_CUH

#include "Permanent.h"
#include "SparseMatrix.h"
#include "SparseKernelDefinitions.cuh"


template <class C, class S>
class SparsePermanSharedCoalescingSharedMultiGPU: public Permanent<C, S>
{
public:
    SparsePermanSharedCoalescingSharedMultiGPU(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};


template<class C, class S>
double SparsePermanSharedCoalescingSharedMultiGPU<C, S>::permanentFunction()
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
    unsigned gpu_num = this->m_Settings.gpuNum;
    unsigned grid_dim_multip = this->m_Settings.gridDimMultiplier;
    //Pack flags

    C x[nov];
    C rs; //row sum
    C p = 1; //product of the elements in vector 'x'

    C p_partial[gpu_num]; //This is used only once and while computing return value
    //So it's double in order not to lose further precision while summing partial
    //results up

    for (int gpu_id = 0; gpu_id < gpu_num; gpu_id++) {
        p_partial[gpu_id] = 0;
    }
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
    //For variable smem

    long long start = 1;
    long long end = (1LL << (nov-1));
    long long offset = (end - start) / gpu_num;

    //Multigpu special//
    int grid_dims[gpu_num];
    int block_dims[gpu_num];
    //Multigpu special//

#pragma omp parallel num_threads(gpu_num)
    {

        int gpu_id = omp_get_thread_num();
        cudaSetDevice(gpu_id);

        cudaDeviceProp prop;
        cudaGetDeviceProperties(&prop, gpu_id);
        printf("==SC== Running on device: %d -- %s \n", gpu_id, prop.name);

        cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dims[gpu_id],
                                                       &block_dims[gpu_id],
                                                       &Definitions::kernel_xshared_coalescing_mshared_sparse<C,S>,
                                                       xshared_coalescing_mshared_sparse_sharedmem,
                                                       0);

        size_t size = nov*block_dims[gpu_id]*sizeof(C) + (nov+1)*sizeof(int) + total*sizeof(int) + total*sizeof(S);

        printf("==SC== Shared memory per block is set to : %zu on %d-%s \n", size, gpu_id, prop.name);
        printf("==SC== Grid dim is set to : %d on %d-%s \n", grid_dims[gpu_id], gpu_id, prop.name);
        printf("==SC== Block dim is set to : %d on %d-%s\n", block_dims[gpu_id], gpu_id, prop.name);

        if(grid_dim_multip != 1){
            grid_dims[gpu_id] *= grid_dim_multip;
            printf("==SC== Grid dim re-set to : %d on %d-%s \n", grid_dims[gpu_id], gpu_id, prop.name);
        }

        S *d_cvals;
        int *d_cptrs, *d_rows;
        C *d_x, *d_p;
        C *h_p = new C[grid_dims[gpu_id] * block_dims[gpu_id]];

        cudaMalloc( &d_x, (nov) * sizeof(C));
        cudaMalloc( &d_p, (grid_dims[gpu_id] * block_dims[gpu_id]) * sizeof(C));
        cudaMalloc( &d_cptrs, (nov + 1) * sizeof(int));
        cudaMalloc( &d_rows, (total) * sizeof(int));
        cudaMalloc( &d_cvals, (total) * sizeof(S));

        cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
        cudaMemcpy( d_cptrs, cptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice);
        cudaMemcpy( d_rows, rows, (total) * sizeof(int), cudaMemcpyHostToDevice);
        cudaMemcpy( d_cvals, cvals, (total) * sizeof(S), cudaMemcpyHostToDevice);



        //double stt = omp_get_wtime();
        if (gpu_id == gpu_num-1) {
            Definitions::kernel_xshared_coalescing_mshared_sparse<<< grid_dims[gpu_id] , block_dims[gpu_id] , size >>> (d_cptrs, d_rows, d_cvals, d_x, d_p, nov, total, (start + gpu_id*offset), end);
        } else {
            Definitions::kernel_xshared_coalescing_mshared_sparse<<< grid_dims[gpu_id] , block_dims[gpu_id] , size >>> (d_cptrs, d_rows, d_cvals, d_x, d_p, nov, total, (start + gpu_id*offset), (start + (gpu_id+1)*offset));
        }
        cudaDeviceSynchronize();
        //double enn = omp_get_wtime();
        //cout << "kernel" << gpu_id << " in " << (enn - stt) << endl;
        //printf("kernel %d in %f \n", gpu_id, enn - stt);

        cudaMemcpy( h_p, d_p, grid_dims[gpu_id] * block_dims[gpu_id] * sizeof(C), cudaMemcpyDeviceToHost);

        cudaFree(d_x);
        cudaFree(d_p);
        cudaFree(d_cptrs);
        cudaFree(d_rows);
        cudaFree(d_cvals);

        for (int i = 0; i < grid_dims[gpu_id] * block_dims[gpu_id]; i++) {
            p_partial[gpu_id] += (double)h_p[i];
        }

        delete[] h_p;
    }

    double return_p = p;

    for (int gpu_id = 0; gpu_id < gpu_num; gpu_id++) {
        return_p += p_partial[gpu_id];
    }

    return (4*(nov&1)-2) * return_p;
}


#endif //SUPERMAN_REBORN_SPARSEPERMANSHAREDCOALESCINGSHAREDMULTIGPU_CUH
