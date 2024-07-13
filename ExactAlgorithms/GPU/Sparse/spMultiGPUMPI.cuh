//
// Created by deniz on 5/25/24.
//

#ifndef SUPERMAN_SPMULTIGPUMPI_CUH
#define SUPERMAN_SPMULTIGPUMPI_CUH

#include "Permanent.h"
#include "SparseMatrix.h"
#include "SparseKernelDefinitions.cuh"
#include "mpi_wrapper.h"


template <typename C, typename S, SparseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
class spMultiGPUMPI: public Permanent<C, S>
{
public:
    spMultiGPUMPI(Algorithm kernelName, Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(kernelName, matrix, settings) {}

    virtual double permanentFunction() final;
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
    C product = 1;
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

        printf("RANK: %d, %s (%d): Number of streaming multiprocessors: %d\n", machineID, prop.name, gpuNo, noSM);
        printf("RANK: %d, %s (%d): Shared memory used per block: %d\n", machineID, prop.name, gpuNo, sharedMemoryPerBlock);
        printf("RANK: %d, %s (%d): %f%% of the entire shared memory dedicated per block is used\n", machineID, prop.name, gpuNo, (double(sharedMemoryPerBlock) / double(maxSharedMemoryPerBlock)) * 100);
        printf("RANK: %d, %s (%d): Maximum number of registers that could be used per block: %d\n", machineID, prop.name, gpuNo, maxRegsPerBlock);
        printf("RANK: %d, %s (%d): Grid Dimension: %d\n", machineID, prop.name, gpuNo, gridDim);
        printf("RANK: %d, %s (%d): Block Dimension: %d\n", machineID, prop.name, gpuNo, blockDim);
        printf("RANK: %d, %s (%d): Total number of threads: %d\n", machineID, prop.name, gpuNo, totalThreadCount);
        printf("RANK: %d, %s (%d): Maximum number of blocks running concurrently on each SM: %d\n", machineID, prop.name, gpuNo, maxBlocks);
        printf("RANK: %d, %s (%d): Maximum number of blocks running concurrently throughout the GPU: %d\n", machineID, prop.name, gpuNo, maxBlocks * noSM);

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
        gpuErrchk( cudaMemcpy(d_cptrs, cptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice) )
        gpuErrchk( cudaMemcpy(d_rows, rows, nnz * sizeof(int), cudaMemcpyHostToDevice) )
        gpuErrchk( cudaMemcpy(d_cvals, cvals, nnz * sizeof(S), cudaMemcpyHostToDevice) )

        long long start = 1;
        long long end = (1LL << (nov - 1));

        long long chunkSize = (end - start) / totalComputeCapability + 1;
        int myComputeCapability = totalComputeCapabilities[myID];
        int soFar = 0;
        for (int i = 0; i < myID; ++i)
        {
            soFar += totalComputeCapabilities[i];
        }

        long long myStart = start + soFar * chunkSize;
        long long myEnd = std::min(start + (soFar + myComputeCapability) * chunkSize, end);

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

    C gpuReducedProductSum = 0;
    for (int i = 0; i < gpuNum; ++i)
    {
        gpuReducedProductSum += productSums[i];
    }

    mpiBarrier(getMPI_COMM_WORLD());
    double mpiReducedProductSum = 0;
    mpiReduce(&gpuReducedProductSum, &mpiReducedProductSum, 1, getMPI_DOUBLE(), getMPI_SUM(), 0, getMPI_COMM_WORLD());

    return (4 * (nov & 1) - 2) * mpiReducedProductSum;
}


#endif //SUPERMAN_SPMULTIGPUMPI_CUH
