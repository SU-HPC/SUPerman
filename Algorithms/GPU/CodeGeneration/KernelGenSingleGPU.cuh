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

#ifndef SUPERMAN_KERNELGENSINGLEGPU_CUH
#define SUPERMAN_KERNELGENSINGLEGPU_CUH


#include "Permanent.h"
#include "Matrix.h"
#include "generatedKernels.cuh"
#include "KernelGenerator.cuh"
#include <fstream>


template <typename C, typename S, DenseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
class KernelGenSingleGPU: public Permanent<C, S>
{
public:
    KernelGenSingleGPU(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};


template <typename C, typename S, DenseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
double KernelGenSingleGPU<C, S, Algo, Shared>::permanentFunction()
{
    cudaDeviceProp prop;
    cudaGetDeviceProperties(&prop, this->m_Settings.deviceID);

    gpuErrchk( cudaSetDevice(this->m_Settings.deviceID) )

    int nov = this->m_Matrix->nov;
    S* mat = this->m_Matrix->mat;

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

    int k = 0;
    generateKernels(k, mat, x, nov, this->m_Settings);

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
        static bool printed = false;
        if (!printed)
        {
            std::cout << "Permanent is being computed on device id: " << this->m_Settings.deviceID << ", " << prop.name << std::endl;
            std::cout << "Number of streaming multiprocessors: " << noSM << std::endl;
            std::cout << "Total number of registers available across the GPU: " << totalRegs << std::endl;
            std::cout << "Total number of registers used across the GPU: " << std::min(regsUsed, totalRegs) << std::endl;
            std::cout << (std::min((double(regsUsed) / double(totalRegs)) * 100, double(100))) << "% of the entire register file is in use" << std::endl;
            std::cout << "Grid Dimension: " << gridDim << std::endl;
            std::cout << "Block Dimension: " << blockDim << std::endl;
            std::cout << "Total number of threads: " << totalThreadCount << std::endl;
            std::cout << "Maximum number of blocks running concurrently on each SM: " << maxBlocks << std::endl;
            std::cout << "Maximum number of blocks running concurrently throughout the GPU: " << (maxBlocks * noSM) << std::endl;
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

        Algo<<<gridDim, blockDim>>>(
                nullptr,
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

    Algo<<<gridDim, blockDim>>>(
            nullptr,
            d_x,
            d_products,
            nov,
            start,
            end,
            -1);

    gpuErrchk( cudaDeviceSynchronize() )

    current = 100;
    printProgressBar(current, this->m_Settings.rank, this->m_Settings.PID);

    C* h_products = new C[totalThreadCount];
    gpuErrchk( cudaMemcpy( h_products, d_products, totalThreadCount * sizeof(C), cudaMemcpyDeviceToHost) )

    for (int i = 0; i < totalThreadCount; ++i)
    {
        productSum += h_products[i];
    }

    gpuErrchk( cudaFree(d_products) )
    gpuErrchk( cudaFree(d_x) )

    delete[] h_products;

    return ((4 * (nov % 2) - 2) * productSum);
}


#endif //SUPERMAN_KERNELGENSINGLEGPU_CUH
