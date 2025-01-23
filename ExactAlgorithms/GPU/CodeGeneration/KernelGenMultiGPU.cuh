//
// Created by deniz on 9/16/24.
//

#ifndef SUPERMAN_KERNELGENMULTIGPU_CUH
#define SUPERMAN_KERNELGENMULTIGPU_CUH


#include "Permanent.h"
#include "Matrix.h"
#include "generatedKernels.cuh"
#include "KernelGenerator.cuh"
#include <fstream>


template <typename C, typename S, DenseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
class KernelGenMultiGPU: public Permanent<C, S>
{
public:
    KernelGenMultiGPU(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;

public:
    __float128 productSum;
};


template <typename C, typename S, DenseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
double KernelGenMultiGPU<C, S, Algo, Shared>::permanentFunction()
{
    int nov = this->m_Matrix->nov;
    S* mat = this->m_Matrix->mat;

    C x[nov];
    __float128 product = 1;
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

    int k = 0;
    generateKernels(k, mat, x, nov, this->m_Settings);

    int gpuNum = this->m_Settings.gpuNum;
    unsigned partition = this->m_Settings.partition;

    long long start = 1;
    long long end = (1LL << (nov - 1));
    long long CHUNK_SIZE = (end - start + (gpuNum * partition) - 1) / (gpuNum * partition);
    long long currentChunkStart = start;

    omp_lock_t lock;
    omp_init_lock(&lock);

#pragma omp parallel num_threads(gpuNum)
    {
        int gpuNo = omp_get_thread_num();

        cudaDeviceProp prop;
        cudaGetDeviceProperties(&prop, gpuNo);

        gpuErrchk( cudaSetDevice(gpuNo) )

        int gridDim;
        int blockDim;
        gpuErrchk( cudaOccupancyMaxPotentialBlockSize(
                &gridDim,
                &blockDim,
                Algo
        ) )

        int noSM = prop.multiProcessorCount;
        int totalRegs = prop.regsPerMultiprocessor * noSM;
        int totalThreadCount = gridDim * blockDim;
        int regsUsed = ((k * (sizeof(C) / 4)) + 20) * totalThreadCount;
        if (regsUsed > totalRegs) regsUsed = totalRegs;

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
            static std::vector<bool> printed(gpuNum, false);
            if (!printed[gpuNo])
            {
                printf("%s (%d): Number of streaming multiprocessors: %d\n", prop.name, gpuNo, noSM);
                printf("%s (%d): Total number of registers available across the GPU: %d\n", prop.name, gpuNo, totalRegs);
                printf("%s (%d): Total number of registers used across the GPU: %d\n", prop.name, gpuNo, std::min(regsUsed, totalRegs));
                printf("%s (%d): %f%% of the entire register file is in use\n", prop.name, gpuNo, std::min((double(regsUsed) / double(totalRegs)) * 100, double(100)));
                printf("%s (%d): Grid Dimension: %d\n", prop.name, gpuNo, gridDim);
                printf("%s (%d): Block Dimension: %d\n", prop.name, gpuNo, blockDim);
                printf("%s (%d): Total number of threads: %d\n", prop.name, gpuNo, totalThreadCount);
                printf("%s (%d): Maximum number of blocks running concurrently on each SM: %d\n", prop.name, gpuNo, maxBlocks);
                printf("%s (%d): Maximum number of blocks running concurrently throughout the GPU: %d\n", prop.name, gpuNo, maxBlocks * noSM);
                printed[gpuNo] = true;
            }
        }
#endif

        C* d_products;
        C* d_x;

        size_t xSize = (nov - k);
        gpuErrchk( cudaMalloc(&d_x, totalThreadCount * sizeof(C) * xSize) )

        gpuErrchk( cudaMalloc(&d_products, totalThreadCount * sizeof(C)) )
        gpuErrchk( cudaMemset(d_products, 0, totalThreadCount * sizeof(C)) )

        C myProductSum = 0;

        while (true)
        {
            long long myStart;
            long long myEnd;
            omp_set_lock(&lock);
            if (currentChunkStart >= end)
            {
                omp_unset_lock(&lock);
                break;
            }
            myStart = currentChunkStart;
            currentChunkStart += CHUNK_SIZE;
            myEnd = currentChunkStart;
            omp_unset_lock(&lock);

            if (myEnd > end) myEnd = end;

            long long left = (myEnd - myStart);

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

                Algo<<<gridDim, blockDim>>>(
                        nullptr,
                        d_x,
                        d_products,
                        nov,
                        myStart,
                        myEnd,
                        chunkSize);

                long long thisIteration = totalThreadCount * chunkSize;
                left -= thisIteration;
                myStart += thisIteration;
            }

            Algo<<<gridDim, blockDim>>>(
                    nullptr,
                    d_x,
                    d_products,
                    nov,
                    myStart,
                    myEnd,
                    -1);
        }

        gpuErrchk( cudaDeviceSynchronize() )

        C* h_products = new C[totalThreadCount];
        gpuErrchk( cudaMemcpy( h_products, d_products, totalThreadCount * sizeof(C), cudaMemcpyDeviceToHost) )

        for (int i = 0; i < totalThreadCount; ++i)
        {
            myProductSum += h_products[i];
        }

        gpuErrchk( cudaFree(d_products) )
        gpuErrchk( cudaFree(d_x) )

        delete[] h_products;

        #pragma omp atomic
            productSum += myProductSum;
    }
    omp_destroy_lock(&lock);

    return 0;
}


#endif //SUPERMAN_KERNELGENMULTIGPU_CUH
