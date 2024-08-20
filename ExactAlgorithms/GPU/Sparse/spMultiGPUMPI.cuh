//
// Created by deniz on 5/25/24.
//

#ifndef SUPERMAN_SPMULTIGPUMPI_CUH
#define SUPERMAN_SPMULTIGPUMPI_CUH

#include "Permanent.h"
#include "SparseMatrix.h"
#include "SparseKernelDefinitions.cuh"
#include "mpi_wrapper.h"
#include <cmath>


template <typename C, typename S, SparseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
class spMultiGPUMPI: public Permanent<C, S>
{
public:
    spMultiGPUMPI(Algorithm kernelName, Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(kernelName, matrix, settings) {}

    virtual double permanentFunction() final;

public:
    __float128 productSum;
};


template <typename C, typename S, SparseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
double spMultiGPUMPI<C, S, Algo, Shared>::permanentFunction()
{
    SparseMatrix<S>* ccs = dynamic_cast<SparseMatrix<S>*>(this->m_Matrix);

    int nov = ccs->nov;
    int nnz = ccs->nnz;
    int* cptrs = ccs->cptrs;
    int* rows = ccs->rows;
    S* cvals = ccs->cvals;
    int* rptrs = ccs->rptrs;
    int* cols = ccs->cols;
    S* rvals = ccs->rvals;
    S* mat = ccs->mat;

    C x[nov];
    C rowSum;
    __float128 product = 1;
    for (int i = 0; i < nov; ++i)
    {
        rowSum = 0;
        for (int j = 0; j < nov; ++j)
        {
            rowSum += mat[(i * nov) + j];
        }
        x[i] = mat[(i * nov) + (nov - 1)] - (rowSum / 2);
        product *= x[i];
    }

    int machineID = this->m_Settings.machineID; // rank
    int numberOfProcessors = this->m_Settings.processorNum;
    int gpuNum = this->m_Settings.gpuNum;
    unsigned partition = this->m_Settings.partition;

    int* computeCapabilities = new int[gpuNum];
    memset(computeCapabilities, 0, sizeof(int) * gpuNum);
    for (int i = 0; i < gpuNum; ++i)
    {
        cudaDeviceProp deviceProp;
        cudaGetDeviceProperties(&deviceProp, i);
        computeCapabilities[i] = std::pow(deviceProp.major, 2);
    }

    int totalComputeDevices;
    mpiAllReduce(&gpuNum, &totalComputeDevices, 1, getMPI_INT(), getMPI_SUM(), getMPI_COMM_WORLD());

    int* totalComputeCapabilities = new int[totalComputeDevices];
    memset(totalComputeCapabilities, 0, sizeof(int) * totalComputeDevices);

    int* recvcounts = new int[numberOfProcessors];
    int* displs = new int[numberOfProcessors];

    mpiAllGather(&gpuNum, 1, getMPI_INT(), recvcounts, 1, getMPI_INT(), getMPI_COMM_WORLD());

    displs[0] = 0;
    for (int i = 1; i < numberOfProcessors; ++i)
    {
        displs[i] = displs[i - 1] + recvcounts[i - 1];
    }

    mpiAllGatherV(computeCapabilities, gpuNum, getMPI_INT(), totalComputeCapabilities, recvcounts, displs, getMPI_INT(), getMPI_COMM_WORLD());

    long long start = 1;
    long long end = (1LL << (nov - 1));

    long long totalRange = end - start;
    long long nodeStart, nodeEnd;

    mpiBarrier(getMPI_COMM_WORLD());

    long long cumulativeStart = 0;
    for (int i = 0; i < numberOfProcessors; ++i)
    {
        long long nodeRange = (totalRange * recvcounts[i]) / totalComputeDevices;
        if (i == machineID)
        {
            nodeStart = start + cumulativeStart;
            nodeEnd = nodeStart + nodeRange;
            break;
        }
        cumulativeStart += nodeRange;
    }

    if (machineID == numberOfProcessors - 1)
    {
        nodeEnd = end;
    }

    delete[] computeCapabilities;
    delete[] totalComputeCapabilities;
    delete[] recvcounts;
    delete[] displs;

    long long CHUNK_SIZE = (nodeEnd - nodeStart + (gpuNum * partition) - 1) / (gpuNum * partition);
    long long currentChunkStart = nodeStart;

    C gpuReducedProductSum = 0;

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

#ifndef SILENT
        #pragma omp critical
        {
            static std::vector<bool> printed(gpuNum, false);
            if (!printed[gpuNo])
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
                printed[gpuNo] = true;
            }
        }
#endif

        int* d_cptrs;
        int* d_rows;
        S *d_cvals;
        C *d_x;
        C* d_products;

        gpuErrchk( cudaMalloc(&d_x, nov * sizeof(C)) )
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
        C myProductSum = 0;

        bool finish = false;
        while (true)
        {
            long long myStart;
            long long myEnd;
            #pragma omp critical
            {
                if (currentChunkStart >= nodeEnd)
                {
                    finish = true;
                }
                myStart = currentChunkStart;
                currentChunkStart += CHUNK_SIZE;
                myEnd = currentChunkStart;
            }
            if (finish) break;

            if (myEnd > nodeEnd) myEnd = nodeEnd;
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
                        d_cptrs,
                        d_rows,
                        d_cvals,
                        d_x,
                        d_products,
                        nov,
                        nnz,
                        myStart,
                        myEnd,
                        chunkSize);

                long long thisIteration = totalThreadCount * chunkSize;
                left -= thisIteration;
                passed = 1 - (double)left / double(CHUNK_SIZE);
                myStart += thisIteration;
            }

            Algo<<<gridDim, blockDim, sharedMemoryPerBlock>>>(
                    d_cptrs,
                    d_rows,
                    d_cvals,
                    d_x,
                    d_products,
                    nov,
                    nnz,
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
        gpuErrchk( cudaFree(d_cptrs) )
        gpuErrchk( cudaFree(d_rows) )
        gpuErrchk( cudaFree(d_cvals) )

        delete[] h_products;

        #pragma omp atomic
            gpuReducedProductSum += myProductSum;
    };

    mpiBarrier(getMPI_COMM_WORLD());
    productSum = 0;
    mpiReduce(&gpuReducedProductSum, &productSum, 1, getMPI_DOUBLE(), getMPI_SUM(), 0, getMPI_COMM_WORLD());
    productSum += product;

    return 0;
}


#endif //SUPERMAN_SPMULTIGPUMPI_CUH
