//
// Created by deniz on 4/22/24.
//

#ifndef SUPERMAN_REBORN_PERMANSHAREDCOALESCINGSHAREDCGRAY_CUH
#define SUPERMAN_REBORN_PERMANSHAREDCOALESCINGSHAREDCGRAY_CUH

#include "Permanent.h"


template <class C, class S>
class PermanSharedCoalescingSharedCGray: public Permanent<C, S>
{
public:
    PermanSharedCoalescingSharedCGray(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};


template<class C, class S>
double PermanSharedCoalescingSharedCGray<C, S>::permanentFunction()
{

    //Pack parameters//
    S* mat = this->m_Matrix->mat;
    int nov = this->m_Matrix->noRow;
    //Pack parameters//

    //Pack flags//
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

    //create the x vector and initiate the permanent
    for (int j = 0; j < nov; j++) {
        rs = .0f;
        for (int k = 0; k < nov; k++) {
            rs += mat[(j * nov) + k];  // sum of row j
            //printf("j: %d -- k: %d \n", j, k);
        }
        x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
        p *= x[j];   // product of the elements in vector 'x'
    }

    //For variable smem
    glob_nov = nov;
    glob_sizeof_c = sizeof(C);
    glob_sizeof_s = sizeof(S);
    //For variable smem

    cudaOccupancyMaxPotentialBlockSizeVariableSMem(&grid_dim,
                                                   &block_dim,
                                                   &Definitions::kernel_xshared_coalescing_mshared_cgray<C,S>,
                                                   xshared_coalescing_mshared_sharedmem,
                                                   0);

    size_t size = (nov*block_dim*sizeof(C) + nov*nov*sizeof(S));

    printf("==SC== Shared memory per block is set to : %zu \n", size);
    printf("==SC== Grid dim is set to : %d \n", grid_dim);
    printf("==SC== Block dim is set to : %d \n", block_dim);


    S* mat_t = new S[nov * nov];
    for (int i = 0; i < nov; i++) {
        for (int j = 0; j < nov; j++) {
            //printf("transpose i: %d -- j: %d \n", i, j);
            mat_t[(i * nov) + j] = mat[(j * nov) + i];
        }
    }

    S *d_mat_t;
    C *d_x, *d_p;
    C *h_p = new C[grid_dim * block_dim];

    cudaMalloc( &d_x, (nov) * sizeof(C));
    cudaMalloc( &d_p, (grid_dim * block_dim) * sizeof(C));
    cudaMalloc( &d_mat_t, (nov * nov) * sizeof(S));

    cudaMemcpy( d_x, x, (nov) * sizeof(C), cudaMemcpyHostToDevice);
    cudaMemcpy( d_mat_t, mat_t, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice);


    /////

    long long start = 1;
    long long end = (1LL << (nov-1));
    long long remaining = (1LL << (nov-1));
    double covered = 0.0;


    while(covered < 0.999){

        long long chunk_size = gcs(remaining, grid_dim, block_dim);
        printf("--cg-- chunk size: %lld \n",  chunk_size);
        Definitions::kernel_xshared_coalescing_mshared_cgray<C,S><<<grid_dim , block_dim , size>>>(d_mat_t, d_x, d_p, nov, start, end, chunk_size);
        cudaDeviceSynchronize();
        cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

        for (int i = 0; i < grid_dim * block_dim; i++) {
            p += (double)h_p[i];
        }
        remaining -=  grid_dim * block_dim * chunk_size;
        covered = 1 - ((double)remaining / end);
        start += (grid_dim * block_dim * chunk_size);
    }

    Definitions::kernel_xshared_coalescing_mshared<C,S><<<grid_dim , block_dim , size>>>(d_mat_t, d_x, d_p, nov, start, end);
    cudaDeviceSynchronize();
    cudaMemcpy( h_p, d_p, grid_dim * block_dim * sizeof(C), cudaMemcpyDeviceToHost);

    for (int i = 0; i < grid_dim * block_dim; i++) {
        p += (double)h_p[i];
    }
    /////

    cudaFree(d_mat_t);
    cudaFree(d_x);
    cudaFree(d_p);

    //for(int i = 0; i < grid_dim * block_dim; i++){
    //printf("h_p[%d]: %e \n", i, h_p[i]);
    //}

    double return_p = p;

    //delete [] mat_t;
    free(mat_t);
    delete[] h_p;

    return (4*(nov&1)-2) * return_p;
}


#endif //SUPERMAN_REBORN_PERMANSHAREDCOALESCINGSHAREDCGRAY_CUH
