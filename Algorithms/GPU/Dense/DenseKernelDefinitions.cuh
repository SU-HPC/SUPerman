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

#ifndef SUPERMAN_DENSEKERNELDEFINITIONS_CUH
#define SUPERMAN_DENSEKERNELDEFINITIONS_CUH

#include "GPUHelpers.cuh"
#include "PrecisionHelpers.cuh"


namespace DenseDefinitions
{
    // all matrices are assumed to be stored in the col-major order, meaning their transpose taken in the host code

    template <class C, class S>
    __global__ void xRegisterMSharedKahanMatSpecificCompilation(S* mat,
                                                           C* x,
                                                           C* p,
                                                           int nov,
                                                           long long start,
                                                           long long end,
                                                           long long chunkSize)
    {
        unsigned threadID = (blockIdx.x * blockDim.x) + threadIdx.x;
        unsigned totalThreadCount = gridDim.x * blockDim.x;

        C myResult = 0;
        C myError = 0;

        #define REG(reg, number) C reg;
            SPECIFIC
        #undef REG

        extern __shared__ char sharedMemory[];
        S* sharedMat = (S*)sharedMemory;

        unsigned threadNNZ = ceil(double(NOV * NOV) / blockDim.x);
        for (unsigned i = threadIdx.x * threadNNZ; i < min((threadIdx.x + 1) * threadNNZ, NOV * NOV); ++i)
        {
            sharedMat[i] = mat[i];
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

            kahanAdd<C>(myResult, myError, productSign * product);
            productSign *= -1; // sign for the next subset
        }

        p[threadID] += myResult;
    }

    template <class C, class S>
    __global__ void xRegisterMSharedMatSpecificCompilation(S* mat,
                                     C* x,
                                     C* p,
                                     int nov,
                                     long long start,
                                     long long end,
                                     long long chunkSize)
    {
        unsigned threadID = (blockIdx.x * blockDim.x) + threadIdx.x;
        unsigned totalThreadCount = gridDim.x * blockDim.x;

        C myResult = 0;

        #define REG(reg, number) C reg;
            SPECIFIC
        #undef REG

        extern __shared__ char sharedMemory[];
        S* sharedMat = (S*)sharedMemory;

        unsigned threadNNZ = ceil(double(NOV * NOV) / blockDim.x);
        for (unsigned i = threadIdx.x * threadNNZ; i < min((threadIdx.x + 1) * threadNNZ, NOV * NOV); ++i)
        {
            sharedMat[i] = mat[i];
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

        p[threadID] += myResult;
    }

    template <class C, class S>
    __global__ void xRegisterMSharedKahan(S* mat,
                                     C* x,
                                     C* p,
                                     int nov,
                                     long long start,
                                     long long end,
                                     long long chunkSize)
    {
        unsigned threadID = (blockIdx.x * blockDim.x) + threadIdx.x;
        unsigned totalThreadCount = gridDim.x * blockDim.x;

        C myResult = 0;
        C myError = 0;

        #define REG(reg, number) C reg;
            REGISTERS
        #undef REG

        extern __shared__ char sharedMemory[];
        S* sharedMat = (S*)sharedMemory;

        unsigned threadNNZ = ceil(double(nov * nov) / blockDim.x);
        for (unsigned i = threadIdx.x * threadNNZ; i < min((threadIdx.x + 1) * threadNNZ, nov * nov); ++i)
        {
            sharedMat[i] = mat[i];
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

            kahanAdd<C>(myResult, myError, productSign * product);
            productSign *= -1; // sign for the next subset
        }

        p[threadID] += myResult;
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
        unsigned threadID = (blockIdx.x * blockDim.x) + threadIdx.x;
        unsigned totalThreadCount = gridDim.x * blockDim.x;

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

        p[threadID] += myResult;
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
        unsigned threadID = (blockIdx.x * blockDim.x) + threadIdx.x;
        unsigned totalThreadCount = gridDim.x * blockDim.x;

        C myResult = 0;

        #define REG(reg, number) C reg;
            REGISTERS
        #undef REG

        extern __shared__ char sharedMemory[];
        S* sharedMat = (S*)sharedMemory;

        unsigned threadNNZ = ceil(double(nov * nov) / blockDim.x);
        for (unsigned i = threadIdx.x * threadNNZ; i < min((threadIdx.x + 1) * threadNNZ, nov * nov); ++i)
        {
            sharedMat[i] = mat[i];
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

        p[threadID] += myResult;
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
                    sharedX[blockDim.x * i + threadIdx.x] += mat[j * nov + i];
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
                unsigned index = blockDim.x * r + threadIdx.x;
                sharedX[index] += added * mat[columnChanged * nov + r];
                product *= sharedX[index];
            }

            myResult += productSign * product;
            productSign *= -1; // sign for the next subset
        }

        p[globalThreadID] += myResult;
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
        unsigned globalThreadID = (blockIdx.x * blockDim.x) + threadIdx.x;
        unsigned totalThreadCount = gridDim.x * blockDim.x;

        C myResult = 0;

        extern __shared__ char sharedMemory[];
        C* sharedX = (C*)sharedMemory; // size: nov * threadsPerBlock
        S* sharedMat = (S*)&sharedX[nov * blockDim.x]; // size: nov * nov

        unsigned threadNNZ = ceil(double(nov * nov) / blockDim.x);
        for (unsigned i = threadIdx.x * threadNNZ; i < min((threadIdx.x + 1) * threadNNZ, nov * nov); ++i)
        {
            sharedMat[i] = mat[i];
        }

        __syncthreads();

        for (int i = 0; i < nov; ++i)
        {
            sharedX[blockDim.x * i + threadIdx.x] = x[i];
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
                    sharedX[blockDim.x * i + threadIdx.x] += sharedMat[j * nov + i];
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
                unsigned index = blockDim.x * r + threadIdx.x;
                sharedX[index] += added * sharedMat[columnChanged * nov + r];
                product *= sharedX[index];
            }

            myResult += productSign * product;
            productSign *= -1; // sign for the next subset
        }

        p[globalThreadID] += myResult;
    }
}


#endif //SUPERMAN_DENSEKERNELDEFINITIONS_CUH
