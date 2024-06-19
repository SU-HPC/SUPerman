//
// Created by delbek on 6/11/24.
//

#ifndef SUPERMAN_DPSINGLEGPU_CUH
#define SUPERMAN_DPSINGLEGPU_CUH

#include "Permanent.h"
#include "DenseKernelDefinitions.cuh"
#include "Matrix.h"


template <typename C, typename S, DenseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
class dpSingleGPU: public Permanent<C, S>
{
public:
    dpSingleGPU(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;

public:
    C productSum;
};


template <typename C, typename S, DenseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
double dpSingleGPU<C, S, Algo, Shared>::permanentFunction()
{
    cudaDeviceProp prop;
    cudaGetDeviceProperties(&prop, this->m_Settings.deviceID);

#ifdef LOUD
    printf("Permanent is being computed on device id: %d, %s\n", this->m_Settings.deviceID, prop.name);
#endif

    gpuErrchk( cudaSetDevice(this->m_Settings.deviceID) )

    int nov = this->m_Matrix->nov;
    S* mat = this->m_Matrix->mat;
    S* matTransposed = new S[nov * nov];

    C x[nov];
    C product = 1;
    for (int i = 0; i < nov; ++i)
    {
        C rowSum = 0;
        for (int j = 0; j < nov; ++j)
        {
            rowSum += mat[i * nov + j];
        }
        x[i] = mat[(i * nov) + (nov - 1)] - (rowSum / 2);
        product *= x[i];
    }
    productSum = product;

    for (int i = 0; i < nov; ++i)
    {
        for (int j = 0; j < nov; ++j)
        {
            matTransposed[j * nov + i] = mat[i * nov + j];
        }
    }

    int gridDim;
    int blockDim;
    V = nov;
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

#ifdef LOUD
    printf("Matrix Size: %d\n", (nov * nov) * sizeof(S));
    printf("X Vector Size: %d\n", nov * sizeof(C));
    printf("Number of streaming multiprocessors: %d\n", noSM);
    printf("Shared memory used per block: %d\n", sharedMemoryPerBlock);
    printf("%f%% of the entire shared memory dedicated per block is used\n", (double(sharedMemoryPerBlock) / double(maxSharedMemoryPerBlock)) * 100);
    printf("Maximum number of registers that could be used per block: %d\n", maxRegsPerBlock);
    printf("Grid Dimension: %d\n", gridDim);
    printf("Block Dimension: %d\n", blockDim);
    printf("Total number of threads: %d\n", totalThreadCount);
    std::cout << "Maximum number of blocks running concurrently on each SM: " << maxBlocks << std::endl;
    std::cout << "Maximum number of blocks running concurrently throughout the GPU: " << maxBlocks * noSM << std::endl;
#endif

    C* d_x;
    C* d_products;
    S* d_mat;

    gpuErrchk( cudaMalloc(&d_x, nov * sizeof(C)) )
    gpuErrchk( cudaMalloc(&d_products, totalThreadCount * sizeof(C)) )
    gpuErrchk( cudaMalloc(&d_mat, (nov * nov) * sizeof(S)) )

    gpuErrchk( cudaMemcpy(d_x, x, nov * sizeof(C), cudaMemcpyHostToDevice) )
    gpuErrchk( cudaMemcpy(d_mat, matTransposed, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice) )

    C* h_products = new C[totalThreadCount];

    long long start = 1;
    long long end = (1LL << (nov - 1));

    long long left = end;
    double passed = 0;

    while (passed < 0.99 && totalThreadCount <= left)
    {
        long long chunkSize = 1;
        while ((chunkSize * totalThreadCount) < left)
        {
            chunkSize *= 2;
        }
        chunkSize /= 2;

        Algo<<<gridDim, blockDim, sharedMemoryPerBlock>>>(
                d_mat,
                d_x,
                d_products,
                nov,
                start,
                end,
                chunkSize);

        gpuErrchk( cudaDeviceSynchronize() )
        gpuErrchk( cudaMemcpy( h_products, d_products, totalThreadCount * sizeof(C), cudaMemcpyDeviceToHost) )

        for (int i = 0; i < totalThreadCount; ++i)
        {
            productSum += h_products[i];
        }

        long long thisIteration = totalThreadCount * chunkSize;
        left -= thisIteration;
        passed = 1 - (double)left / double(end);
        start += thisIteration;
    }

    Algo<<<gridDim, blockDim, sharedMemoryPerBlock>>>(
            d_mat,
            d_x,
            d_products,
            nov,
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
    gpuErrchk( cudaFree(d_mat) )

    delete[] h_products;
    delete[] matTransposed;

    return 0;
}


#endif //SUPERMAN_DPSINGLEGPU_CUH
