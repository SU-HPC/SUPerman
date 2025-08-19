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

#ifndef SUPERMAN_SPMULTIGPU_CUH
#define SUPERMAN_SPMULTIGPU_CUH

#include "Permanent.h"
#include "SparseMatrix.h"
#include "SparseKernelDefinitions.cuh"
#include "omp.h"


template <typename C, typename S, SparseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
class spMultiGPU: public Permanent<C, S>
{
public:
    spMultiGPU(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};


template <typename C, typename S, SparseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
double spMultiGPU<C, S, Algo, Shared>::permanentFunction()
{
    SparseMatrix<S>* sp = dynamic_cast<SparseMatrix<S>*>(this->m_Matrix);

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
            static std::vector<bool> printed(gpuNum, false);
            if (!printed[gpuNo])
            {
                std::cout << prop.name << " (" << gpuNo << "): Number of streaming multiprocessors: " << noSM << std::endl;
                std::cout << prop.name << " (" << gpuNo << "): Shared memory used per block: " << sharedMemoryPerBlock << " bytes" << std::endl;
                std::cout << prop.name << " (" << gpuNo << "): Shared memory used per SM: " << (sharedMemoryPerBlock * maxBlocks) << " bytes" << std::endl;
                std::cout << prop.name << " (" << gpuNo << "): " << (double(sharedMemoryPerBlock) / double(maxSharedMemoryPerBlock)) * 100 << "% of the entire shared memory dedicated per block is used" << std::endl;
                std::cout << prop.name << " (" << gpuNo << "): " << ((double(sharedMemoryPerBlock) * maxBlocks) / double(maxSharedMemoryPerSM)) * 100 << "% of the entire shared memory dedicated per SM is used" << std::endl;
                std::cout << prop.name << " (" << gpuNo << "): Maximum number of registers that could be used per SM: " << maxRegsPerSM << std::endl;
                std::cout << prop.name << " (" << gpuNo << "): Grid Dimension: " << gridDim << std::endl;
                std::cout << prop.name << " (" << gpuNo << "): Block Dimension: " << blockDim << std::endl;
                std::cout << prop.name << " (" << gpuNo << "): Total number of threads: " << totalThreadCount << std::endl;
                std::cout << prop.name << " (" << gpuNo << "): Maximum number of blocks running concurrently on each SM: " << maxBlocks << std::endl;
                std::cout << prop.name << " (" << gpuNo << "): Maximum number of blocks running concurrently throughout the GPU: " << (maxBlocks * noSM) << std::endl;
                printed[gpuNo] = true;
            }
        }
#endif

        C *d_x;
        C* d_products;
        int* d_cptrs;
        int* d_rows;
        S *d_cvals;

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

                gpuErrchk( cudaDeviceSynchronize() )

                long long thisIteration = totalThreadCount * chunkSize;
                left -= thisIteration;
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
        }

        C* h_products = new C[totalThreadCount];
        gpuErrchk( cudaMemcpy( h_products, d_products, totalThreadCount * sizeof(C), cudaMemcpyDeviceToHost) )

        for (int i = 0; i < totalThreadCount; ++i)
        {
            myProductSum += h_products[i];
        }

        gpuErrchk( cudaFree(d_x) )
        gpuErrchk( cudaFree(d_products) )
        gpuErrchk( cudaFree(d_cptrs) )
        gpuErrchk( cudaFree(d_rows) )
        gpuErrchk( cudaFree(d_cvals) )

        delete[] h_products;

        #pragma omp atomic
            productSum += myProductSum;
    }
    omp_destroy_lock(&lock);

    return ((4 * (nov % 2) - 2) * productSum);
}


#endif //SUPERMAN_SPMULTIGPU_CUH
