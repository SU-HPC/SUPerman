//
// Created by deniz on 4/22/24.
//

#ifndef SUPERMAN_REBORN_SPARSEKERNELDEFINITIONS_CUH
#define SUPERMAN_REBORN_SPARSEKERNELDEFINITIONS_CUH

#include "GPUHelpers.cuh"


namespace Definitions
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
                                  long long end)
    {
        int threadID = (blockIdx.x * blockDim.x) + threadIdx.x;
        int totalThreadCount = gridDim.x * blockDim.x;

        C myResult = 0;

        C myX[40]; // matrices of size bigger than 40x40, DO NOT RUN THIS KERNEL
        for (int i = 0; i < nov; ++i)
        {
            myX[i] = x[i];
        }

        long long chunkSize = (end - start) / totalThreadCount + 1;
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

        C product = 1.0;
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

        int productSign = 1;
        // are starting with a negative product sign?
        if(myStart & 1LL)
        {
            productSign = -1;
        }

        for (long long i = myStart; i < myEnd; ++i)
        {
            long long grayDifference = (i ^ (i >> 1)) ^ gray;
            int columnChanged = __ffsll(grayDifference) - 1; // column no that was added or removed
            gray ^= (1LL << columnChanged);

            // is column removed or added
            C added = ((1LL << columnChanged) & gray) ? 1 : -1;

            for (int j = cptrs[columnChanged]; j < cptrs[columnChanged + 1]; ++j)
            {
                int rowNeigbour = rows[j];
                C xValue = myX[rowNeigbour];
                S value = cvals[j];
                if (xValue == 0)
                {
                    --zeroNumber;
                    xValue += added * value;
                    product *= xValue;
                }
                else
                {
                    product /= xValue;
                    xValue += added * value;
                    if (xValue == 0)
                    {
                        ++zeroNumber;
                    }
                    else
                    {
                        product *= xValue;
                    }
                }
                myX[rowNeigbour] = xValue;
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
                                  long long end)
    {
        int threadID = (blockIdx.x * blockDim.x) + threadIdx.x;
        int totalThreadCount = gridDim.x * blockDim.x;

        C myResult = 0;

        extern __shared__ double sharedMemory[];
        int* sharedCPtrs = (int*)&sharedMemory; // size: nov + 1
        int* sharedRows = (int*)&sharedCPtrs[nov + 1];  // size: nnz
        S* sharedCVals = (S*)&sharedRows[nnz]; // size: nnz

        C myX[40]; // matrices of size bigger than 40x40, DO NOT RUN THIS KERNEL

        for (int i = 0; i < nnz; ++i)
        {
            sharedCVals[i] = cvals[i];
        }

        __syncthreads();

        long long chunkSize = (end - start) / totalThreadCount + 1;
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

        C product = 1.0;
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

        int productSign = 1;
        // are starting with a negative product sign?
        if(myStart & 1LL)
        {
            productSign = -1;
        }

        for (long long i = myStart; i < myEnd; ++i)
        {
            long long grayDifference = (i ^ (i >> 1)) ^ gray;
            int columnChanged = __ffsll(grayDifference) - 1; // column no that was added or removed
            gray ^= (1LL << columnChanged);

            // is column removed or added
            C added = ((1LL << columnChanged) & gray) ? 1 : -1;

            for (int j = cptrs[columnChanged]; j < cptrs[columnChanged + 1]; ++j)
            {
                int rowNeigbour = rows[j];
                C xValue = myX[rowNeigbour];
                S value = cvals[j];
                if (xValue == 0)
                {
                    --zeroNumber;
                    xValue += added * value;
                    product *= xValue;
                }
                else
                {
                    product /= xValue;
                    xValue += added * value;
                    if (xValue == 0)
                    {
                        ++zeroNumber;
                    }
                    else
                    {
                        product *= xValue;
                    }
                }
                myX[rowNeigbour] = xValue;
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
                                   long long end)
{
        int globalThreadID = (blockIdx.x * blockDim.x) + threadIdx.x;
        int localThreadID = threadIdx.x;
        int totalThreadCount = gridDim.x * blockDim.x;
        int threadsPerBlock = blockDim.x;

        C myResult = 0;

        extern __shared__ double sharedMemory[];
        C* myX = (C*)sharedMemory;

        // note that the x vectors are stored in the shared memory
        // in a structure of arrays pattern for a coalesced access
        for (int i = 0; i < nov; ++i)
        {
            myX[threadsPerBlock * i + localThreadID] = x[i];
        }

        long long chunkSize = (end - start) / totalThreadCount + 1;
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
                    myX[threadsPerBlock * rows[i] + localThreadID] += cvals[i];
                }
            }
        }

        C product = 1.0;
        int zeroNumber = 0;
        // product from the previous subset
        for (int i = 0; i < nov; ++i)
        {
            int index = threadsPerBlock * i + localThreadID;
            if (myX[index] == 0)
            {
                ++zeroNumber;
            }
            else
            {
                product *= myX[index];
            }
        }

        int productSign = 1;
        // are starting with a negative product sign?
        if(myStart & 1LL)
        {
            productSign = -1;
        }

        for (long long i = myStart; i < myEnd; ++i)
        {
            long long grayDifference = (i ^ (i >> 1)) ^ gray;
            int columnChanged = __ffsll(grayDifference) - 1; // column no that was added or removed
            gray ^= (1LL << columnChanged);

            // is column removed or added
            C added = ((1LL << columnChanged) & gray) ? 1 : -1;

            for (int j = cptrs[columnChanged]; j < cptrs[columnChanged + 1]; ++j)
            {
                int rowNeigbour = rows[j];
                int index = threadsPerBlock * rowNeigbour + localThreadID;
                C xValue = myX[index];
                S value = cvals[j];
                if (xValue == 0)
                {
                    --zeroNumber;
                    xValue += added * value;
                    product *= xValue;
                }
                else
                {
                    product /= xValue;
                    xValue += added * value;
                    if (xValue == 0)
                    {
                        ++zeroNumber;
                    }
                    else
                    {
                        product *= xValue;
                    }
                }
                myX[index] = xValue;
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
                                   long long end)
   {

       int globalThreadID = (blockIdx.x * blockDim.x) + threadIdx.x;
       int localThreadID = threadIdx.x;
       int totalThreadCount = gridDim.x * blockDim.x;
       int threadsPerBlock = blockDim.x;

       C myResult = 0;

       extern __shared__ double sharedMemory[];

       C* myX = (C*)sharedMemory; // size: nov * threadsPerBlock
       int* sharedCPtrs = (int*)&myX[nov * threadsPerBlock]; // size: nov + 1
       int* sharedRows = (int*)&sharedCPtrs[nov + 1];  // size: nnz
       S* sharedCVals = (S*)&sharedRows[nnz]; // size: nnz

       if (localThreadID == 0)
       {
           for (int i = 0; i < nov; ++i)
           {
               myX[threadsPerBlock * i + localThreadID] = x[i];
               sharedCPtrs[i] = cptrs[i];
           }
           sharedCPtrs[nov] = cptrs[nov];

           for (int i = 0; i < nnz; ++i)
           {
               sharedRows[i] = rows[i];
               sharedCVals[i] = cvals[i];
           }
       }
       else
       {
           for (int i = 0; i < nov; ++i)
           {
               myX[threadsPerBlock * i + localThreadID] = x[i];
           }
       }

        __syncthreads();

       long long chunkSize = (end - start) / totalThreadCount + 1;
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
                   myX[threadsPerBlock * rows[i] + localThreadID] += sharedCVals[i];
               }
           }
       }

       C product = 1.0;
       int zeroNumber = 0;
       // product from the previous subset
       for (int i = 0; i < nov; ++i)
       {
           int index = threadsPerBlock * i + localThreadID;
           if (myX[index] == 0)
           {
               ++zeroNumber;
           }
           else
           {
               product *= myX[index];
           }
       }

       int productSign = 1;
       // are starting with a negative product sign?
       if(myStart & 1LL)
       {
           productSign = -1;
       }

       for (long long i = myStart; i < myEnd; ++i)
       {
           long long grayDifference = (i ^ (i >> 1)) ^ gray;
           int columnChanged = __ffsll(grayDifference) - 1; // column no that was added or removed
           gray ^= (1LL << columnChanged);

           // is column removed or added
           C added = ((1LL << columnChanged) & gray) ? 1 : -1;

           for (int j = sharedCPtrs[columnChanged]; j < sharedCPtrs[columnChanged + 1]; ++j)
           {
               int rowNeigbour = sharedRows[j];
               int index = threadsPerBlock * rowNeigbour + localThreadID;
               C xValue = myX[index];
               S value = sharedCVals[j];
               if (xValue == 0)
               {
                   --zeroNumber;
                   xValue += added * value;
                   product *= xValue;
               }
               else
               {
                   product /= xValue;
                   xValue += added * value;
                   if (xValue == 0)
                   {
                       ++zeroNumber;
                   }
                   else
                   {
                       product *= xValue;
                   }
               }
               myX[index] = xValue;
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


#endif //SUPERMAN_REBORN_SPARSEKERNELDEFINITIONS_CUH
