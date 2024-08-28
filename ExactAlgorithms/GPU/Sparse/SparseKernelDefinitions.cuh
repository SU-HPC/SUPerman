//
// Created by deniz on 4/22/24.
//

#ifndef SUPERMAN_SPARSEKERNELDEFINITIONS_CUH
#define SUPERMAN_SPARSEKERNELDEFINITIONS_CUH

#include "GPUHelpers.cuh"


namespace SparseDefinitions
{
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
        int globalThreadID = (blockIdx.x * blockDim.x) + threadIdx.x;
        int localThreadID = threadIdx.x;
        int totalThreadCount = gridDim.x * blockDim.x;
        int threadsPerBlock = blockDim.x;

        C myResult = 0;

        extern __shared__ char sharedMemory[];
        C* sharedX = (C*)sharedMemory;

        for (int i = 0; i < nov; ++i)
        {
            sharedX[threadsPerBlock * i + localThreadID] = x[i];
        }

        if (chunkSize == -1)
        {
            chunkSize = (end - start) / totalThreadCount + 1;
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
                    sharedX[threadsPerBlock * rows[i] + localThreadID] += cvals[i];
                }
            }
        }

        int zeroNumber = 0;
        // product from the previous subset
        for (int i = 0; i < nov; ++i)
        {
            int index = threadsPerBlock * i + localThreadID;
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
                int index = threadsPerBlock * rows[j] + localThreadID;
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
                    int index = threadsPerBlock * r + localThreadID;
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
        int globalThreadID = (blockIdx.x * blockDim.x) + threadIdx.x;
        int localThreadID = threadIdx.x;
        int totalThreadCount = gridDim.x * blockDim.x;
        int threadsPerBlock = blockDim.x;

        C myResult = 0;

        /*
        extern __shared__ char sharedMemory[];
        C* sharedX = (C*)sharedMemory; // size: nov * threadsPerBlock * sizeof(C)

        size_t sharedCPtrsOffset = threadsPerBlock * nov * sizeof(C);
        int* sharedCPtrs = (int*)&sharedMemory[sharedCPtrsOffset]; // size: nov + 1 * sizeof(int)

        size_t sharedRowsOffset = sharedCPtrsOffset + (nov + 1) * sizeof(int);
        int* sharedRows = (int*)&sharedMemory[sharedRowsOffset]; // size: nnz * sizeof(int)

        size_t sharedCValsOffset = sharedRowsOffset + nnz * sizeof(int);
        S* sharedCVals = (S*)&sharedMemory[sharedCValsOffset]; // size: nnz * sizeof(S)
        */

        extern __shared__ char sharedMemory[];
        C* sharedX = (C*)sharedMemory; // size: nov * threadsPerBlock * sizeof(C)

        size_t sharedCPtrsOffset = threadsPerBlock * nov * sizeof(C);
        int* sharedCPtrs = (int*)&sharedMemory[sharedCPtrsOffset]; // size: nov + 1 * sizeof(int)

        size_t sharedRowsOffset = sharedCPtrsOffset + ((nov + 1) * sizeof(int) + (sizeof(int) - 1)) & ~(sizeof(int) - 1);
        int* sharedRows = (int*)&sharedMemory[sharedRowsOffset]; // size: nnz * sizeof(int)

        size_t sharedCValsOffset = (sharedRowsOffset + nnz * sizeof(int) + (alignof(S) - 1)) & ~(alignof(S) - 1);
        S* sharedCVals = (S*)&sharedMemory[sharedCValsOffset]; // size: nnz * sizeof(S)

        if (localThreadID == 0)
        {
            for (int i = 0; i < nov; ++i)
            {
                sharedCPtrs[i] = cptrs[i];
            }

            sharedCPtrs[nov] = cptrs[nov];

            for (int i = 0; i < nnz; ++i)
            {
                sharedRows[i] = rows[i];
                sharedCVals[i] = cvals[i];
            }
        }

        __syncthreads();

        for (int i = 0; i < nov; ++i)
        {
            sharedX[threadsPerBlock * i + localThreadID] = x[i];
        }

        if (chunkSize == -1)
        {
            chunkSize = (end - start) / totalThreadCount + 1;
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
                    sharedX[threadsPerBlock * sharedRows[i] + localThreadID] += sharedCVals[i];
                }
            }
        }

        int zeroNumber = 0;
        // product from the previous subset
        for (int i = 0; i < nov; ++i)
        {
            int index = threadsPerBlock * i + localThreadID;
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
                int index = threadsPerBlock * sharedRows[j] + localThreadID;
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
                    int index = threadsPerBlock * r + localThreadID;
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
