//
// Created by deniz on 4/22/24.
//

#ifndef SUPERMAN_SPARSEKERNELDEFINITIONS_CUH
#define SUPERMAN_SPARSEKERNELDEFINITIONS_CUH

#include "GPUHelpers.cuh"


namespace SparseDefinitions
{
    template <class C, class S>
    __global__ void xLocalMGlobal(int* cptrs,
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
        int threadID = (blockIdx.x * blockDim.x) + threadIdx.x;
        int totalThreadCount = gridDim.x * blockDim.x;

        C myResult = 0;

        volatile C myX[X_SIZE];
        for (int i = 0; i < nov; ++i)
        {
            myX[i] = x[i];
        }

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
                for (int i = cptrs[j]; i < cptrs[j + 1]; ++i)
                {
                    myX[rows[i]] += cvals[i];
                }
            }
        }

        C product = 1;
        int zeroNumber = 0;
        // product from the previous subset
        for (int i = 0; i < nov; ++i)
        {
            if (myX[i] == 0)
            {
                ++zeroNumber;
            }
            else
            {
                product *= myX[i];
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
                int rowNeighbour = rows[j];
                C xValue = myX[rowNeighbour];
                S value = cvals[j];
                C temp = added * value;

                // excluding
                if (xValue == 0)
                {
                    --zeroNumber;
                }
                else
                {
                    product /= xValue;
                }

                xValue += temp;

                // including
                if (xValue == 0)
                {
                    ++zeroNumber;
                }
                else
                {
                    product *= xValue;
                }

                myX[rowNeighbour] = xValue;
            }

            if(zeroNumber == 0)
            {
                myResult += productSign * product;
            }

            productSign *= -1; // sign for the next subset
        }

        p[threadID] = myResult;
    }

    template <class C, class S>
    __global__ void xLocalMShared(int* cptrs,
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
        int threadID = (blockIdx.x * blockDim.x) + threadIdx.x;
        int totalThreadCount = gridDim.x * blockDim.x;

        C myResult = 0;

        volatile C myX[X_SIZE];

        /*
        extern __shared__ char sharedMemory[];
        int* sharedCPtrs = (int*)sharedMemory; // size: (nov + 1) * sizeof(int)

        size_t sharedRowsOffset = (nov + 1) * sizeof(int);
        int* sharedRows = (int*)&sharedMemory[sharedRowsOffset]; // size: nnz * sizeof(int)

        size_t sharedCValsOffset = sharedRowsOffset + nnz * sizeof(int);
        S* sharedCVals = (S*)&sharedMemory[sharedCValsOffset]; // size: nnz * sizeof(S)
        */

        extern __shared__ char sharedMemory[];
        int* sharedCPtrs = (int*)sharedMemory; // size: (nov + 1) * sizeof(int)

        size_t sharedRowsOffset = ((nov + 1) * sizeof(int) + (sizeof(int) - 1)) & ~(sizeof(int) - 1);
        int* sharedRows = (int*)&sharedMemory[sharedRowsOffset]; // size: nnz * sizeof(int)

        size_t sharedCValsOffset = (sharedRowsOffset + nnz * sizeof(int) + (alignof(S) - 1)) & ~(alignof(S) - 1);
        S* sharedCVals = (S*)&sharedMemory[sharedCValsOffset]; // size: nnz * sizeof(S)

        if (threadIdx.x == 0)
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
            myX[i] = x[i];
        }

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
                for (int ptr = sharedCPtrs[j]; ptr < sharedCPtrs[j + 1]; ++ptr)
                {
                    myX[sharedRows[ptr]] += sharedCVals[ptr];
                }
            }
        }

        C product = 1;
        int zeroNumber = 0;
        // product from the previous subset
        for (int i = 0; i < nov; ++i)
        {
            if (myX[i] == 0)
            {
                ++zeroNumber;
            }
            else
            {
                product *= myX[i];
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

            for (int ptr = sharedCPtrs[columnChanged]; ptr < sharedCPtrs[columnChanged + 1]; ++ptr)
            {
                int rowNeighbour = sharedRows[ptr];
                C xValue = myX[rowNeighbour];
                S value = sharedCVals[ptr];
                C temp = added * value;

                // excluding
                if (xValue == 0)
                {
                    --zeroNumber;
                }
                else
                {
                    product /= xValue;
                }

                xValue += temp;

                // including
                if (xValue == 0)
                {
                    ++zeroNumber;
                }
                else
                {
                    product *= xValue;
                }

                myX[rowNeighbour] = xValue;
            }

            if(zeroNumber == 0)
            {
                myResult += productSign * product;
            }

            productSign *= -1; // sign for the next subset
        }

        p[threadID] = myResult;
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
        int globalThreadID = (blockIdx.x * blockDim.x) + threadIdx.x;
        int localThreadID = threadIdx.x;
        int totalThreadCount = gridDim.x * blockDim.x;
        int threadsPerBlock = blockDim.x;

        C myResult = 0;

        extern __shared__ char sharedMemory[];
        C* sharedX = (C*)sharedMemory;

        // note that the x vectors are stored in the shared memory
        // in a structure of arrays pattern for a coalesced access
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

        C product = 1;
        int zeroNumber = 0;
        // product from the previous subset
        for (int i = 0; i < nov; ++i)
        {
            int index = threadsPerBlock * i + localThreadID;
            if (sharedX[index] == 0)
            {
                ++zeroNumber;
            }
            else
            {
                product *= sharedX[index];
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
                int rowNeighbour = rows[j];
                int index = threadsPerBlock * rowNeighbour + localThreadID;
                C xValue = sharedX[index];
                S value = cvals[j];
                C temp = added * value;

                // excluding
                if (xValue == 0)
                {
                    --zeroNumber;
                }
                else
                {
                    product /= xValue;
                }

                xValue += temp;

                // including
                if (xValue == 0)
                {
                    ++zeroNumber;
                }
                else
                {
                    product *= xValue;
                }

                sharedX[index] = xValue;
            }

            if(zeroNumber == 0)
            {
                myResult += productSign * product;
            }

            productSign *= -1; // sign for the next subset
        }

        p[globalThreadID] = myResult;
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

        // note that the x vectors are stored in the shared memory
        // in a structure of arrays pattern for a coalesced access
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

        C product = 1;
        int zeroNumber = 0;
        // product from the previous subset
        for (int i = 0; i < nov; ++i)
        {
            int index = threadsPerBlock * i + localThreadID;
            if (sharedX[index] == 0)
            {
                ++zeroNumber;
            }
            else
            {
                product *= sharedX[index];
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
                int rowNeighbour = sharedRows[j];
                int index = threadsPerBlock * rowNeighbour + localThreadID;
                C xValue = sharedX[index];
                S value = sharedCVals[j];
                C temp = added * value;

                // excluding
                if (xValue == 0)
                {
                    --zeroNumber;
                }
                else
                {
                    product /= xValue;
                }

                xValue += temp;

                // including
                if (xValue == 0)
                {
                    ++zeroNumber;
                }
                else
                {
                    product *= xValue;
                }

                sharedX[index] = xValue;
            }

            if(zeroNumber == 0)
            {
                myResult += productSign * product;
            }

            productSign *= -1; // sign for the next subset
        }

        p[globalThreadID] = myResult;
    }
}


#endif //SUPERMAN_SPARSEKERNELDEFINITIONS_CUH
