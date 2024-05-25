//
// Created by deniz on 5/25/24.
//

#ifndef SUPERMAN_REBORN_GPUHELPERS_CUH
#define SUPERMAN_REBORN_GPUHELPERS_CUH

#include "cuda_runtime.h"
#include <iostream>
#include "omp.h"
#include <algorithm>


static const int COMPUTE_CAPABILITY_TO_WEIGHT[10] =
        {
                1,
                1,
                1,
                1,
                1,
                5,
                40,
                5,
                5,
                5
        };

template <typename T, typename U>
using KernelPointer = void(*)(int*, int*, T*, U*, U*, int, int, long long, long long);

template <typename C, typename S>
using SharedMemoryFunctionPointer = int(*)(int);

static int V;
static int E;

#define gpuErrchk(ans) { gpuAssert((ans), __FILE__, __LINE__); }
inline void gpuAssert(cudaError_t code, const char *file, int line, bool abort=true)
{
    if (code != cudaSuccess)
    {
        fprintf(stderr,"GPUassert: %s %s %d\n", cudaGetErrorString(code), file, line);
        if (abort) exit(code);
    }
}

template <class C, class S>
inline int spNoShared(int b)
{
    return 0;
}

template <class C, class S>
inline int spMShared(int b)
{
    size_t intSize = sizeof(int);
    size_t storageSize = sizeof(S);
    return (V + 1) * intSize + E * (intSize + storageSize);
}

template<class C, class S>
inline int spXShared(int b)
{
    size_t calculationSize = sizeof(C);
    return V * b * calculationSize;
}

template<class C, class S>
inline int spXSharedMShared(int b)
{
    return spXShared<C, S>(b) + spMShared<C, S>(b);
}


#endif //SUPERMAN_REBORN_GPUHELPERS_CUH
