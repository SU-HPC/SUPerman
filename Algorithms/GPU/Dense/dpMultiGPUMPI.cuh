/*
 * This file is part of the SUperman repository: https://github.com/SU-HPC/SUPerman
 * Author(s): Deniz Elbek, Fatih Taşyaran, Bora Uçar, and Kamer Kaya.
 *
 * Please see the papers:
 * 
 * @article{Elbek2025SUperman,
 *   title   = {SUperman: Efficient Permanent Computation on GPUs},
 *   author  = {Elbek, Deniz and Taşyaran, Fatih and Uçar, Bora and Kaya, Kamer},
 *   journal = {arXiv preprint arXiv:2502.16577},
 *   year    = {2025},
 *   doi     = {10.48550/arXiv.2502.16577},
 *   url     = {https://arxiv.org/abs/2502.16577}
 * }
 *
 * @article{Elbek2025FullyAutomated,
 *   title   = {Fully-Automated Code Generation for Efficient Computation of Sparse Matrix Permanents on GPUs},
 *   author  = {Elbek, Deniz and Kaya, Kamer},
 *   journal = {arXiv preprint arXiv:2501.15126},
 *   year    = {2025},
 *   doi     = {10.48550/arXiv.2501.15126},
 *   url     = {https://arxiv.org/abs/2501.15126}
 * }
 */

#ifndef SUPERMAN_DPMULTIGPUMPI_CUH
#define SUPERMAN_DPMULTIGPUMPI_CUH

#include "Permanent.h"
#include "Matrix.h"
#include "DenseKernelDefinitions.cuh"
#include "mpi_wrapper.h"
#include <cmath>


template <typename C, typename S, DenseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
class dpMultiGPUMPI: public Permanent<C, S>
{
public:
    dpMultiGPUMPI(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};


template <typename C, typename S, DenseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
double dpMultiGPUMPI<C, S, Algo, Shared>::permanentFunction()
{
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

    for (int i = 0; i < nov; ++i)
    {
        for (int j = 0; j < nov; ++j)
        {
            matTransposed[j * nov + i] = mat[i * nov + j];
        }
    }

    int rank = this->m_Settings.rank;
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
        if (i == rank)
        {
            nodeStart = start + cumulativeStart;
            nodeEnd = nodeStart + nodeRange;
            break;
        }
        cumulativeStart += nodeRange;
    }

    if (rank == numberOfProcessors - 1)
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

    omp_lock_t lock;
    omp_init_lock(&lock);

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
            static std::vector<bool> printed(gpuNum, false);
            if (!printed[gpuNo])
            {
                std::cout << "RANK: " << rank << ", " << prop.name << " (" << gpuNo << "): Number of streaming multiprocessors: " << noSM << std::endl;
                std::cout << "RANK: " << rank << ", " << prop.name << " (" << gpuNo << "): Shared memory used per block: " << sharedMemoryPerBlock << " bytes" << std::endl;
                std::cout << "RANK: " << rank << ", " << prop.name << " (" << gpuNo << "): Shared memory used per SM: " << (sharedMemoryPerBlock * maxBlocks) << " bytes" << std::endl;
                std::cout << "RANK: " << rank << ", " << prop.name << " (" << gpuNo << "): " << (double(sharedMemoryPerBlock) / double(maxSharedMemoryPerBlock)) * 100 << "% of the entire shared memory dedicated per block is used" << std::endl;
                std::cout << "RANK: " << rank << ", " << prop.name << " (" << gpuNo << "): " << ((double(sharedMemoryPerBlock) * maxBlocks) / double(maxSharedMemoryPerSM)) * 100 << "% of the entire shared memory dedicated per SM is used" << std::endl;
                std::cout << "RANK: " << rank << ", " << prop.name << " (" << gpuNo << "): Maximum number of registers that could be used per SM: " << maxRegsPerSM << std::endl;
                std::cout << "RANK: " << rank << ", " << prop.name << " (" << gpuNo << "): Grid Dimension: " << gridDim << std::endl;
                std::cout << "RANK: " << rank << ", " << prop.name << " (" << gpuNo << "): Block Dimension: " << blockDim << std::endl;
                std::cout << "RANK: " << rank << ", " << prop.name << " (" << gpuNo << "): Total number of threads: " << totalThreadCount << std::endl;
                std::cout << "RANK: " << rank << ", " << prop.name << " (" << gpuNo << "): Maximum number of blocks running concurrently on each SM: " << maxBlocks << std::endl;
                std::cout << "RANK: " << rank << ", " << prop.name << " (" << gpuNo << "): Maximum number of blocks running concurrently throughout the GPU: " << (maxBlocks * noSM) << std::endl;
                printed[gpuNo] = true;
            }
        }
#endif

        C *d_x;
        C* d_products;
        S* d_mat;

        gpuErrchk( cudaMalloc(&d_x, nov * sizeof(C)) )
        gpuErrchk( cudaMalloc(&d_products, totalThreadCount * sizeof(C)) )
        gpuErrchk( cudaMemset(d_products, 0, totalThreadCount * sizeof(C)) )
        gpuErrchk( cudaMalloc(&d_mat, (nov * nov) * sizeof(S)) )

        gpuErrchk( cudaMemcpy(d_x, x, nov * sizeof(C), cudaMemcpyHostToDevice) )
        gpuErrchk( cudaMemcpy(d_mat, matTransposed, (nov * nov) * sizeof(S), cudaMemcpyHostToDevice) )

        C myProductSum = 0;

        while (true)
        {
            long long myStart;
            long long myEnd;
            omp_set_lock(&lock);
            if (currentChunkStart >= nodeEnd)
            {
                omp_unset_lock(&lock);
                break;
            }
            myStart = currentChunkStart;
            currentChunkStart += CHUNK_SIZE;
            myEnd = currentChunkStart;
            omp_unset_lock(&lock);

            if (myEnd > nodeEnd) myEnd = nodeEnd;

            long long left = (myEnd - myStart);

            while (totalThreadCount < left)
            {
                long long chunkSize = 1;
                while ((chunkSize * totalThreadCount) <= left)
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
                        myStart,
                        myEnd,
                        chunkSize);

                gpuErrchk( cudaDeviceSynchronize() )

                long long thisIteration = totalThreadCount * chunkSize;
                left -= thisIteration;
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
        }

        C* h_products = new C[totalThreadCount];
        gpuErrchk( cudaMemcpy( h_products, d_products, totalThreadCount * sizeof(C), cudaMemcpyDeviceToHost) )

        for (int i = 0; i < totalThreadCount; ++i)
        {
            myProductSum += h_products[i];
        }

        gpuErrchk( cudaFree(d_x) )
        gpuErrchk( cudaFree(d_products) )
        gpuErrchk( cudaFree(d_mat) )

        delete[] h_products;

        #pragma omp atomic
            gpuReducedProductSum += myProductSum;
    }
    omp_destroy_lock(&lock);

    delete[] matTransposed;

    mpiBarrier(getMPI_COMM_WORLD());
    double productSum = 0;
    mpiReduce(&gpuReducedProductSum, &productSum, 1, getMPI_DOUBLE(), getMPI_SUM(), 0, getMPI_COMM_WORLD());
    productSum += product;

    return ((4 * (nov % 2) - 2) * productSum);
}


#endif //SUPERMAN_DPMULTIGPUMPI_CUH
