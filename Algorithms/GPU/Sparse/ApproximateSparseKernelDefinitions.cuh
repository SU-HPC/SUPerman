/*
 * This file is part of the SUperman repository: https://github.com/SU-HPC/SUPerman
 * Author: Deniz Elbek
 *
 * Please see the papers:
 * 
 * @article{Elbek2026SUperman,
 *   title   = {SUperman: Efficient permanent computation on GPUs},
 *   author  = {Elbek, Deniz and Ta{\c{s}}yaran, Fatih and U{\c{c}}ar, Bora and Kaya, Kamer},
 *   journal = {Computer Physics Communications},
 *   volume  = {321},
 *   pages   = {110027},
 *   year    = {2026},
 *   doi     = {10.1016/j.cpc.2026.110027}
 *
 * @article{Elbek2025CodeGeneration,
 *   title   = {Fully-Automated Code Generation for Efficient Computation of Sparse Matrix Permanents on GPUs},
 *   author  = {Elbek, Deniz and Kaya, Kamer},
 *   journal = {arXiv preprint arXiv:2501.15126},
 *   year    = {2025},
 *   doi     = {10.48550/arXiv.2501.15126},
 * }
 */

#ifndef SUPERMAN_APPROXIMATESPARSEKERNELDEFINITIONS_CUH
#define SUPERMAN_APPROXIMATESPARSEKERNELDEFINITIONS_CUH

#include "GPUHelpers.cuh"

namespace ApproximateSparseDefinitions
{
    inline void scaleABInit(
                const unsigned& nov, const unsigned& nnz, 
                const unsigned* const __restrict__ rowPtrs, const unsigned* const __restrict__ cols, 
                const unsigned* const __restrict__ colPtrs, const unsigned* const __restrict__ rows, 
                scaleType* const __restrict__ rv, scaleType* const __restrict__ cv)
    {
        scaleType sum;
        for (unsigned iter = 0; iter < INITIAL_BETA; ++iter)
        {
            // columns
            for (unsigned j = 0; j < nov; ++j) 
            {
                sum = 0;
                for (unsigned ptr = colPtrs[j]; ptr < colPtrs[j + 1]; ++ptr)
                {
                    sum += rv[rows[ptr]];
                }
                cv[j] = static_cast<scaleType>(1) / sum;
            }
            // rows
            for (unsigned i = 0; i < nov; ++i) 
            {
                sum = 0;
                for (unsigned ptr = rowPtrs[i]; ptr < rowPtrs[i + 1]; ++ptr)
                {
                    sum += cv[cols[ptr]];
                }
                rv[i] = static_cast<scaleType>(1) / sum;
            }
        }
    }

    __device__ __inline__ bool scaleAB(
                                const unsigned& nov, const unsigned& nnz, 
                                const unsigned* const __restrict__ rowPtrs, const unsigned* const __restrict__ cols, 
                                const unsigned* const __restrict__ colPtrs, const unsigned* const __restrict__ rows, 
                                scaleType* const __restrict__ rv, scaleType* const __restrict__ cv,
                                const unsigned& row) 
    {
        unsigned tid = blockIdx.x * blockDim.x + threadIdx.x;
        unsigned noThreads = gridDim.x * blockDim.x;
        
        scaleType sum;
        #pragma unroll
        for (unsigned iter = 0; iter < BETA; ++iter)
        {
            // cols
            #ifdef FULL_SCALING
            for (unsigned j = 0; j < nov; ++j)
            {
            #else
            for (unsigned ptr = rowPtrs[row]; ptr < rowPtrs[row + 1]; ++ptr)
            {
                unsigned j = cols[ptr];
            #endif
                if (cv[j * noThreads + tid] != static_cast<scaleType>(0))
                {
                    sum = 0;
                    for (unsigned ptr = colPtrs[j]; ptr < colPtrs[j + 1]; ++ptr)
                    {
                        sum += rv[rows[ptr] * noThreads + tid];
                    }
                    if (sum == static_cast<scaleType>(0))
                    {
                        return true;
                    }
                    cv[j * noThreads + tid] = static_cast<scaleType>(1) / sum;
                }
            }
            // rows
            #ifdef FULL_SCALING
            for (unsigned i = row; i < nov; ++i) 
            {
            #else
            {
                unsigned i = row;
            #endif
                if (rv[i * noThreads + tid] != static_cast<scaleType>(0))
                {
                    sum = 0;
                    for (unsigned ptr = rowPtrs[i]; ptr < rowPtrs[i + 1]; ++ptr)
                    {
                        sum += cv[cols[ptr] * noThreads + tid];
                    }
                    if (sum == static_cast<scaleType>(0))
                    {
                        return true;
                    }
                    rv[i * noThreads + tid] = static_cast<scaleType>(1) / sum;
                }
            }
        }
        return false;
    }

    __device__ __inline__ bool d1Reduce(
                                        const unsigned& nov,
                                        const unsigned* const __restrict__ rowPtrs, const unsigned* const __restrict__ cols, 
                                        const unsigned* const __restrict__ colPtrs, const unsigned* const __restrict__ rows,
                                        scaleType* const __restrict__ rv, scaleType* const __restrict__ cv, 
                                        int* const __restrict__ rowElems, int* const __restrict__ colElems, 
                                        unsigned* const __restrict__ stack, 
                                        const unsigned& col)
    {
        unsigned tid = blockIdx.x * blockDim.x + threadIdx.x;
        unsigned noThreads = gridDim.x * blockDim.x;

        stack[0 * noThreads + tid] = col;
        unsigned stackPtr = 1;
        for (unsigned ii = 0; ii < stackPtr; ++ii) 
        {
            unsigned j = stack[ii * noThreads + tid];
            for (unsigned ptr = colPtrs[j]; ptr < colPtrs[j + 1]; ++ptr) 
            {
                unsigned i = rows[ptr];
                if (rv[i * noThreads + tid] == 0)   
                {
                    continue;
                }
                int k = --rowElems[i * noThreads + tid];
                if (k == 0)
                {
                    return true;
                }
                if (k != 1)
                {   
                    continue;
                }
                for (unsigned ptr = rowPtrs[i]; ptr < rowPtrs[i + 1]; ++ptr) 
                {
                    unsigned j2 = cols[ptr];
                    if (cv[j2 * noThreads + tid] == 0)
                    {
                        continue;
                    }
                    rv[i * noThreads + tid] = 0;
                    cv[j2 * noThreads + tid] = 0;
                    stack[stackPtr++ * noThreads + tid] = j2;
                    break;
                }
            }
        }
        return false;
    }

    __global__ void rasmussenScaleAB( 
                                    const unsigned* const __restrict__ rowPtrs, const unsigned* const __restrict__ cols, 
                                    const unsigned* const __restrict__ colPtrs, const unsigned* const __restrict__ rows, 
                                    const unsigned* const __restrict__ novPtr, const unsigned* const __restrict__ nnzPtr,
                                    const scaleType* const __restrict__ rvInit, const scaleType* const __restrict__ cvInit,
                                    scaleType* const __restrict__ rv, scaleType* const __restrict__ cv, 
                                    int* const __restrict__ rowElems, int* const __restrict__ colElems,
                                    double* const __restrict__ result,
                                    unsigned* const __restrict__ stack,
                                    unsigned long long* const __restrict__ sampleCounter)
    {
        unsigned tid = blockIdx.x * blockDim.x + threadIdx.x;
        unsigned noThreads = gridDim.x * blockDim.x;

        unsigned nov = *novPtr;
        unsigned nnz = *nnzPtr;

        double approx = 0;

        curandState state;
        curand_init(clock64(), tid, 0, &state);
        
        unsigned long long noIter = (NO_SAMPLES + noThreads * 10 - 1) / (noThreads * 10);
        while (*sampleCounter < NO_SAMPLES)
        {
            atomicAdd(sampleCounter, noIter);
            for (unsigned long long iter = 0; iter < noIter; ++iter)
            {
                for (unsigned i = 0; i < nov; ++i)
                {
                    rowElems[i * noThreads + tid] = rowPtrs[i + 1] - rowPtrs[i];
                    colElems[i * noThreads + tid] = colPtrs[i + 1] - colPtrs[i];
                    rv[i * noThreads + tid] = rvInit[i];
                    cv[i * noThreads + tid] = cvInit[i];
                }
                double permanent = 1;
                for (unsigned i = 0; i < nov; ++i)
                {
                    bool check = ApproximateSparseDefinitions::scaleAB(
                                            nov, nnz,
                                            rowPtrs, cols,
                                            colPtrs, rows,
                                            rv, cv,
                                            i);
                    if (check)
                    {
                        permanent = 0;
                        break;
                    }
                    if (rv[i * noThreads + tid] == static_cast<scaleType>(0)) continue; // already selected row

                    scaleType sample = static_cast<scaleType>(curand_uniform(&state));
                    scaleType chosenProb;
                    unsigned column;
                    scaleType runningCumulative = 0;
                    for (unsigned ptr = rowPtrs[i]; ptr < rowPtrs[i + 1]; ++ptr)
                    {
                        unsigned j = cols[ptr];
                        if (cv[j * noThreads + tid] != static_cast<scaleType>(0)) // already selected col
                        {
                            chosenProb = rv[i * noThreads + tid] * cv[j * noThreads + tid];
                            runningCumulative += chosenProb;
                            if (runningCumulative > sample)
                            {
                                column = j;
                                break;
                            }
                        }
                    }

                    permanent *= double(static_cast<scaleType>(1) / chosenProb);
                    rv[i * noThreads + tid] = 0;
                    cv[column * noThreads + tid] = 0;

                    bool zero = ApproximateSparseDefinitions::d1Reduce(
                                                                            nov, 
                                                                            rowPtrs, cols, 
                                                                            colPtrs, rows, 
                                                                            rv, cv, 
                                                                            rowElems, colElems, 
                                                                            stack, 
                                                                            column) || 
                                ApproximateSparseDefinitions::d1Reduce(
                                                                            nov, 
                                                                            colPtrs, rows, 
                                                                            rowPtrs, cols, 
                                                                            cv, rv, 
                                                                            colElems, rowElems, 
                                                                            stack, 
                                                                            i);
                    if (zero)
                    {
                        permanent = 0;
                        break;
                    }
                }
                approx += permanent;
            }
        }

        /*
        auto warp = cooperative_groups::coalesced_threads();
        for (unsigned offset = 16; offset > 0; offset >>= 1)
        {
            approx += warp.shfl_down(approx, offset);
        }
        if (warp.thread_rank() == 0)
        {
            atomicAdd(result, approx);
        }
        */

        atomicAdd(result, approx);
    }
}

#endif //SUPERMAN_APPROXIMATESPARSEKERNELDEFINITIONS_CUH
