//
// Created by delbek on 6/11/24.
//

#ifndef SUPERMAN_DPMULTIGPUMPI_CUH
#define SUPERMAN_DPMULTIGPUMPI_CUH

#include "Permanent.h"
#include "Matrix.h"
#include "DenseKernelDefinitions.cuh"
#include "mpi_wrapper.h"


template <typename C, typename S, DenseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
class dpMultiGPUMPI: public Permanent<C, S>
{
public:
    dpMultiGPUMPI(Algorithm kernelName, Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(kernelName, matrix, settings) {}

    virtual double permanentFunction() final;

public:
    C productSum;
};


template <typename C, typename S, DenseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
double dpMultiGPUMPI<C, S, Algo, Shared>::permanentFunction()
{
    int nov = this->m_Matrix->nov;
#ifdef MAT_SPECIFIC_COMPILATION
    if (NOV != nov)
    {
        throw std::runtime_error("It seems that you have made a matrix specific compilation but the size of the matrix does not match with that of your indicated size during compilation. Perhaps decomposition reduced the size on the runtime? READ README for details.");
    }
#endif
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

    for (int i = 0; i < nov; ++i)
    {
        for (int j = 0; j < nov; ++j)
        {
            matTransposed[j * nov + i] = mat[i * nov + j];
        }
    }

    int machineID = this->m_Settings.machineID; // machine id or rank

    int numberOfProcessors = this->m_Settings.processorNum;
    int gpuNum = this->m_Settings.gpuNum;
    int totalComputeDevices = numberOfProcessors * gpuNum;

    C productSums[gpuNum];
    memset(productSums, product, sizeof(C) * gpuNum);

    int computeCapabilities[gpuNum]; // per machine compute capabilities
    memset(computeCapabilities, 0, sizeof(int) * gpuNum);
    for (int i = 0; i < gpuNum; ++i)
    {
        cudaDeviceProp deviceProp;
        cudaGetDeviceProperties(&deviceProp, i);
        computeCapabilities[i] = deviceProp.major;
    }

    int totalComputeCapabilities[totalComputeDevices]; // entire distributed environment compute capabilities
    memset(totalComputeCapabilities, 0, sizeof(int) * totalComputeDevices);
    mpiAllgather(computeCapabilities, gpuNum, getMPI_INT(),
                 totalComputeCapabilities, gpuNum, getMPI_INT(),
                 getMPI_COMM_WORLD());

    int totalComputeCapability = 0;
    for (int i = 0; i < totalComputeDevices; ++i)
    {
        totalComputeCapability += totalComputeCapabilities[i];
    }

    mpiBarrier(getMPI_COMM_WORLD());

#pragma omp parallel num_threads(gpuNum)
    {
        int gpuNo = omp_get_thread_num();
        int myID = gpuNum * machineID + gpuNo;

        C myX[nov];
        memcpy(myX, x, sizeof(C) * nov);

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
        static bool printed = false;
        if (!printed)
        {
            printf("RANK: %d, %s (%d): Number of streaming multiprocessors: %d\n", machineID, prop.name, gpuNo, noSM);
            printf("RANK: %d, %s (%d): Shared memory used per block: %d\n", machineID, prop.name, gpuNo, sharedMemoryPerBlock);
            printf("RANK: %d, %s (%d): %f%% of the entire shared memory dedicated per block is used\n", machineID, prop.name, gpuNo, (double(sharedMemoryPerBlock) / double(maxSharedMemoryPerBlock)) * 100);
            printf("RANK: %d, %s (%d): Maximum number of registers that could be used per block: %d\n", machineID, prop.name, gpuNo, maxRegsPerBlock);
            printf("RANK: %d, %s (%d): Grid Dimension: %d\n", machineID, prop.name, gpuNo, gridDim);
            printf("RANK: %d, %s (%d): Block Dimension: %d\n", machineID, prop.name, gpuNo, blockDim);
            printf("RANK: %d, %s (%d): Total number of threads: %d\n", machineID, prop.name, gpuNo, totalThreadCount);
            printf("RANK: %d, %s (%d): Maximum number of blocks running concurrently on each SM: %d\n", machineID, prop.name, gpuNo, maxBlocks);
            printf("RANK: %d, %s (%d): Maximum number of blocks running concurrently throughout the GPU: %d\n", machineID, prop.name, gpuNo, maxBlocks * noSM);
            printed = true;
        }
#endif

        C *d_x;
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

        long long CHUNK_SIZE = (end - start) / totalComputeCapability + 1;
        int myComputeCapability = totalComputeCapabilities[myID];
        int soFar = 0;
        for (int i = 0; i < myID; ++i)
        {
            soFar += totalComputeCapabilities[i];
        }

        long long myStart = start + soFar * CHUNK_SIZE;
        long long myEnd = std::min(start + (soFar + myComputeCapability) * CHUNK_SIZE, end);

        long long left = (myEnd - myStart);
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
                    myStart,
                    myEnd,
                    chunkSize);

            gpuErrchk( cudaDeviceSynchronize() )
            gpuErrchk( cudaMemcpy( h_products, d_products, totalThreadCount * sizeof(C), cudaMemcpyDeviceToHost) )

            for (int i = 0; i < totalThreadCount; ++i)
            {
                productSums[gpuNo] += h_products[i];
            }

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
            productSums[gpuNo] += h_products[i];
        }

        gpuErrchk( cudaFree(d_x) )
        gpuErrchk( cudaFree(d_products) )
        gpuErrchk( cudaFree(d_mat) )

        delete[] h_products;
    };

    delete[] matTransposed;

    C gpuReducedProductSum = 0;
    for (int i = 0; i < gpuNum; ++i)
    {
        gpuReducedProductSum += productSums[i];
    }

    mpiBarrier(getMPI_COMM_WORLD());
    productSum = 0;
    mpiReduce(&gpuReducedProductSum, &productSum, 1, getMPI_DOUBLE(), getMPI_SUM(), 0, getMPI_COMM_WORLD());
    productSum += product;

    return 0;
}


#endif //SUPERMAN_DPMULTIGPUMPI_CUH
