//
// Created by deniz on 4/22/24.
//

#ifndef SUPERMAN_REBORN_SPMULTIGPU_CUH
#define SUPERMAN_REBORN_SPMULTIGPU_CUH

#include "Permanent.h"
#include "SparseMatrix.h"
#include "SparseKernelDefinitions.cuh"


template <typename C, typename S, KernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
class spMultiGPU: public Permanent<C, S>
{
public:
    spMultiGPU(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};


template <typename C, typename S, KernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
double spMultiGPU<C, S, Algo, Shared>::permanentFunction()
{
    SparseMatrix<S>* ccs = dynamic_cast<SparseMatrix<S>*>(this->m_Matrix);

    int nov = ccs->nov;
    int nnz = ccs->nnz;
    S* mat = ccs->mat;

    C x[nov];
    C rowSum;
    C product = 1;
    for (int i = 0; i < nov; ++i)
    {
        rowSum = 0;
        for (int j = 0; j < nov; ++j)
        {
            if (mat[(i * nov) + j] != 0)
            {
                rowSum += mat[(i * nov) + j];
            }
        }
        x[i] = mat[(i * nov) + (nov - 1)] - (rowSum / 2);
        product *= x[i];
    }

    int gpuNum = this->m_Settings.gpuNum;
    C productSums[gpuNum];
    memset(productSums, product, sizeof(C) * gpuNum);

    int totalWeight = 0;
    int weights[gpuNum];
    for (int i = 0; i < gpuNum; ++i)
    {
        cudaDeviceProp deviceProp;
        cudaGetDeviceProperties(&deviceProp, i);
        weights[i] = COMPUTE_CAPABILITY_TO_WEIGHT[deviceProp.major];
        totalWeight += weights[i];
    }

#pragma omp parallel num_threads(gpuNum)
    {
        int gpuNo = omp_get_thread_num();
        C myX[nov];
        memcpy(myX, x, sizeof(C) * nov);

        cudaDeviceProp prop;
        cudaGetDeviceProperties(&prop, gpuNo);

        gpuErrchk( cudaSetDevice(gpuNo) )

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
        int maxRegsPerBlock = prop.regsPerBlock;
        int totalThreadCount = gridDim * blockDim;

        int maxBlocks;
        gpuErrchk( cudaOccupancyMaxActiveBlocksPerMultiprocessor(
                &maxBlocks,
                Algo,
                blockDim,
                sharedMemoryPerBlock
        ) )

        printf("%s (%d): Number of streaming multiprocessors: %d\n", prop.name, gpuNo, noSM);
        printf("%s (%d): Shared memory used per block: %d\n", prop.name, gpuNo, sharedMemoryPerBlock);
        printf("%s (%d): %f%% of the entire shared memory dedicated per block is used\n", prop.name, gpuNo, (double(sharedMemoryPerBlock) / double(maxSharedMemoryPerBlock)) * 100);
        printf("%s (%d): Maximum number of registers that could be used per block: %d\n", prop.name, gpuNo, maxRegsPerBlock);
        printf("%s (%d): Grid Dimension: %d\n", prop.name, gpuNo, gridDim);
        printf("%s (%d): Block Dimension: %d\n", prop.name, gpuNo, blockDim);
        printf("%s (%d): Total number of threads: %d\n", prop.name, gpuNo, totalThreadCount);
        printf("%s (%d): Maximum number of blocks running concurrently on each SM: %d\n", prop.name, gpuNo, maxBlocks);
        printf("%s (%d): Maximum number of blocks running concurrently throughout the GPU: %d\n", prop.name, gpuNo, maxBlocks * noSM);

        int* d_cptrs;
        int* d_rows;
        S *d_cvals;
        C *d_x;
        C* d_products;

        gpuErrchk( cudaMalloc(&d_x, nov * sizeof(C)) )
        gpuErrchk( cudaMalloc(&d_products, totalThreadCount * sizeof(C)) )
        gpuErrchk( cudaMalloc(&d_cptrs, (nov + 1) * sizeof(int)) )
        gpuErrchk( cudaMalloc(&d_rows, nnz * sizeof(int)) )
        gpuErrchk( cudaMalloc(&d_cvals, nnz * sizeof(S)) )

        gpuErrchk( cudaMemcpy(d_x, x, nov * sizeof(C), cudaMemcpyHostToDevice) )
        gpuErrchk( cudaMemcpy(d_cptrs, ccs->cptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice) )
        gpuErrchk( cudaMemcpy(d_rows, ccs->rows, nnz * sizeof(int), cudaMemcpyHostToDevice) )
        gpuErrchk( cudaMemcpy(d_cvals, ccs->cvals, nnz * sizeof(S), cudaMemcpyHostToDevice) )

        long long start = 1;
        long long end = (1LL << (nov - 1));

        long long chunkSize = std::ceil((end - start) / totalWeight);
        int soFar = 0;
        for (int i = 0; i < gpuNo; ++i)
        {
            soFar += weights[i];
        }
        int myWeight = weights[gpuNo];
        long long myStart = start + soFar * chunkSize;
        long long myEnd = std::min(start + (soFar + myWeight) * chunkSize, end);

        Algo<<<gridDim, blockDim, sharedMemoryPerBlock>>>(
                d_cptrs,
                d_rows,
                d_cvals,
                d_x,
                d_products,
                nov,
                nnz,
                myStart,
                myEnd);

        gpuErrchk( cudaPeekAtLastError() )
        gpuErrchk( cudaDeviceSynchronize() )

        C* h_products = new C[totalThreadCount];
        gpuErrchk( cudaMemcpy( h_products, d_products, totalThreadCount * sizeof(C), cudaMemcpyDeviceToHost) )

        gpuErrchk( cudaFree(d_x) )
        gpuErrchk( cudaFree(d_products) )
        gpuErrchk( cudaFree(d_cptrs) )
        gpuErrchk( cudaFree(d_rows) )
        gpuErrchk( cudaFree(d_cvals) )

        for (int i = 0; i < totalThreadCount; ++i)
        {
            productSums[gpuNo] += h_products[i];
        }

        delete[] h_products;
    };

    C productSum = 0;
    for (int i = 0; i < gpuNum; ++i)
    {
        productSum += productSums[i];
    }

    return (4 * (nov & 1) - 2) * productSum;
}


#endif //SUPERMAN_REBORN_SPMULTIGPU_CUH
