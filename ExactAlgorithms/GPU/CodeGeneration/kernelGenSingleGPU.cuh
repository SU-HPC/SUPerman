//
// Created by delbek on 7/30/24.
//

#ifndef SUPERMAN_KERNELGENSINGLEGPU_CUH
#define SUPERMAN_KERNELGENSINGLEGPU_CUH


#include "Permanent.h"
#include "Matrix.h"
#include "deniz_kernel.cuh"
#include "KernelGenerator.cuh"
#include <fstream>


template <typename C, typename S, DenseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
class kernelGenSingleGPU: public Permanent<C, S>
{
public:
    kernelGenSingleGPU(Algorithm kernelName, Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(kernelName, matrix, settings) {}

    virtual double permanentFunction() final;

public:
    C productSum;
};


template <typename C, typename S, DenseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
double kernelGenSingleGPU<C, S, Algo, Shared>::permanentFunction()
{
    cudaDeviceProp prop;
    cudaGetDeviceProperties(&prop, this->m_Settings.deviceID);

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

    int k = 0;

    std::ofstream file("deniz_kernel.cuh");
    KernelGenerator<C, S> kernelGenerator(matTransposed, nov, x, this->m_Settings.deviceID);
    std::string kernel = kernelGenerator.generateUTOrderedKernelCode(k);
    file << kernel;

    int gridDim;
    int blockDim;
    gpuErrchk( cudaOccupancyMaxPotentialBlockSize(
            &gridDim,
            &blockDim,
            Algo
            ) )

    int noSM = prop.multiProcessorCount;
    int maxRegsPerBlock = prop.regsPerBlock;
    int maxRegsPerSM = prop.regsPerMultiprocessor;
    int totalThreadCount = gridDim * blockDim;

    int maxBlocks;
    gpuErrchk( cudaOccupancyMaxActiveBlocksPerMultiprocessor(
            &maxBlocks,
            Algo,
            blockDim,
            0
    ) )

#ifndef SILENT
#pragma omp critical
    {
        static bool printed = false;
        if (!printed)
        {
            printf("Permanent is being computed on device id: %d, %s\n", this->m_Settings.deviceID, prop.name);
            printf("Number of streaming multiprocessors: %d\n", noSM);
            printf("Maximum number of registers that could be used per block: %d\n", maxRegsPerBlock);
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

    C* d_products;
    C* d_x;

    size_t xSize = (nov - k);
    gpuErrchk( cudaMalloc(&d_x, totalThreadCount * sizeof(C) * xSize) )

    gpuErrchk( cudaMalloc(&d_products, totalThreadCount * sizeof(C)) )
    gpuErrchk( cudaMemset(d_products, 0, totalThreadCount * sizeof(C)) )

    long long start = 1;
    long long end = (1LL << (nov - 1));
    long long total = (end - start);

    long long left = total;
    double passed = 0;

    while (passed < 0.99 && totalThreadCount < left)
    {
        long long chunkSize = 1;
        while ((chunkSize * totalThreadCount) < left)
        {
            chunkSize *= 2;
        }
        chunkSize /= 2;

        Algo<<<gridDim, blockDim>>>(
                nullptr,
                d_x,
                d_products,
                nov,
                start,
                end,
                chunkSize);

        long long thisIteration = totalThreadCount * chunkSize;
        left -= thisIteration;
        passed = 1 - (double)left / double(total);
        start += thisIteration;
    }

    Algo<<<gridDim, blockDim>>>(
            nullptr,
            d_x,
            d_products,
            nov,
            start,
            end,
            -1);

    gpuErrchk( cudaDeviceSynchronize() )

    C* h_products = new C[totalThreadCount];
    gpuErrchk( cudaMemcpy( h_products, d_products, totalThreadCount * sizeof(C), cudaMemcpyDeviceToHost) )

    for (int i = 0; i < totalThreadCount; ++i)
    {
        productSum += h_products[i];
    }

    gpuErrchk( cudaFree(d_products) )
    gpuErrchk( cudaFree(d_x) )

    delete[] h_products;
    delete[] matTransposed;

    return 0;
}


#endif //SUPERMAN_KERNELGENSINGLEGPU_CUH
