//
// Created by deniz on 4/22/24.
//

#ifndef SUPERMAN_SPMULTIGPU_CUH
#define SUPERMAN_SPMULTIGPU_CUH

#include "Permanent.h"
#include "SparseMatrix.h"
#include "SparseKernelDefinitions.cuh"


template <typename C, typename S, SparseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
class spMultiGPU: public Permanent<C, S>
{
public:
    spMultiGPU(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;

public:
    C productSum;
};


template <typename C, typename S, SparseKernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
double spMultiGPU<C, S, Algo, Shared>::permanentFunction()
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
    C product = 1;
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
    productSum = product;

    int gpuNum = this->m_Settings.gpuNum;

    int totalWeight = 0;
    int weights[gpuNum];
    for (int i = 0; i < gpuNum; ++i)
    {
        cudaDeviceProp deviceProp;
        cudaGetDeviceProperties(&deviceProp, i);
        weights[i] = COMPUTE_CAPABILITY_TO_WEIGHT[deviceProp.major];
        totalWeight += weights[i];
    }

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
        int maxRegsPerBlock = prop.regsPerBlock;
        int totalThreadCount = gridDim * blockDim;

        int maxBlocks;
        gpuErrchk( cudaOccupancyMaxActiveBlocksPerMultiprocessor(
                &maxBlocks,
                Algo,
                blockDim,
                sharedMemoryPerBlock
        ) )

#ifdef LOUD
        printf("%s (%d): Number of streaming multiprocessors: %d\n", prop.name, gpuNo, noSM);
        printf("%s (%d): Shared memory used per block: %d\n", prop.name, gpuNo, sharedMemoryPerBlock);
        printf("%s (%d): %f%% of the entire shared memory dedicated per block is used\n", prop.name, gpuNo, (double(sharedMemoryPerBlock) / double(maxSharedMemoryPerBlock)) * 100);
        printf("%s (%d): Maximum number of registers that could be used per block: %d\n", prop.name, gpuNo, maxRegsPerBlock);
        printf("%s (%d): Grid Dimension: %d\n", prop.name, gpuNo, gridDim);
        printf("%s (%d): Block Dimension: %d\n", prop.name, gpuNo, blockDim);
        printf("%s (%d): Total number of threads: %d\n", prop.name, gpuNo, totalThreadCount);
        printf("%s (%d): Maximum number of blocks running concurrently on each SM: %d\n", prop.name, gpuNo, maxBlocks);
        printf("%s (%d): Maximum number of blocks running concurrently throughout the GPU: %d\n", prop.name, gpuNo, maxBlocks * noSM);
#endif

        C *d_x;
        C* d_products;
        int* d_cptrs;
        int* d_rows;
        S *d_cvals;

        gpuErrchk( cudaMalloc(&d_x, nov * sizeof(C)) )
        gpuErrchk( cudaMalloc(&d_products, totalThreadCount * sizeof(C)) )
        gpuErrchk( cudaMalloc(&d_cptrs, (nov + 1) * sizeof(int)) )
        gpuErrchk( cudaMalloc(&d_rows, nnz * sizeof(int)) )
        gpuErrchk( cudaMalloc(&d_cvals, nnz * sizeof(S)) )

        gpuErrchk( cudaMemcpy(d_x, x, nov * sizeof(C), cudaMemcpyHostToDevice) )
        gpuErrchk( cudaMemcpy(d_cptrs, cptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice) )
        gpuErrchk( cudaMemcpy(d_rows, rows, nnz * sizeof(int), cudaMemcpyHostToDevice) )
        gpuErrchk( cudaMemcpy(d_cvals, cvals, nnz * sizeof(S), cudaMemcpyHostToDevice) )

        C* h_products = new C[totalThreadCount];
        C myProductSum = 0;

        long long start = 1;
        long long end = (1LL << (nov - 1));

        long long chunkSize = (end - start + totalWeight - 1) / totalWeight;
        int soFar = 0;
        for (int i = 0; i < gpuNo; ++i)
        {
            soFar += weights[i];
        }
        int myWeight = weights[gpuNo];
        long long myStart = start + soFar * chunkSize;
        long long myEnd = start + (soFar + myWeight) * chunkSize;
        if (myEnd > end) myEnd = end;

        long long total = myEnd - myStart;
        long long left = total;
        double passed = 0;

        while (passed < 0.99)
        {
            chunkSize = 1;
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

            gpuErrchk( cudaDeviceSynchronize() )
            gpuErrchk( cudaMemcpy( h_products, d_products, totalThreadCount * sizeof(C), cudaMemcpyDeviceToHost) )

            for (int i = 0; i < totalThreadCount; ++i)
            {
                myProductSum += h_products[i];
            }

            long long thisIteration = totalThreadCount * chunkSize;
            left -= thisIteration;
            passed = 1 - (double)left / double(total);
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

        gpuErrchk( cudaFree(d_x) )
        gpuErrchk( cudaFree(d_products) )
        gpuErrchk( cudaFree(d_cptrs) )
        gpuErrchk( cudaFree(d_rows) )
        gpuErrchk( cudaFree(d_cvals) )

        delete[] h_products;

        #pragma omp atomic
            productSum += myProductSum;
    }

    return 0;
}


#endif //SUPERMAN_SPMULTIGPU_CUH
