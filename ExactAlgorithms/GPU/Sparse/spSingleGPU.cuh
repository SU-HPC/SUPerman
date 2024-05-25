//
// Created by deniz on 5/25/24.
//

#ifndef SUPERMAN_REBORN_SPSINGLEGPU_CUH
#define SUPERMAN_REBORN_SPSINGLEGPU_CUH

#include "Permanent.h"
#include "SparseKernelDefinitions.cuh"
#include "SparseMatrix.h"


template <typename C, typename S, KernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
class spSingleGPU: public Permanent<C, S>
{
public:
    spSingleGPU(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};


template <typename C, typename S, KernelPointer<C, S> Algo, SharedMemoryFunctionPointer<C, S> Shared>
double spSingleGPU<C, S, Algo, Shared>::permanentFunction()
{
    SparseMatrix<S>* ccs = dynamic_cast<SparseMatrix<S>*>(this->m_Matrix);

    cudaDeviceProp prop;
    cudaGetDeviceProperties(&prop, this->m_Settings.deviceID);
    printf("Permanent is being computed on device id: %d, %s\n", this->m_Settings.deviceID, prop.name);

    gpuErrchk( cudaSetDevice(this->m_Settings.deviceID) )

    int nov = ccs->nov;
    int nnz = ccs->nnz;
    S* mat = ccs->mat;

    C x[nov];
    C rowSum;
    C product = 1;
    for (int i = 0; i < nov; ++i)
    {
        rowSum = 0;
        for (int j = 0; j < nov; ++j)
        {
            if (mat[(i * nov) + j] != 0)
            {
                rowSum += mat[(i * nov) + j];
            }
        }
        x[i] = mat[(i * nov) + (nov - 1)] - (rowSum / 2);
        product *= x[i];
    }

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

    printf("Matrix Size: %d\n", (nov + 1) * sizeof(int) + nnz * (sizeof(int) + sizeof(S)));
    printf("X Vector Size: %d\n", nov * sizeof(C));
    printf("Number of streaming multiprocessors: %d\n", noSM);
    printf("Shared memory used per block: %d\n", sharedMemoryPerBlock);
    printf("%f%% of the entire shared memory dedicated per block is used\n", (double(sharedMemoryPerBlock) / double(maxSharedMemoryPerBlock)) * 100);
    printf("Maximum number of registers that could be used per block: %d\n", maxRegsPerBlock);
    printf("Grid Dimension: %d\n", gridDim);
    printf("Block Dimension: %d\n", blockDim);
    printf("Total number of threads: %d\n", totalThreadCount);
    std::cout << "Maximum number of blocks running concurrently on each SM: " << maxBlocks << std::endl;
    std::cout << "Maximum number of blocks running concurrently throughout the GPU: " << maxBlocks * noSM << std::endl;

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
    gpuErrchk( cudaMemcpy(d_cptrs, ccs->cptrs, (nov + 1) * sizeof(int), cudaMemcpyHostToDevice) )
    gpuErrchk( cudaMemcpy(d_rows, ccs->rows, nnz * sizeof(int), cudaMemcpyHostToDevice) )
    gpuErrchk( cudaMemcpy(d_cvals, ccs->cvals, nnz * sizeof(S), cudaMemcpyHostToDevice) )

    long long start = 1;
    long long end = (1LL << (nov - 1));

    Algo<<<gridDim, blockDim, sharedMemoryPerBlock>>>(
            d_cptrs,
            d_rows,
            d_cvals,
            d_x,
            d_products,
            nov,
            nnz,
            start,
            end);

    gpuErrchk( cudaPeekAtLastError() )
    gpuErrchk( cudaDeviceSynchronize() )

    C* h_products = new C[totalThreadCount];
    gpuErrchk( cudaMemcpy( h_products, d_products, totalThreadCount * sizeof(C), cudaMemcpyDeviceToHost) )

    gpuErrchk( cudaFree(d_x) )
    gpuErrchk( cudaFree(d_products) )
    gpuErrchk( cudaFree(d_cptrs) )
    gpuErrchk( cudaFree(d_rows) )
    gpuErrchk( cudaFree(d_cvals) )

    C productSum = product;
    for (int i = 0; i < totalThreadCount; ++i)
    {
        productSum += h_products[i];
    }

    delete[] h_products;

    return (4 * (nov & 1) - 2) * productSum;
}


#endif //SUPERMAN_REBORN_SPSINGLEGPU_CUH
