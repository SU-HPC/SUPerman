//
// Created by deniz on 5/25/24.
//

#ifndef SUPERMAN_GPUHELPERS_CUH
#define SUPERMAN_GPUHELPERS_CUH

#include "cuda_runtime.h"
#include <iostream>
#include "omp.h"
#include <algorithm>
#include "Registers.cuh"

#define X_SIZE 63
#define SPECIFIC REGISTERS50
#define NOV 50


template <typename C, typename S>
using SparseKernelPointer = void(*)(int*, int*, S*, C*, C*, int, int, long long, long long, long long);

template <typename C, typename S>
using DenseKernelPointer = void(*)(S*, C*, C*, int, long long, long long, long long);

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

template <class C, class S>
inline int dpNoShared(int b)
{
    return 0;
}

template <class C, class S>
inline int dpMShared(int b)
{
    size_t storageSize = sizeof(S);
    return V * V * storageSize;
}

template<class C, class S>
inline int dpXShared(int b)
{
    size_t calculationSize = sizeof(C);
    return V * b * calculationSize;
}

template<class C, class S>
inline int dpXSharedMShared(int b)
{
    return dpXShared<C, S>(b) + dpMShared<C, S>(b);
}


#endif //SUPERMAN_GPUHELPERS_CUH
