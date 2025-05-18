#ifndef SUPERMAN_APPROXIMATESPARSEKERNELDEFINITIONS_CUH
#define SUPERMAN_APPROXIMATESPARSEKERNELDEFINITIONS_CUH

#include "GPUHelpers.cuh"

#define ULL unsigned long long

namespace ApproximateSparseDefinitions
{
    inline void scaleABInit(
                const unsigned& nov, const unsigned& nnz, 
                const unsigned* const __restrict__ rowPtrs, const unsigned* const __restrict__ cols, 
                const unsigned* const __restrict__ colPtrs, const unsigned* const __restrict__ rows, 
                double* const __restrict__ rv, double* const __restrict__ cv, 
                unsigned beta)
    {
        double sum;
        while (beta--) 
        {
            // columns
            for (unsigned j = 0; j < nov; ++j) 
            {
                sum = 0;
                for (unsigned ptr = colPtrs[j]; ptr < colPtrs[j + 1]; ++ptr)
                {
                    sum += rv[rows[ptr]];
                }
                cv[j] = 1 / sum;
            }
            // rows
            for (unsigned i = 0; i < nov; ++i) 
            {
                sum = 0;
                for (unsigned ptr = rowPtrs[i]; ptr < rowPtrs[i + 1]; ++ptr)
                {
                    sum += cv[cols[ptr]];
                }
                rv[i] = 1 / sum;
            }
        }
    }

    __device__ __inline__ bool scaleAB(
                                const unsigned& nov, const unsigned& nnz, 
                                const unsigned* const __restrict__ rowPtrs, const unsigned* const __restrict__ cols, 
                                const unsigned* const __restrict__ colPtrs, const unsigned* const __restrict__ rows, 
                                double* const __restrict__ rv, double* const __restrict__ cv, 
                                const int* const __restrict__ markedRows, const int* const __restrict__ markedCols, 
                                unsigned beta, const unsigned& row) 
    {
        unsigned tid = blockIdx.x * blockDim.x + threadIdx.x;
        unsigned noThreads = blockDim.x * gridDim.x;

        double sum;
        while (beta--) 
        {
            // cols
            for (unsigned j = 0; j < nov; ++j)
            {
                if (markedCols[j * noThreads + tid] > 0)
                {
                    sum = 0;
                    for (unsigned ptr = colPtrs[j]; ptr < colPtrs[j + 1]; ++ptr)
                    {
                        sum += rv[rows[ptr] * noThreads + tid] * (markedRows[rows[ptr] * noThreads + tid] > 0);
                    }
                    if (sum == 0)
                    {
                        return true;
                    }
                    cv[j * noThreads + tid] = 1 / sum;
                }
            }
            // rows
            for (unsigned i = row; i < nov; ++i) 
            {
                if (markedRows[i * noThreads + tid] > 0)
                {
                    sum = 0;
                    for (unsigned ptr = rowPtrs[i]; ptr < rowPtrs[i + 1]; ++ptr)
                    {
                        sum += cv[cols[ptr] * noThreads + tid] * (markedCols[cols[ptr] * noThreads + tid] > 0);
                    }
                    if (sum == 0)
                    {
                        return true;
                    }
                    rv[i * noThreads + tid] = 1 / sum;
                }
            }
        }
        return false;
    }

    __device__ __inline__ bool d1Reduce(
                                        const unsigned& nov,
                                        const unsigned* const __restrict__ rowPtrs, const unsigned* const __restrict__ cols, 
                                        const unsigned* const __restrict__ colPtrs, const unsigned* const __restrict__ rows,
                                        int* const __restrict__ rowElems, int* const __restrict__ colElems, 
                                        unsigned* const __restrict__ stack, 
                                        unsigned col)
    {
        unsigned tid = blockIdx.x * blockDim.x + threadIdx.x;
        unsigned noThreads = blockDim.x * gridDim.x;

        stack[0 * noThreads + tid] = col;
        unsigned stackPtr = 1;
        for (unsigned ii = 0; ii < stackPtr; ++ii) 
        {
            unsigned j = stack[ii * noThreads + tid];
            for (unsigned ptr = colPtrs[j]; ptr < colPtrs[j + 1]; ++ptr) 
            {
                unsigned i = rows[ptr];
                if (rowElems[i * noThreads + tid] < 0)   
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
                    if (colElems[j2 * noThreads + tid] < 0)
                    {
                        continue;
                    }
                    rowElems[i * noThreads + tid] = -1;
                    colElems[j2 * noThreads + tid] = -1;
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
                                    const double* const __restrict__ rvInit, const double* const __restrict__ cvInit,
                                    double* const __restrict__ rv, double* const __restrict__ cv, 
                                    int* const __restrict__ markedRows, int* const __restrict__ markedCols,
                                    double* const __restrict__ result,
                                    unsigned* const __restrict__ stack)
    {
        unsigned nov = *novPtr;
        unsigned nnz = *nnzPtr;

        unsigned tid = blockIdx.x * blockDim.x + threadIdx.x;
        unsigned noThreads = blockDim.x * gridDim.x;

        double approx = 0;

        curandState state;
        curand_init(clock64(), tid, 0, &state);
        
        for (unsigned iter = tid; iter < NO_SAMPLES; iter += noThreads)
        {
            for (unsigned i = 0; i < nov; ++i)
            {
                markedRows[i * noThreads + tid] = rowPtrs[i + 1] - rowPtrs[i];
                markedCols[i * noThreads + tid] = colPtrs[i + 1] - colPtrs[i];
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
                                        markedRows, markedCols, 
                                        BETA, i);
                if (check)
                {
                    permanent = 0;
                    break;
                }
                if (markedRows[i * noThreads + tid] < 0) continue; // already selected row

                double sample = curand_uniform(&state);
                double chosenProb;
                unsigned column;
                double runningCumulative = 0;
                for (unsigned ptr = rowPtrs[i]; ptr < rowPtrs[i + 1]; ++ptr)
                {
                    unsigned j = cols[ptr];
                    if (markedCols[j * noThreads + tid] > 0) // already selected col
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

                permanent *= (1 / chosenProb);
                markedRows[i * noThreads + tid] = -1;
                markedCols[column * noThreads + tid] = -1;

                bool zero = ApproximateSparseDefinitions::d1Reduce(
                                                                        nov, 
                                                                        rowPtrs, cols, 
                                                                        colPtrs, rows, 
                                                                        markedRows, markedCols, 
                                                                        stack, 
                                                                        column) || 
                            ApproximateSparseDefinitions::d1Reduce(
                                                                        nov, 
                                                                        colPtrs, rows, 
                                                                        rowPtrs, cols, 
                                                                        markedCols, markedRows, 
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

        auto warp = cooperative_groups::coalesced_threads();
        for (unsigned offset = 16; offset > 0; offset >>= 1)
        {
            approx += warp.shfl_down(approx, offset);
        }
        if (warp.thread_rank() == 0)
        {
            atomicAdd(result, approx);
        }
    }
}

#endif //SUPERMAN_APPROXIMATESPARSEKERNELDEFINITIONS_CUH
