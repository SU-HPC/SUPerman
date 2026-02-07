/*
 * This file is part of the SUperman repository: https://github.com/SU-HPC/SUPerman
 * Author: Deniz Elbek
 *
 * Please see the papers:
 * 
 * @article{Elbek2026SUperman,
 *   title   = {SUperman: Efficient permanent computation on GPUs},
 *   author  = {Elbek, Deniz and Ta{\c{s}}yaran, Fatih and U{\c{c}}ar, Bora and Kaya, Kamer},
 *   journal = {Computer Physics Communications},
 *   volume  = {321},
 *   pages   = {110027},
 *   year    = {2026},
 *   doi     = {10.1016/j.cpc.2026.110027}
 *
 * @article{Elbek2025CodeGeneration,
 *   title   = {Fully-Automated Code Generation for Efficient Computation of Sparse Matrix Permanents on GPUs},
 *   author  = {Elbek, Deniz and Kaya, Kamer},
 *   journal = {arXiv preprint arXiv:2501.15126},
 *   year    = {2025},
 *   doi     = {10.48550/arXiv.2501.15126},
 * }
 */

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
    double productSum = product;

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
            std::cout << "Permanent is being computed on device id: " << this->m_Settings.deviceID << ", " << prop.name << std::endl;
            std::cout << "Matrix Size: " << (nov * nov) * sizeof(S) << " bytes" << std::endl;
            std::cout << "X Vector Size: " << nov * sizeof(C) << " bytes" << std::endl;
            std::cout << "Number of streaming multiprocessors: " << noSM << std::endl;
            std::cout << "Shared memory used per block: " << sharedMemoryPerBlock << " bytes" << std::endl;
            std::cout << "Shared memory used per SM: " << sharedMemoryPerBlock * maxBlocks << " bytes" << std::endl;
            std::cout << (double(sharedMemoryPerBlock) / maxSharedMemoryPerBlock) * 100 << "% of the entire shared memory dedicated per block is used" << std::endl;
            std::cout << ((double(sharedMemoryPerBlock) * maxBlocks) / maxSharedMemoryPerSM) * 100 << "% of the entire shared memory dedicated per SM is used" << std::endl;
            std::cout << "Maximum number of registers that could be used per SM: " << maxRegsPerSM << std::endl;
            std::cout << "Grid Dimension: " << gridDim << std::endl;
            std::cout << "Block Dimension: " << blockDim << std::endl;
            std::cout << "Total number of threads: " << totalThreadCount << std::endl;
            std::cout << "Maximum number of blocks running concurrently on each SM: " << maxBlocks << std::endl;
            std::cout << "Maximum number of blocks running concurrently throughout the GPU: " << maxBlocks * noSM << std::endl;
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

    double current = 0;
    double next = 50;
    printProgressBar(current, this->m_Settings.rank, this->m_Settings.PID);

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
                start,
                end,
                chunkSize);

        gpuErrchk( cudaDeviceSynchronize() )

        current += next;
        next /= 2;
        printProgressBar(current, this->m_Settings.rank, this->m_Settings.PID);

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

    current = 100;
    printProgressBar(current, this->m_Settings.rank, this->m_Settings.PID);

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

    return ((4 * (nov % 2) - 2) * productSum);
}


#endif //SUPERMAN_DPSINGLEGPU_CUH
