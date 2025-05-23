//
// Created by delbek on 1/28/25.
//

#ifndef SUPERMAN_GPUCOMPUTECOMPLEX_CU
#define SUPERMAN_GPUCOMPUTECOMPLEX_CU

#include "Matrix.h"
#include "Settings.h"
#include <complex>
#include "cuda_runtime.h"
#include "GPUHelpers.cuh"
#include "Helpers.h"
#include "cuComplex.h"
#include <iomanip>
#include "omp.h"


__global__ void xRegisterMSharedComplex(cuDoubleComplex* mat,
                                        cuDoubleComplex* x,
                                        cuDoubleComplex* p,
                                        int nov,
                                        long long start,
                                        long long end,
                                        long long chunkSize)
{
    int threadID = (blockIdx.x * blockDim.x) + threadIdx.x;
    int totalThreadCount = gridDim.x * blockDim.x;

    cuDoubleComplex myResult = make_cuDoubleComplex(0, 0);

    #define REG(reg, number) cuDoubleComplex reg;
        REGISTERS
    #undef REG

    extern __shared__ char sharedMemory[];
    cuDoubleComplex* sharedMat = (cuDoubleComplex*)sharedMemory;

    if (threadIdx.x == 0)
    {
        for (int i = 0; i < nov; ++i)
        {
            for (int j = 0; j < nov; ++j)
            {
                sharedMat[i * nov + j] = mat[i * nov + j];
            }
        }
    }

    __syncthreads();

    #define REG(reg, number) if (number < nov) {reg = x[number];}
        REGISTERS
    #undef REG

    if (chunkSize == -1)
    {
        chunkSize = (end - start) / totalThreadCount + 1;
    }
    long long myStart = start + (threadID * chunkSize);
    long long myEnd = min(start + ((threadID + 1) * chunkSize), end);

    long long gray = (myStart - 1) ^ ((myStart - 1) >> 1); // gray code for the previous subset
    // getting the x vector from the previous subset
    for (int j = 0; j < (nov - 1); ++j)
    {
        if ((gray >> j) & 1LL) // was jth column included?
        {
            #define REG(reg, number) if (number < nov) {reg = cuCadd(reg, sharedMat[j * nov + number]);}
                REGISTERS
            #undef REG
        }
    }

    // are we starting with a negative product sign?
    cuDoubleComplex productSign = (myStart & 1LL) ? make_cuDoubleComplex(-1, 0) : make_cuDoubleComplex(1, 0);

    for (long long i = myStart; i < myEnd; ++i)
    {
        long long grayDifference = (i ^ (i >> 1)) ^ gray;
        int columnChanged = __ffsll(grayDifference) - 1; // column no that was added or removed
        gray ^= (1LL << columnChanged);

        // is column removed or added
        cuDoubleComplex added = ((1LL << columnChanged) & gray) ? make_cuDoubleComplex(1, 0) : make_cuDoubleComplex(-1, 0);

        cuDoubleComplex product = make_cuDoubleComplex(1, 0);
        #define REG(reg, number) if (number < nov) {reg = cuCadd(reg, cuCmul(added, sharedMat[columnChanged * nov + number])); product = cuCmul(product, reg);}
            REGISTERS
        #undef REG

        myResult = cuCadd(myResult, cuCmul(productSign, product));
        productSign = cuCmul(productSign, make_cuDoubleComplex(-1, 0));
    }

    p[threadID] = cuCadd(p[threadID], myResult);
}

__global__ void xRegisterMSharedComplexMatSpecific(cuDoubleComplex* mat,
                                        cuDoubleComplex* x,
                                        cuDoubleComplex* p,
                                        int nov,
                                        long long start,
                                        long long end,
                                        long long chunkSize)
{
    int threadID = (blockIdx.x * blockDim.x) + threadIdx.x;
    int totalThreadCount = gridDim.x * blockDim.x;

    cuDoubleComplex myResult = make_cuDoubleComplex(0, 0);

    #define REG(reg, number) cuDoubleComplex reg;
        SPECIFIC
    #undef REG

    extern __shared__ char sharedMemory[];
    cuDoubleComplex* sharedMat = (cuDoubleComplex*)sharedMemory;

    if (threadIdx.x == 0)
    {
        for (int i = 0; i < nov; ++i)
        {
            for (int j = 0; j < nov; ++j)
            {
                sharedMat[i * nov + j] = mat[i * nov + j];
            }
        }
    }

    __syncthreads();

    #define REG(reg, number) {reg = x[number];}
        SPECIFIC
    #undef REG

    if (chunkSize == -1)
    {
        chunkSize = (end - start) / totalThreadCount + 1;
    }
    long long myStart = start + (threadID * chunkSize);
    long long myEnd = min(start + ((threadID + 1) * chunkSize), end);

    long long gray = (myStart - 1) ^ ((myStart - 1) >> 1); // gray code for the previous subset
    // getting the x vector from the previous subset
    for (int j = 0; j < (nov - 1); ++j)
    {
        if ((gray >> j) & 1LL) // was jth column included?
        {
            #define REG(reg, number) {reg = cuCadd(reg, sharedMat[j * nov + number]);}
                SPECIFIC
            #undef REG
        }
    }

    // are we starting with a negative product sign?
    cuDoubleComplex productSign = (myStart & 1LL) ? make_cuDoubleComplex(-1, 0) : make_cuDoubleComplex(1, 0);

    for (long long i = myStart; i < myEnd; ++i)
    {
        long long grayDifference = (i ^ (i >> 1)) ^ gray;
        int columnChanged = __ffsll(grayDifference) - 1; // column no that was added or removed
        gray ^= (1LL << columnChanged);

        // is column removed or added
        cuDoubleComplex added = ((1LL << columnChanged) & gray) ? make_cuDoubleComplex(1, 0) : make_cuDoubleComplex(-1, 0);

        cuDoubleComplex product = make_cuDoubleComplex(1, 0);
        #define REG(reg, number) {reg = cuCadd(reg, cuCmul(added, sharedMat[columnChanged * nov + number])); product = cuCmul(product, reg);}
            SPECIFIC
        #undef REG

        myResult = cuCadd(myResult, cuCmul(productSign, product));
        productSign = cuCmul(productSign, make_cuDoubleComplex(-1, 0));
    }

    p[threadID] = cuCadd(p[threadID], myResult);
}

void gpuComputeComplex(Matrix<std::complex<double>>* matrix, Settings* settings)
{
    cudaDeviceProp prop;
    cudaGetDeviceProperties(&prop, settings->deviceID);

    gpuErrchk( cudaSetDevice(settings->deviceID) )

    int nov = matrix->nov;
#ifdef MAT_SPECIFIC_COMPILATION
    if (NOV != nov)
    {
        throw std::runtime_error("It seems that you have made a matrix specific compilation but the size of the matrix does not match with that of your indicated size during compilation. Perhaps decomposition reduced the size on the runtime?\n");
    }
#endif
    cuDoubleComplex* mat = new cuDoubleComplex[nov * nov];
    for (int i = 0; i < nov; ++i)
    {
        for (int j = 0; j < nov; ++j)
        {
            mat[i * nov + j] = make_cuDoubleComplex(matrix->mat[i * nov + j].real(), matrix->mat[i * nov + j].imag());
        }
    }

    cuDoubleComplex x[nov];
    cuDoubleComplex product = make_cuDoubleComplex(1.0, 0.0);
    for (int i = 0; i < nov; ++i)
    {
        cuDoubleComplex rowSum = make_cuDoubleComplex(0.0, 0.0);
        for (int j = 0; j < nov; ++j)
        {
            rowSum = cuCadd(rowSum, mat[i * nov + j]);
        }
        x[i] = cuCsub(mat[i * nov + (nov - 1)], cuCdiv(rowSum, make_cuDoubleComplex(2.0, 0.0)));
        product = cuCmul(product, x[i]);
    }
    cuDoubleComplex productSum = product;

    cuDoubleComplex* matTransposed = new cuDoubleComplex[nov * nov];
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
            xRegisterMSharedComplex,
            dpMSharedComplex,
            0) )

    int noSM = prop.multiProcessorCount;
    int sharedMemoryPerBlock = dpMSharedComplex(blockDim);
    int maxSharedMemoryPerBlock= prop.sharedMemPerBlock;
    int maxSharedMemoryPerSM = prop.sharedMemPerMultiprocessor;
    int maxRegsPerSM = prop.regsPerMultiprocessor;
    int totalThreadCount = gridDim * blockDim;

    int maxBlocks;
    gpuErrchk( cudaOccupancyMaxActiveBlocksPerMultiprocessor(
            &maxBlocks,
            xRegisterMSharedComplex,
            blockDim,
            sharedMemoryPerBlock
    ) )

#ifndef SILENT
#pragma omp critical
    {
        static bool printed = false;
        if (!printed)
        {
            printf("Permanent is being computed on device id: %d, %s\n", settings->deviceID, prop.name);
            printf("Matrix Size: %d bytes\n", (nov * nov) * sizeof(cuDoubleComplex));
            printf("X Vector Size: %d bytes\n", nov * sizeof(cuDoubleComplex));
            printf("Number of streaming multiprocessors: %d\n", noSM);
            printf("Shared memory used per block: %d bytes\n", sharedMemoryPerBlock);
            printf("Shared memory used per SM: %d bytes\n", sharedMemoryPerBlock * maxBlocks);
            printf("%f%% of the entire shared memory dedicated per block is used\n", (double(sharedMemoryPerBlock) / double(maxSharedMemoryPerBlock)) * 100);
            printf("%f%% of the entire shared memory dedicated per SM is used\n", ((double(sharedMemoryPerBlock) * maxBlocks) / double(maxSharedMemoryPerSM)) * 100);
            printf("Maximum number of registers that could be used per SM: %d\n", maxRegsPerSM);
            printf("Grid Dimension: %d\n", gridDim);
            printf("Block Dimension: %d\n", blockDim);
            printf("Total number of threads: %d\n", totalThreadCount);
            printf("Maximum number of blocks running concurrently on each SM: %d\n", maxBlocks);
            printf("Maximum number of blocks running concurrently throughout the GPU: %d\n", maxBlocks * noSM);
            printed = true;
        }
    }
#endif

    double timeStart = omp_get_wtime();

    cuDoubleComplex* d_x;
    cuDoubleComplex* d_products;
    cuDoubleComplex* d_mat;

    gpuErrchk( cudaMalloc(&d_x, nov * sizeof(cuDoubleComplex)) )
    gpuErrchk( cudaMalloc(&d_products, totalThreadCount * sizeof(cuDoubleComplex)) )
    gpuErrchk( cudaMemset(d_products, 0, totalThreadCount * sizeof(cuDoubleComplex)) )
    gpuErrchk( cudaMalloc(&d_mat, (nov * nov) * sizeof(cuDoubleComplex)) )

    gpuErrchk( cudaMemcpy(d_x, x, nov * sizeof(cuDoubleComplex), cudaMemcpyHostToDevice) )
    gpuErrchk( cudaMemcpy(d_mat, matTransposed, (nov * nov) * sizeof(cuDoubleComplex), cudaMemcpyHostToDevice) )

    cuDoubleComplex* h_products = new cuDoubleComplex[totalThreadCount];

    long long start = 1;
    long long end = (1LL << (nov - 1));
    long long left = (end - start);

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

        #ifdef MAT_SPECIFIC_COMPILATION
        xRegisterMSharedComplexMatSpecific<<<gridDim, blockDim, sharedMemoryPerBlock>>>(
                d_mat,
                d_x,
                d_products,
                nov,
                start,
                end,
                chunkSize);
        #else
        xRegisterMSharedComplex<<<gridDim, blockDim, sharedMemoryPerBlock>>>(
                d_mat,
                d_x,
                d_products,
                nov,
                start,
                end,
                chunkSize);
        #endif

        gpuErrchk( cudaDeviceSynchronize() )

        long long thisIteration = totalThreadCount * chunkSize;
        left -= thisIteration;
        start += thisIteration;
    }

    #ifdef MAT_SPECIFIC_COMPILATION
    xRegisterMSharedComplexMatSpecific<<<gridDim, blockDim, sharedMemoryPerBlock>>>(
            d_mat,
            d_x,
            d_products,
            nov,
            start,
            end,
            -1);
    #else
    xRegisterMSharedComplex<<<gridDim, blockDim, sharedMemoryPerBlock>>>(
            d_mat,
            d_x,
            d_products,
            nov,
            start,
            end,
            -1);
    #endif

    gpuErrchk( cudaDeviceSynchronize() )

    gpuErrchk( cudaMemcpy( h_products, d_products, totalThreadCount * sizeof(cuDoubleComplex), cudaMemcpyDeviceToHost) )

    for (int i = 0; i < totalThreadCount; ++i)
    {
        productSum = cuCadd(productSum, h_products[i]);
    }

    double timeEnd = omp_get_wtime();

    gpuErrchk( cudaFree(d_x) )
    gpuErrchk( cudaFree(d_products) )
    gpuErrchk( cudaFree(d_mat) )

    delete[] mat;
    delete[] h_products;
    delete[] matTransposed;

    cuDoubleComplex result = cuCmul(make_cuDoubleComplex((4 * (nov % 2) - 2), 0), productSum);
    std::stringstream stream;
    stream << "Permanent: " << '(' << std::setprecision(settings->printingPrecision) << result.x << ',' << result.y << ')' << std::endl;
    stream << "Time took: " << timeEnd - timeStart << std::endl << std::endl;
    print(stream, settings->rank, settings->PID, -1);
}


#endif //SUPERMAN_GPUCOMPUTECOMPLEX_CU
