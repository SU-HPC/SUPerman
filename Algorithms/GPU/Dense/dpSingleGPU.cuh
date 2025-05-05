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
};


template <typename C, typename S, DenseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
double dpSingleGPU<C, S, Algo, Shared>::permanentFunction()
{
    cudaDeviceProp prop;
    cudaGetDeviceProperties(&prop, this->m_Settings.deviceID);

    gpuErrchk( cudaSetDevice(this->m_Settings.deviceID) )

    int nov = this->m_Matrix->nov;
#ifdef MAT_SPECIFIC_COMPILATION
    if (NOV != nov)
    {
        throw std::runtime_error("It seems that you have made a matrix specific compilation but the size of the matrix does not match with that of your indicated size during compilation. Perhaps decomposition reduced the size on the runtime?\n");
    }
#endif
    S* mat = this->m_Matrix->mat;
    S* matTransposed = new S[nov * nov];

    C x[nov];
    double product = 1;
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
    this->productSum = product;

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
            printf("Matrix Size: %d bytes\n", (nov * nov) * sizeof(S));
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
    S* d_mat;

    gpuErrchk( cudaMalloc(&d_x, nov * sizeof(C)) )
    gpuErrchk( cudaMalloc(&d_products, totalThreadCount * sizeof(C)) )
    gpuErrchk( cudaMemset(d_products, 0, totalThreadCount * sizeof(C)) )
    gpuErrchk( cudaMalloc(&d_mat, (nov * nov) * sizeof(S)) )

    gpuErrchk( cudaMemcpy(d_x, x, nov * sizeof(C), cudaMemcpyHostToDevice) )
    gpuErrchk( cudaMemcpy(d_mat, matTransposed, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice) )

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
                d_mat,
                d_x,
                d_products,
                nov,
                start,
                end,
                chunkSize);

        gpuErrchk( cudaDeviceSynchronize() )

        long long thisIteration = totalThreadCount * chunkSize;
        left -= thisIteration;
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
        this->productSum += h_products[i];
    }

    gpuErrchk( cudaFree(d_x) )
    gpuErrchk( cudaFree(d_products) )
    gpuErrchk( cudaFree(d_mat) )

    delete[] h_products;
    delete[] matTransposed;

    return 0;
}


#endif //SUPERMAN_DPSINGLEGPU_CUH
