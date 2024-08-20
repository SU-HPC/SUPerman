//
// Created by delbek on 6/11/24.
//

#ifndef SUPERMAN_DPMULTIGPU_CUH
#define SUPERMAN_DPMULTIGPU_CUH

#include "Permanent.h"
#include "Matrix.h"
#include "DenseKernelDefinitions.cuh"


template <typename C, typename S, DenseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
class dpMultiGPU: public Permanent<C, S>
{
public:
    dpMultiGPU(Algorithm kernelName, Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(kernelName, matrix, settings) {}

    virtual double permanentFunction() final;

public:
    __float128 productSum;
};


template <typename C, typename S, DenseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
double dpMultiGPU<C, S, Algo, Shared>::permanentFunction()
{
    int nov = this->m_Matrix->nov;
#ifdef MAT_SPECIFIC_COMPILATION
    if (NOV != nov)
    {
        throw std::runtime_error("It seems that you have made a matrix specific compilation but the size of the matrix does not match with that of your indicated size during compilation. Perhaps decomposition reduced the size on the runtime? Read README.md for details.");
    }
#endif
    S* mat = this->m_Matrix->mat;
    S* matTransposed = new S[nov * nov];

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

    for (int i = 0; i < nov; ++i)
    {
        for (int j = 0; j < nov; ++j)
        {
            matTransposed[j * nov + i] = mat[i * nov + j];
        }
    }

    int gpuNum = this->m_Settings.gpuNum;
    unsigned partition = this->m_Settings.partition;

    long long start = 1;
    long long end = (1LL << (nov - 1));
    long long CHUNK_SIZE = (end - start + (gpuNum * partition) - 1) / (gpuNum * partition);
    long long currentChunkStart = start;

#pragma omp parallel num_threads(gpuNum)
    {
        int gpuNo = omp_get_thread_num();

        cudaDeviceProp prop;
        cudaGetDeviceProperties(&prop, gpuNo);

        gpuErrchk( cudaSetDevice(gpuNo) )

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

#ifndef SILENT
        #pragma omp critical
        {
            static std::vector<bool> printed(gpuNum, false);
            if (!printed[gpuNo])
            {
                printf("%s (%d): Number of streaming multiprocessors: %d\n", prop.name, gpuNo, noSM);
                printf("%s (%d): Shared memory used per block: %d\n", prop.name, gpuNo, sharedMemoryPerBlock);
                printf("%s (%d): %f%% of the entire shared memory dedicated per block is used\n", prop.name, gpuNo, (double(sharedMemoryPerBlock) / double(maxSharedMemoryPerBlock)) * 100);
                printf("%s (%d): Maximum number of registers that could be used per block: %d\n", prop.name, gpuNo, maxRegsPerBlock);
                printf("%s (%d): Grid Dimension: %d\n", prop.name, gpuNo, gridDim);
                printf("%s (%d): Block Dimension: %d\n", prop.name, gpuNo, blockDim);
                printf("%s (%d): Total number of threads: %d\n", prop.name, gpuNo, totalThreadCount);
                printf("%s (%d): Maximum number of blocks running concurrently on each SM: %d\n", prop.name, gpuNo, maxBlocks);
                printf("%s (%d): Maximum number of blocks running concurrently throughout the GPU: %d\n", prop.name, gpuNo, maxBlocks * noSM);
                printed[gpuNo] = true;
            }
        }
#endif

        C* d_x;
        C* d_products;
        S* d_mat;

        gpuErrchk( cudaMalloc(&d_x, nov * sizeof(C)) )
        gpuErrchk( cudaMalloc(&d_products, totalThreadCount * sizeof(C)) )
        gpuErrchk( cudaMemset(d_products, 0, totalThreadCount * sizeof(C)) )
        gpuErrchk( cudaMalloc(&d_mat, (nov * nov) * sizeof(S)) )

        gpuErrchk( cudaMemcpy(d_x, x, nov * sizeof(C), cudaMemcpyHostToDevice) )
        gpuErrchk( cudaMemcpy(d_mat, matTransposed, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice) )

        C* h_products = new C[totalThreadCount];
        C myProductSum = 0;

        bool finish = false;
        while (true)
        {
            long long myStart;
            long long myEnd;
            #pragma omp critical
            {
                if (currentChunkStart >= end)
                {
                    finish = true;
                }
                myStart = currentChunkStart;
                currentChunkStart += CHUNK_SIZE;
                myEnd = currentChunkStart;
            }
            if (finish) break;

            if (myEnd > end) myEnd = end;
            long long left = (myEnd - myStart);
            double passed = 0;

            while (passed < 0.99 && totalThreadCount < left)
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
                        myStart,
                        myEnd,
                        chunkSize);

                long long thisIteration = totalThreadCount * chunkSize;
                left -= thisIteration;
                passed = 1 - (double)left / double(CHUNK_SIZE);
                myStart += thisIteration;
            }

            Algo<<<gridDim, blockDim, sharedMemoryPerBlock>>>(
                    d_mat,
                    d_x,
                    d_products,
                    nov,
                    myStart,
                    myEnd,
                    -1);

            gpuErrchk( cudaDeviceSynchronize() )
            gpuErrchk( cudaMemcpy( h_products, d_products, totalThreadCount * sizeof(C), cudaMemcpyDeviceToHost) )

            for (int i = 0; i < totalThreadCount; ++i)
            {
                myProductSum += h_products[i];
            }
        }

        gpuErrchk( cudaFree(d_x) )
        gpuErrchk( cudaFree(d_products) )
        gpuErrchk( cudaFree(d_mat) )

        delete[] h_products;

        #pragma omp atomic
            productSum += myProductSum;
    }

    delete[] matTransposed;

    return 0;
}


#endif //SUPERMAN_DPMULTIGPU_CUH
