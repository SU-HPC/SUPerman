//
// Created by deniz on 4/22/24.
//

#ifndef SUPERMAN_REBORN_SPARSEPERMANSHAREDCOALESCINGSHARED_CUH
#define SUPERMAN_REBORN_SPARSEPERMANSHAREDCOALESCINGSHARED_CUH

#include "Permanent.h"
#include "SparseMatrix.h"
#include "SparseKernelDefinitions.cuh"


template <class C, class S>
class SparsePermanSharedCoalescingShared: public Permanent<C, S>
{
public:
    SparsePermanSharedCoalescingShared(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};


template<class C, class S>
double SparsePermanSharedCoalescingShared<C, S>::permanentFunction()
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


    cudaDeviceProp prop;
    cudaGetDeviceProperties(&prop, device_id);
    printf("==SC== Running on device: %d -- %s \n", device_id, prop.name);

    size_t max_shared_per_block = prop.sharedMemPerBlock;

    cudaSetDevice(device_id);
    cudaDeviceSynchronize();

    C x[nov];
    C rs; //row sum
    C p = 1; //product of the elements in vector 'x'
    int total = 0;
    int zero = 0;

    //printf("Calculation bytes: %d \n", sizeof(p));
    //printf("Storage bytes: %d \n", sizeof(mat[0]));

    //create the x vector and initiate the permanent
    for (int j = 0; j < nov; j++) {
        rs = .0f;
        for (int k = 0; k < nov; k++) {
            if (mat[(j * nov) + k] != (S)0) {
                total++;
                rs += mat[(j * nov) + k];  // sum of row j
            }
            else{
                zero++;
            }
        }
        x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
        p *= x[j];   // product of the elements in vector 'x'
    }

    total = sparsemat->nnz;

    //printf("!!Reported by func total: %d \n", getNnz(densemat->mat, nov));
    //printf("!!Total: %d | Zero: %d | nov*nov: %d!!\n", total, zero, nov*nov);
    //printf("!!total: %d --densemat->nov: %d !!\n", total, densemat->nov);
    //printf("!!total: %d --densemat->nnz: %d !!\n", total, densemat->nnz);
    //printf("!!total: %d --sparsemat->nnz: %d !!\n", total, sparsemat->nnz);


    //For variable smem
    glob_nov = nov;
    glob_total = total;
    glob_sizeof_c = sizeof(C);
    glob_sizeof_s = sizeof(S);
    //printf("sizeof_c: %d -- sizeof_s: %d \n", glob_sizeof_c, glob_sizeof_s);
    //For variable smem

    cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
                                                   &block_dim,
                                                   &Definitions::kernel_xshared_coalescing_mshared_sparse<C,S>,
                                                   xshared_coalescing_mshared_sparse_sharedmem,
                                                   0);


    //int power = 5;
    //int real_block_dim = 0;

    //while(pow(2, power+1) < block_dim){
    //power++;
    //}

    //block_dim = pow(2, power);




    size_t size = nov*block_dim*sizeof(C) + (nov+1)*sizeof(int) + total*sizeof(int) + total*sizeof(S) + sizeof(S);

    printf("==SC== Maximum Shared memory per block : %zu \n", max_shared_per_block);
    printf("==SC== Shared memory per block is set to : %zu \n", size);
    printf("==SC== Grid dim is set to : %d \n", grid_dim);
    printf("==SC== Block dim is set to : %d \n", block_dim);


    //printf("Calculation bytes: %d -- %d\n", sizeof(p), sizeof(C));
    //printf("Storage bytes: %d -- %d \n", sizeof(mat[0]), sizeof(S));

    if(grid_dim_multip != 1){
        grid_dim*=grid_dim_multip;
        printf("==SC== Grid dim is re-set to : %d \n", grid_dim);
    }


    //grid_dim = 160;
    //block_dim = 192;

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

    long long start = 1;
    long long end = (1LL << (nov-1));

    double stt = omp_get_wtime();

    //printf("Just before launch %d -- %d \n", grid_dim, block_dim);
    Definitions::kernel_xshared_coalescing_mshared_sparse<C,S><<<grid_dim , block_dim , size>>>(d_cptrs,
            d_rows,
            d_cvals,
            d_x,
            d_p,
            nov,
            total,
            start,
            end);
    cudaDeviceSynchronize();
    double enn = omp_get_wtime();
    //printf("kernel in %f \n", enn - stt);

    cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

    //cudaFree(d_x);
    //cudaFree(d_p);
    //cudaFree(d_cptrs);
    //cudaFree(d_rows);
    //cudaFree(d_cvals);

    double return_p = p;

    for (int i = 0; i < grid_dim * block_dim; i++) {
        return_p += (double)h_p[i];
    }

    delete[] h_p;

    return (4*(nov&1)-2) * return_p;
}


#endif //SUPERMAN_REBORN_SPARSEPERMANSHAREDCOALESCINGSHARED_CUH
