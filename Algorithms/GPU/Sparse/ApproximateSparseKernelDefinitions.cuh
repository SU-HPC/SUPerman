#ifndef SUPERMAN_APPROXIMATESPARSEKERNELDEFINITIONS_CUH
#define SUPERMAN_APPROXIMATESPARSEKERNELDEFINITIONS_CUH

#include "GPUHelpers.cuh"

namespace ApproximateSparseDefinitions
{
    __global__ void rasmussenScaleAB( 
                                    unsigned* rowPtrs, unsigned* cols, 
                                    unsigned* colPtrs, unsigned* rows, 
                                    unsigned nov, unsigned nnz,
                                    double* rvInit, double* cvInit,
                                    double* rv, double* cv, 
                                    int* markedRows, int* markedCols,
                                    double* result,
                                    unsigned* stack)
    {
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
                if (i != 0 && i % ALPHA == 0)
                {
                    scaleAB(nov, nnz, rowPtrs, cols, colPtrs, rows, rv, cv, markedRows, markedCols, BETA, i);
                }
                if (markedRows[i * noThreads + tid] < 0) continue;
                double cumulative = 0;
                for (unsigned ptr = rowPtrs[i]; ptr < rowPtrs[i + 1]; ++ptr)
                {
                    unsigned j = cols[ptr];
                    if (markedCols[j * noThreads + tid] > 0)
                    {
                        cumulative += rv[i * noThreads + tid] * cv[j * noThreads + tid];
                    }
                }
                if (cumulative == 0) 
                {
                    permanent = 0;
                    break;
                }
                double sample = cumulative * curand_uniform(&state);
                double chosenProb;
                unsigned column;
                double runningCumulative = 0;
                for (unsigned ptr = rowPtrs[i]; ptr < rowPtrs[i + 1]; ++ptr)
                {
                    unsigned j = cols[ptr];
                    if (markedCols[j * noThreads + tid] > 0)
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

                permanent *= (cumulative / chosenProb);
                markedRows[i * noThreads + tid] = -1;
                markedCols[column * noThreads + tid] = -1;

                bool normal = d1Reduce(nov, rowPtrs, cols, colPtrs, rows, markedRows, markedCols, stack, column);
                bool transpose = d1Reduce(nov, colPtrs, rows, rowPtrs, cols, markedCols, markedRows, stack, i);

                if (normal || transpose)
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
