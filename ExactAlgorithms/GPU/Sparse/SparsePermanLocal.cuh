//
// Created by deniz on 4/22/24.
//

#ifndef SUPERMAN_REBORN_SPARSEPERMANLOCAL_CUH
#define SUPERMAN_REBORN_SPARSEPERMANLOCAL_CUH

#include "Permanent.h"
#include "SparseKernelDefinitions.cuh"
#include "SparseMatrix.h"


template <class C, class S>
class SparsePermanLocal: public Permanent<C, S>
{
public:
    SparsePermanLocal(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};


template<class C, class S>
double SparsePermanLocal<C, S>::permanentFunction()
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
    unsigned grid_dim = this->m_Settings.gridDim;
    unsigned block_dim = this->m_Settings.blockDim;
    unsigned device_id = this->m_Settings.deviceID;
    unsigned grid_dim_multip = this->m_Settings.gridDimMultiplier;
    //Pack flags

    cudaSetDevice(device_id);
    cudaDeviceSynchronize();

    C x[nov];
    C rs; //row sum
    C p = 1; //product of the elements in vector 'x'
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

    cudaOccupancyMaxPotentialBlockSize(&grid_dim,
                                       &block_dim,
                                       &Definitions::kernel_xlocal_sparse<C,S>,
                                       0,
                                       0);

    printf("==SC== No Shared memory is used for the kernel..\n");
    printf("==SC== Grid dim is set to : %d \n", grid_dim);
    printf("==SC== Block dim is set to : %d \n", block_dim);

    if(grid_dim_multip != 1){
        grid_dim*=grid_dim_multip;
        printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
    }

    S *d_cvals;
    int *d_cptrs, *d_rows;
    C *d_x, *d_p;
    C *h_p = new C[grid_dim * block_dim];

    cudaMalloc( &d_x, (nov) * sizeof(C));
    cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
    cudaMalloc( &d_cptrs, (nov + 1) * sizeof(int));
    cudaMalloc( &d_rows, (total) * sizeof(int));
    cudaMalloc( &d_cvals, (total) * sizeof(S));

    cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
    cudaMemcpy( d_cptrs, cptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice);
    cudaMemcpy( d_rows, rows, (total) * sizeof(int), cudaMemcpyHostToDevice);
    cudaMemcpy( d_cvals, cvals, (total) * sizeof(S), cudaMemcpyHostToDevice);

    //double stt = omp_get_wtime();
    Definitions::kernel_xlocal_sparse<C,S><<<grid_dim , block_dim>>> (d_cptrs, d_rows, d_cvals, d_x, d_p, nov);
    cudaDeviceSynchronize();
    //double enn = omp_get_wtime();
    //cout << "kernel" << " in " << (enn - stt) << endl;
    //printf("kernel in %f \n", enn - stt);

    cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

    cudaFree(d_x);
    cudaFree(d_p);
    cudaFree(d_cptrs);
    cudaFree(d_rows);
    cudaFree(d_cvals);

    double return_p = p;

    for (int i = 0; i < grid_dim * block_dim; i++) {
        return_p += (double)h_p[i];
    }

    delete[] h_p;

    return (4*(nov&1)-2) * return_p;
}


#endif //SUPERMAN_REBORN_SPARSEPERMANLOCAL_CUH
