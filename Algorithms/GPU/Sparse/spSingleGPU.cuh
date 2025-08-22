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

#ifndef SUPERMAN_SPSINGLEGPU_CUH
#define SUPERMAN_SPSINGLEGPU_CUH

#include "Permanent.h"
#include "SparseKernelDefinitions.cuh"
#include "SparseMatrix.h"


template <typename C, typename S, SparseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
class spSingleGPU: public Permanent<C, S>
{
public:
    spSingleGPU(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};


template <typename C, typename S, SparseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
double spSingleGPU<C, S, Algo, Shared>::permanentFunction()
{
    SparseMatrix<S>* sp = dynamic_cast<SparseMatrix<S>*>(this->m_Matrix);

    cudaDeviceProp prop;
    cudaGetDeviceProperties(&prop, this->m_Settings.deviceID);

    gpuErrchk( cudaSetDevice(this->m_Settings.deviceID) )

    int nov = sp->nov;
    int nnz = sp->nnz;
    int* cptrs = sp->cptrs;
    int* rows = sp->rows;
    S* cvals = sp->cvals;
    int* rptrs = sp->rptrs;
    int* cols = sp->cols;
    S* rvals = sp->rvals;
    S* mat = sp->mat;

    C x[nov];
    double product = 1;
    for (int i = 0; i < nov; ++i)
    {
        C rowSum = 0;
        for (int ptr = rptrs[i]; ptr < rptrs[i + 1]; ++ptr)
        {
            rowSum += rvals[ptr];
        }
        x[i] = mat[(i * nov) + (nov - 1)] - (rowSum / 2);
        product *= x[i];
    }
    double productSum = product;

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
            std::cout << "Matrix Size: " << ((nov + 1) * sizeof(int) + nnz * (sizeof(int) + sizeof(S))) << " bytes" << std::endl;
            std::cout << "X Vector Size: " << (nov * sizeof(C)) << " bytes" << std::endl;
            std::cout << "Number of streaming multiprocessors: " << noSM << std::endl;
            std::cout << "Shared memory used per block: " << sharedMemoryPerBlock << " bytes" << std::endl;
            std::cout << "Shared memory used per SM: " << (sharedMemoryPerBlock * maxBlocks) << " bytes" << std::endl;
            std::cout << (double(sharedMemoryPerBlock) / double(maxSharedMemoryPerBlock)) * 100 << "% of the entire shared memory dedicated per block is used" << std::endl;
            std::cout << ((double(sharedMemoryPerBlock) * maxBlocks) / double(maxSharedMemoryPerSM)) * 100 << "% of the entire shared memory dedicated per SM is used" << std::endl;
            std::cout << "Maximum number of registers that could be used per SM: " << maxRegsPerSM << std::endl;
            std::cout << "Grid Dimension: " << gridDim << std::endl;
            std::cout << "Block Dimension: " << blockDim << std::endl;
            std::cout << "Total number of threads: " << totalThreadCount << std::endl;
            std::cout << "Maximum number of blocks running concurrently on each SM: " << maxBlocks << std::endl;
            std::cout << "Maximum number of blocks running concurrently throughout the GPU: " << (maxBlocks * noSM) << std::endl;
            printed = true;
        }
    }
#endif

    C* d_x;
    C* d_products;
    int* d_cptrs;
    int* d_rows;
    S* d_cvals;

    if (this->m_Settings.algorithm == XGLOBALMSHARED || this->m_Settings.algorithm == XGLOBALMGLOBAL)
    {
        gpuErrchk( cudaMalloc(&d_x, (totalThreadCount + 1) * nov * sizeof(C)) )
    }
    else
    {
        gpuErrchk( cudaMalloc(&d_x, nov * sizeof(C)) )
    }
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
                d_cptrs,
                d_rows,
                d_cvals,
                d_x,
                d_products,
                nov,
                nnz,
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
            d_cptrs,
            d_rows,
            d_cvals,
            d_x,
            d_products,
            nov,
            nnz,
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
    gpuErrchk( cudaFree(d_cptrs) )
    gpuErrchk( cudaFree(d_rows) )
    gpuErrchk( cudaFree(d_cvals) )

    delete[] h_products;

    return ((4 * (nov % 2) - 2) * productSum);
}


#endif //SUPERMAN_SPSINGLEGPU_CUH
