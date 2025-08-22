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

#ifndef SUPERMAN_SPARSEKERNELDEFINITIONS_CUH
#define SUPERMAN_SPARSEKERNELDEFINITIONS_CUH

#include "GPUHelpers.cuh"


namespace SparseDefinitions
{
    template <class C, class S>
    __global__ void xGlobalMGlobal(int* cptrs,
                                   int* rows,
                                   S* cvals,
                                   C* x,
                                   C* p,
                                   int nov,
                                   int nnz,
                                   long long start,
                                   long long end,
                                   long long chunkSize)
    {
        unsigned globalThreadID = (blockIdx.x * blockDim.x) + threadIdx.x;
        unsigned totalThreadCount = gridDim.x * blockDim.x;

        C myResult = 0;

        for (int i = 0; i < nov; ++i)
        {
            x[nov + (i * totalThreadCount) + globalThreadID] = x[i];
        }
        x += nov;

        if (chunkSize == -1)
        {
            chunkSize = (end - start + totalThreadCount - 1) / totalThreadCount;
        }
        long long myStart = start + (globalThreadID * chunkSize);
        long long myEnd = min(start + ((globalThreadID + 1) * chunkSize), end);

        long long gray = (myStart - 1) ^ ((myStart - 1) >> 1); // gray code for the previous subset
        // getting the x vector from the previous subset
        for (int j = 0; j < (nov - 1); ++j)
        {
            if ((gray >> j) & 1LL) // was jth column included?
            {
                for (int i = cptrs[j]; i < cptrs[j + 1]; ++i)
                {
                    x[totalThreadCount * rows[i] + globalThreadID] += cvals[i];
                }
            }
        }

        int zeroNumber = 0;
        // product from the previous subset
        for (int i = 0; i < nov; ++i)
        {
            unsigned index = totalThreadCount * i + globalThreadID;
            if (x[index] == 0)
            {
                ++zeroNumber;
            }
        }

        // are we starting with a negative product sign?
        int productSign = (myStart & 1LL) ? -1 : 1;

        for (long long i = myStart; i < myEnd; ++i)
        {
            long long grayDifference = (i ^ (i >> 1)) ^ gray;
            int columnChanged = __ffsll(grayDifference) - 1; // column no that was added or removed
            gray ^= (1LL << columnChanged);

            // is column removed or added
            C added = ((1LL << columnChanged) & gray) ? 1 : -1;

            for (int j = cptrs[columnChanged]; j < cptrs[columnChanged + 1]; ++j)
            {
                unsigned index = totalThreadCount * rows[j] + globalThreadID;
                C xValue = x[index];

                // excluding
                if (xValue == 0)
                {
                    --zeroNumber;
                }

                xValue += added * cvals[j];

                // including
                if (xValue == 0)
                {
                    ++zeroNumber;
                }

                x[index] = xValue;
            }

            if(zeroNumber == 0)
            {
                C product = 1;
                for (int r = 0; r < nov; ++r)
                {
                    unsigned index = totalThreadCount * r + globalThreadID;
                    product *= x[index];
                }
                myResult += productSign * product;
            }

            productSign *= -1; // sign for the next subset
        }

        p[globalThreadID] += myResult;
    }

    template <class C, class S>
    __global__ void xGlobalMShared(int* cptrs,
                                   int* rows,
                                   S* cvals,
                                   C* x,
                                   C* p,
                                   int nov,
                                   int nnz,
                                   long long start,
                                   long long end,
                                   long long chunkSize)
    {
        unsigned globalThreadID = (blockIdx.x * blockDim.x) + threadIdx.x;
        unsigned totalThreadCount = gridDim.x * blockDim.x;

        C myResult = 0;

        extern __shared__ char sharedMemory[];
        int* sharedCPtrs = (int*)sharedMemory; // size: nov + 1 * sizeof(int)

        size_t sharedRowsOffset = ((nov + 1) * sizeof(int) + (sizeof(int) - 1)) & ~(sizeof(int) - 1);
        int* sharedRows = (int*)&sharedMemory[sharedRowsOffset]; // size: nnz * sizeof(int)

        size_t sharedCValsOffset = (sharedRowsOffset + nnz * sizeof(int) + (alignof(S) - 1)) & ~(alignof(S) - 1);
        S* sharedCVals = (S*)&sharedMemory[sharedCValsOffset]; // size: nnz * sizeof(S)

        if (threadIdx.x < 32)
        {
            unsigned threadVal = ceil(double(nov + 1) / 32);
            for (unsigned i = threadIdx.x * threadVal; i < min((threadIdx.x + 1) * threadVal, (nov + 1)); ++i)
            {
                sharedCPtrs[i] = cptrs[i];
            }
        }
        else
        {
            unsigned threadNNZ = ceil(double(nnz) / (blockDim.x - 32));
            for (unsigned i = (threadIdx.x - 32) * threadNNZ; i < min((threadIdx.x - 31) * threadNNZ, nnz); ++i)
            {
                sharedRows[i] = rows[i];
                sharedCVals[i] = cvals[i];
            }
        }

        __syncthreads();

        for (int i = 0; i < nov; ++i)
        {
            x[nov + (i * totalThreadCount) + globalThreadID] = x[i];
        }
        x += nov;

        if (chunkSize == -1)
        {
            chunkSize = (end - start + totalThreadCount - 1) / totalThreadCount;
        }
        long long myStart = start + (globalThreadID * chunkSize);
        long long myEnd = min(start + ((globalThreadID + 1) * chunkSize), end);

        long long gray = (myStart - 1) ^ ((myStart - 1) >> 1); // gray code for the previous subset
        // getting the x vector from the previous subset
        for (int j = 0; j < (nov - 1); ++j)
        {
            if ((gray >> j) & 1LL) // was jth column included?
            {
                for (int i = sharedCPtrs[j]; i < sharedCPtrs[j + 1]; ++i)
                {
                    x[totalThreadCount * sharedRows[i] + globalThreadID] += sharedCVals[i];
                }
            }
        }

        int zeroNumber = 0;
        // product from the previous subset
        for (int i = 0; i < nov; ++i)
        {
            unsigned index = totalThreadCount * i + globalThreadID;
            if (x[index] == 0)
            {
                ++zeroNumber;
            }
        }

        // are we starting with a negative product sign?
        int productSign = (myStart & 1LL) ? -1 : 1;

        for (long long i = myStart; i < myEnd; ++i)
        {
            long long grayDifference = (i ^ (i >> 1)) ^ gray;
            int columnChanged = __ffsll(grayDifference) - 1; // column no that was added or removed
            gray ^= (1LL << columnChanged);

            // is column removed or added
            C added = ((1LL << columnChanged) & gray) ? 1 : -1;

            for (int j = sharedCPtrs[columnChanged]; j < sharedCPtrs[columnChanged + 1]; ++j)
            {
                unsigned index = totalThreadCount * sharedRows[j] + globalThreadID;
                C xValue = x[index];

                // excluding
                if (xValue == 0)
                {
                    --zeroNumber;
                }

                xValue += added * sharedCVals[j];

                // including
                if (xValue == 0)
                {
                    ++zeroNumber;
                }

                x[index] = xValue;
            }

            if(zeroNumber == 0)
            {
                C product = 1;
                for (int r = 0; r < nov; ++r)
                {
                    unsigned index = totalThreadCount * r + globalThreadID;
                    product *= x[index];
                }
                myResult += productSign * product;
            }

            productSign *= -1; // sign for the next subset
        }

        p[globalThreadID] += myResult;
    }

    template <class C, class S>
    __global__ void xSharedMGlobal(int* cptrs,
                                   int* rows,
                                   S* cvals,
                                   C* x,
                                   C* p,
                                   int nov,
                                   int nnz,
                                   long long start,
                                   long long end,
                                   long long chunkSize)
    {
        unsigned globalThreadID = (blockIdx.x * blockDim.x) + threadIdx.x;
        unsigned totalThreadCount = gridDim.x * blockDim.x;

        C myResult = 0;

        extern __shared__ char sharedMemory[];
        C* sharedX = (C*)sharedMemory;

        for (int i = 0; i < nov; ++i)
        {
            sharedX[blockDim.x * i + threadIdx.x] = x[i];
        }

        if (chunkSize == -1)
        {
            chunkSize = (end - start + totalThreadCount - 1) / totalThreadCount;
        }
        long long myStart = start + (globalThreadID * chunkSize);
        long long myEnd = min(start + ((globalThreadID + 1) * chunkSize), end);

        long long gray = (myStart - 1) ^ ((myStart - 1) >> 1); // gray code for the previous subset
        // getting the x vector from the previous subset
        for (int j = 0; j < (nov - 1); ++j)
        {
            if ((gray >> j) & 1LL) // was jth column included?
            {
                for (int i = cptrs[j]; i < cptrs[j + 1]; ++i)
                {
                    sharedX[blockDim.x * rows[i] + threadIdx.x] += cvals[i];
                }
            }
        }

        int zeroNumber = 0;
        // product from the previous subset
        for (int i = 0; i < nov; ++i)
        {
            unsigned index = blockDim.x * i + threadIdx.x;
            if (sharedX[index] == 0)
            {
                ++zeroNumber;
            }
        }

        // are we starting with a negative product sign?
        int productSign = (myStart & 1LL) ? -1 : 1;

        for (long long i = myStart; i < myEnd; ++i)
        {
            long long grayDifference = (i ^ (i >> 1)) ^ gray;
            int columnChanged = __ffsll(grayDifference) - 1; // column no that was added or removed
            gray ^= (1LL << columnChanged);

            // is column removed or added
            C added = ((1LL << columnChanged) & gray) ? 1 : -1;

            for (int j = cptrs[columnChanged]; j < cptrs[columnChanged + 1]; ++j)
            {
                unsigned index = blockDim.x * rows[j] + threadIdx.x;
                C xValue = sharedX[index];

                // excluding
                if (xValue == 0)
                {
                    --zeroNumber;
                }

                xValue += added * cvals[j];

                // including
                if (xValue == 0)
                {
                    ++zeroNumber;
                }

                sharedX[index] = xValue;
            }

            if(zeroNumber == 0)
            {
                C product = 1;
                for (int r = 0; r < nov; ++r)
                {
                    unsigned index = blockDim.x * r + threadIdx.x;
                    product *= sharedX[index];
                }
                myResult += productSign * product;
            }

            productSign *= -1; // sign for the next subset
        }

        p[globalThreadID] += myResult;
    }

    template <class C, class S>
    __global__ void xSharedMShared(int* cptrs,
                                   int* rows,
                                   S* cvals,
                                   C* x,
                                   C* p,
                                   int nov,
                                   int nnz,
                                   long long start,
                                   long long end,
                                   long long chunkSize)
    {
        unsigned globalThreadID = (blockIdx.x * blockDim.x) + threadIdx.x;
        unsigned totalThreadCount = gridDim.x * blockDim.x;

        C myResult = 0;

        extern __shared__ char sharedMemory[];
        C* sharedX = (C*)sharedMemory; // size: nov * blockDim.x * sizeof(C)

        size_t sharedCPtrsOffset = blockDim.x * nov * sizeof(C);
        int* sharedCPtrs = (int*)&sharedMemory[sharedCPtrsOffset]; // size: nov + 1 * sizeof(int)

        size_t sharedRowsOffset = sharedCPtrsOffset + ((nov + 1) * sizeof(int) + (sizeof(int) - 1)) & ~(sizeof(int) - 1);
        int* sharedRows = (int*)&sharedMemory[sharedRowsOffset]; // size: nnz * sizeof(int)

        size_t sharedCValsOffset = (sharedRowsOffset + nnz * sizeof(int) + (alignof(S) - 1)) & ~(alignof(S) - 1);
        S* sharedCVals = (S*)&sharedMemory[sharedCValsOffset]; // size: nnz * sizeof(S)

        if (threadIdx.x < 32)
        {
            unsigned threadVal = ceil(double(nov + 1) / 32);
            for (unsigned i = threadIdx.x * threadVal; i < min((threadIdx.x + 1) * threadVal, (nov + 1)); ++i)
            {
                sharedCPtrs[i] = cptrs[i];
            }
        }
        else
        {
            unsigned threadNNZ = ceil(double(nnz) / (blockDim.x - 32));
            for (unsigned i = (threadIdx.x - 32) * threadNNZ; i < min((threadIdx.x - 31) * threadNNZ, nnz); ++i)
            {
                sharedRows[i] = rows[i];
                sharedCVals[i] = cvals[i];
            }
        }

        __syncthreads();

        for (int i = 0; i < nov; ++i)
        {
            sharedX[blockDim.x * i + threadIdx.x] = x[i];
        }

        if (chunkSize == -1)
        {
            chunkSize = (end - start + totalThreadCount - 1) / totalThreadCount;
        }
        long long myStart = start + (globalThreadID * chunkSize);
        long long myEnd = min(start + ((globalThreadID + 1) * chunkSize), end);

        long long gray = (myStart - 1) ^ ((myStart - 1) >> 1); // gray code for the previous subset
        // getting the x vector from the previous subset
        for (int j = 0; j < (nov - 1); ++j)
        {
            if ((gray >> j) & 1LL) // was jth column included?
            {
                for (int i = sharedCPtrs[j]; i < sharedCPtrs[j + 1]; ++i)
                {
                    sharedX[blockDim.x * sharedRows[i] + threadIdx.x] += sharedCVals[i];
                }
            }
        }

        int zeroNumber = 0;
        // product from the previous subset
        for (int i = 0; i < nov; ++i)
        {
            unsigned index = blockDim.x * i + threadIdx.x;
            if (sharedX[index] == 0)
            {
                ++zeroNumber;
            }
        }

        // are we starting with a negative product sign?
        int productSign = (myStart & 1LL) ? -1 : 1;

        for (long long i = myStart; i < myEnd; ++i)
        {
            long long grayDifference = (i ^ (i >> 1)) ^ gray;
            int columnChanged = __ffsll(grayDifference) - 1; // column no that was added or removed
            gray ^= (1LL << columnChanged);

            // is column removed or added
            C added = ((1LL << columnChanged) & gray) ? 1 : -1;

            for (int j = sharedCPtrs[columnChanged]; j < sharedCPtrs[columnChanged + 1]; ++j)
            {
                unsigned index = blockDim.x * sharedRows[j] + threadIdx.x;
                C xValue = sharedX[index];

                // excluding
                if (xValue == 0)
                {
                    --zeroNumber;
                }

                xValue += added * sharedCVals[j];

                // including
                if (xValue == 0)
                {
                    ++zeroNumber;
                }

                sharedX[index] = xValue;
            }

            if(zeroNumber == 0)
            {
                C product = 1;
                for (int r = 0; r < nov; ++r)
                {
                    unsigned index = blockDim.x * r + threadIdx.x;
                    product *= sharedX[index];
                }
                myResult += productSign * product;
            }

            productSign *= -1; // sign for the next subset
        }

        p[globalThreadID] += myResult;
    }
}


#endif //SUPERMAN_SPARSEKERNELDEFINITIONS_CUH
