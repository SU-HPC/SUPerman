//
// Created by deniz on 5/25/24.
//

#ifndef SUPERMAN_SPSINGLEGPU_CUH
#define SUPERMAN_SPSINGLEGPU_CUH

#include "Permanent.h"
#include "SparseKernelDefinitions.cuh"
#include "SparseMatrix.h"


template <typename C, typename S, SparseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
class spSingleGPU: public Permanent<C, S>
{
public:
    spSingleGPU(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;

public:
    __float128 productSum;
};


template <typename C, typename S, SparseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
double spSingleGPU<C, S, Algo, Shared>::permanentFunction()
{
    SparseMatrix<S>* sp = dynamic_cast<SparseMatrix<S>*>(this->m_Matrix);

    cudaDeviceProp prop;
    cudaGetDeviceProperties(&prop, this->m_Settings.deviceID);

    gpuErrchk( cudaSetDevice(this->m_Settings.deviceID) )

    int nov = sp->nov;
    int nnz = sp->nnz;
    int* cptrs = sp->cptrs;
    int* rows = sp->rows;
    S* cvals = sp->cvals;
    int* rptrs = sp->rptrs;
    int* cols = sp->cols;
    S* rvals = sp->rvals;
    S* mat = sp->mat;

    C x[nov];
    __float128 product = 1;
    for (int i = 0; i < nov; ++i)
    {
        C rowSum = 0;
        for (int ptr = rptrs[i]; ptr < rptrs[i + 1]; ++ptr)
        {
            rowSum += rvals[ptr];
        }
        x[i] = mat[(i * nov) + (nov - 1)] - (rowSum / 2);
        product *= x[i];
    }
    productSum = product;

    int gridDim;
    int blockDim;
    V = nov;
    E = nnz;
    gpuErrchk( cudaOccupancyMaxPotentialBlockSizeVariableSMem(
            &gridDim,
            &blockDim,
            Algo,
            Shared,
            0) )

    int noSM = prop.multiProcessorCount;
    int sharedMemoryPerBlock = Shared(blockDim);
    int maxSharedMemoryPerBlock= prop.sharedMemPerBlock;
    int maxSharedMemoryPerSM = prop.sharedMemPerMultiprocessor;
    int maxRegsPerSM = prop.regsPerMultiprocessor;
    int totalThreadCount = gridDim * blockDim;

    int maxBlocks;
    gpuErrchk( cudaOccupancyMaxActiveBlocksPerMultiprocessor(
            &maxBlocks,
            Algo,
            blockDim,
            sharedMemoryPerBlock
    ) )

#ifndef SILENT
    #pragma omp critical
    {
        static bool printed = false;
        if (!printed)
        {
            printf("Permanent is being computed on device id: %d, %s\n", this->m_Settings.deviceID, prop.name);
            printf("Matrix Size: %d bytes\n", (nov + 1) * sizeof(int) + nnz * (sizeof(int) + sizeof(S)));
            printf("X Vector Size: %d bytes\n", nov * sizeof(C));
            printf("Number of streaming multiprocessors: %d\n", noSM);
            printf("Shared memory used per block: %d bytes\n", sharedMemoryPerBlock);
            printf("Shared memory used per SM: %d bytes\n", sharedMemoryPerBlock * maxBlocks);
            printf("%f%% of the entire shared memory dedicated per block is used\n", (double(sharedMemoryPerBlock) / double(maxSharedMemoryPerBlock)) * 100);
            printf("%f%% of the entire shared memory dedicated per SM is used\n", ((double(sharedMemoryPerBlock) * maxBlocks) / double(maxSharedMemoryPerSM)) * 100);
            printf("Maximum number of registers that could be used per SM: %d\n", maxRegsPerSM);
            printf("Grid Dimension: %d\n", gridDim);
            printf("Block Dimension: %d\n", blockDim);
            printf("Total number of threads: %d\n", totalThreadCount);
            printf("Maximum number of blocks running concurrently on each SM: %d\n", maxBlocks);
            printf("Maximum number of blocks running concurrently throughout the GPU: %d\n", maxBlocks * noSM);
            printed = true;
        }
    }
#endif

    C* d_x;
    C* d_products;
    int* d_cptrs;
    int* d_rows;
    S* d_cvals;

    if (this->m_Settings.algorithm == XGLOBALMSHARED || this->m_Settings.algorithm == XGLOBALMGLOBAL)
    {
        gpuErrchk( cudaMalloc(&d_x, (totalThreadCount + 1) * nov * sizeof(C)) )
    }
    else
    {
        gpuErrchk( cudaMalloc(&d_x, nov * sizeof(C)) )
    }
    gpuErrchk( cudaMalloc(&d_products, totalThreadCount * sizeof(C)) )
    gpuErrchk( cudaMemset(d_products, 0, totalThreadCount * sizeof(C)) )
    gpuErrchk( cudaMalloc(&d_cptrs, (nov + 1) * sizeof(int)) )
    gpuErrchk( cudaMalloc(&d_rows, nnz * sizeof(int)) )
    gpuErrchk( cudaMalloc(&d_cvals, nnz * sizeof(S)) )

    gpuErrchk( cudaMemcpy(d_x, x, nov * sizeof(C), cudaMemcpyHostToDevice) )
    gpuErrchk( cudaMemcpy(d_cptrs, cptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice) )
    gpuErrchk( cudaMemcpy(d_rows, rows, nnz * sizeof(int), cudaMemcpyHostToDevice) )
    gpuErrchk( cudaMemcpy(d_cvals, cvals, nnz * sizeof(S), cudaMemcpyHostToDevice) )

    C* h_products = new C[totalThreadCount];

    long long start = 1;
    long long end = (1LL << (nov - 1));
    long long left = (end - start);

    while (totalThreadCount < left)
    {
        long long chunkSize = 1;
        while ((chunkSize * totalThreadCount) < left)
        {
            chunkSize *= 2;
        }
        chunkSize /= 2;

        if (chunkSize == 1)
        {
            break;
        }

        Algo<<<gridDim, blockDim, sharedMemoryPerBlock>>>(
                d_cptrs,
                d_rows,
                d_cvals,
                d_x,
                d_products,
                nov,
                nnz,
                start,
                end,
                chunkSize);

        long long thisIteration = totalThreadCount * chunkSize;
        left -= thisIteration;
        start += thisIteration;
    }

    Algo<<<gridDim, blockDim, sharedMemoryPerBlock>>>(
            d_cptrs,
            d_rows,
            d_cvals,
            d_x,
            d_products,
            nov,
            nnz,
            start,
            end,
            -1);

    gpuErrchk( cudaDeviceSynchronize() )
    gpuErrchk( cudaMemcpy( h_products, d_products, totalThreadCount * sizeof(C), cudaMemcpyDeviceToHost) )

    for (int i = 0; i < totalThreadCount; ++i)
    {
        productSum += h_products[i];
    }

    gpuErrchk( cudaFree(d_x) )
    gpuErrchk( cudaFree(d_products) )
    gpuErrchk( cudaFree(d_cptrs) )
    gpuErrchk( cudaFree(d_rows) )
    gpuErrchk( cudaFree(d_cvals) )

    delete[] h_products;

    return 0;
}


#endif //SUPERMAN_SPSINGLEGPU_CUH
