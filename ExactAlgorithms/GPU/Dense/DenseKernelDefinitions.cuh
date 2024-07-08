//
// Created by deniz on 4/22/24.
//

#ifndef SUPERMAN_DENSEKERNELDEFINITIONS_CUH
#define SUPERMAN_DENSEKERNELDEFINITIONS_CUH

#include "cuda_runtime.h"
#include "GPUHelpers.cuh"


namespace DenseDefinitions
{
    // all matrices are assumed to have been their transpose taken before passed into the following kernels

    template <class C, class S>
    __global__ void xRegisterMSharedMatSpecificCompilation(S* mat,
                                     C* x,
                                     C* p,
                                     int nov,
                                     long long start,
                                     long long end,
                                     long long chunkSize)
    {
        int threadID = (blockIdx.x * blockDim.x) + threadIdx.x;
        int totalThreadCount = gridDim.x * blockDim.x;

        C myResult = 0;

        #define REG(reg, number) C reg;
            SPECIFIC
        #undef REG

        extern __shared__ char sharedMemory[];
        S* sharedMat = (S*)sharedMemory;

        if (threadIdx.x == 0)
        {
            for (int i = 0; i < NOV; ++i)
            {
                for (int j = 0; j < NOV; ++j)
                {
                    sharedMat[i * NOV + j] = mat[i * NOV + j];
                }
            }
        }

        __syncthreads();

        #define REG(reg, number) reg = x[number];
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
        for (int j = 0; j < (NOV - 1); ++j)
        {
            if ((gray >> j) & 1LL) // was jth column included?
            {
                #define REG(reg, number) reg += sharedMat[j * NOV + number];
                    SPECIFIC
                #undef REG
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

            C product = 1;
            #define REG(reg, number) reg += added * sharedMat[columnChanged * NOV + number]; product *= reg;
                SPECIFIC
            #undef REG

            myResult += productSign * product;
            productSign *= -1; // sign for the next subset
        }

        p[threadID] = myResult;
    }

    template <class C, class S>
    __global__ void xLocalMGlobal(S* mat,
                                  C* x,
                                  C* p,
                                  int nov,
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
                for (int i = 0; i < nov; ++i)
                {
                    myX[i] += mat[j * nov + i];
                }
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

            C product = 1;
            for (int r = 0; r < nov; ++r)
            {
                myX[r] += added * mat[columnChanged * nov + r];
                product *= myX[r];
            }

            myResult += productSign * product;
            productSign *= -1; // sign for the next subset
        }

        p[threadID] = myResult;
    }

    template <class C, class S>
    __global__ void xRegisterMGlobal(S* mat,
                                     C* x,
                                     C* p,
                                     int nov,
                                     long long start,
                                     long long end,
                                     long long chunkSize)
    {
        int threadID = (blockIdx.x * blockDim.x) + threadIdx.x;
        int totalThreadCount = gridDim.x * blockDim.x;

        C myResult = 0;

        #define REG(reg, number) C reg;
            REGISTERS
        #undef REG

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
                #define REG(reg, number) if (number < nov) {reg += mat[j * nov + number];}
                    REGISTERS
                #undef REG
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

            C product = 1;
            #define REG(reg, number) if (number < nov) {reg += added * mat[columnChanged * nov + number]; product *= reg;}
                REGISTERS
            #undef REG

            myResult += productSign * product;
            productSign *= -1; // sign for the next subset
        }

        p[threadID] = myResult;
    }

    template <class C, class S>
    __global__ void xLocalMShared(S* mat,
                                  C* x,
                                  C* p,
                                  int nov,
                                  long long start,
                                  long long end,
                                  long long chunkSize)
    {
        int threadID = (blockIdx.x * blockDim.x) + threadIdx.x;
        int totalThreadCount = gridDim.x * blockDim.x;

        C myResult = 0;

        volatile C myX[X_SIZE];

        extern __shared__ char sharedMemory[];
        S* sharedMat = (S*)sharedMemory;

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
                for (int i = 0; i < nov; ++i)
                {
                    myX[i] += sharedMat[j * nov + i];
                }
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

            C product = 1;
            for (int r = 0; r < nov; ++r)
            {
                myX[r] += added * sharedMat[columnChanged * nov + r];
                product *= myX[r];
            }

            myResult += productSign * product;
            productSign *= -1; // sign for the next subset
        }

        p[threadID] = myResult;
    }

    template <class C, class S>
    __global__ void xRegisterMShared(S* mat,
                                  C* x,
                                  C* p,
                                  int nov,
                                  long long start,
                                  long long end,
                                  long long chunkSize)
    {
        int threadID = (blockIdx.x * blockDim.x) + threadIdx.x;
        int totalThreadCount = gridDim.x * blockDim.x;

        C myResult = 0;

        #define REG(reg, number) C reg;
            REGISTERS
        #undef REG

        extern __shared__ char sharedMemory[];
        S* sharedMat = (S*)sharedMemory;

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
                #define REG(reg, number) if (number < nov) {reg += sharedMat[j * nov + number];}
                    REGISTERS
                #undef REG
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

            C product = 1;
            #define REG(reg, number) if (number < nov) {reg += added * sharedMat[columnChanged * nov + number]; product *= reg;}
                REGISTERS
            #undef REG

            myResult += productSign * product;
            productSign *= -1; // sign for the next subset
        }

        p[threadID] = myResult;
    }

    template <class C, class S>
    __global__ void xSharedMGlobal(S* mat,
                                   C* x,
                                   C* p,
                                   int nov,
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
                for (int i = 0; i < nov; ++i)
                {
                    sharedX[threadsPerBlock * i + localThreadID] += mat[j * nov + i];
                }
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

            C product = 1;
            for (int r = 0; r < nov; ++r)
            {
                int index = threadsPerBlock * r + localThreadID;
                sharedX[index] += added * mat[columnChanged * nov + r];
                product *= sharedX[index];
            }

            myResult += productSign * product;
            productSign *= -1; // sign for the next subset
        }

        p[globalThreadID] = myResult;
    }

    template <class C, class S>
    __global__ void xSharedMShared(S* mat,
                                   C* x,
                                   C* p,
                                   int nov,
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
        C* sharedX = (C*)sharedMemory; // size: nov * threadsPerBlock
        S* sharedMat = (S*)&sharedX[nov * threadsPerBlock]; // size: nov * nov

        if (localThreadID == 0)
        {
            for (int i = 0; i < nov; ++i)
            {
                for (int j  = 0; j < nov; ++j)
                {
                    sharedMat[i * nov + j] = mat[i * nov + j];
                }
            }
        }

        __syncthreads();

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
                for (int i = 0; i < nov; ++i)
                {
                    sharedX[threadsPerBlock * i + localThreadID] += sharedMat[j * nov + i];
                }
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

            C product = 1;
            for (int r = 0; r < nov; ++r)
            {
                int index = threadsPerBlock * r + localThreadID;
                sharedX[index] += added * sharedMat[columnChanged * nov + r];
                product *= sharedX[index];
            }

            myResult += productSign * product;
            productSign *= -1; // sign for the next subset
        }

        p[globalThreadID] = myResult;
    }
}


#endif //SUPERMAN_DENSEKERNELDEFINITIONS_CUH
