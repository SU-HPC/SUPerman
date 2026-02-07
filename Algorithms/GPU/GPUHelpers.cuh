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

#ifndef SUPERMAN_GPUHELPERS_CUH
#define SUPERMAN_GPUHELPERS_CUH

#include "cuda_runtime.h"
#include "cooperative_groups.h"
#include "cuComplex.h"
#include "curand_kernel.h"
#include <iostream>
#include "omp.h"
#include <algorithm>
#include "Registers.cuh"
using namespace cooperative_groups;

#define X_SIZE 63
#define NO_SAMPLES 100000000
#define ALPHA 1
#define BETA 10
//#define FULL_SCALING
#define INITIAL_BETA 50
#define scaleType float

template <typename C, typename S>
using SparseKernelPointer = void(*)(int*, int*, S*, C*, C*, int, int, long long, long long, long long);

template <typename C, typename S>
using ApproximateSparseKernelPointer = void(*)(
    const unsigned* const __restrict__ /* rowPtrs */,
    const unsigned* const __restrict__ /* cols */,
    const unsigned* const __restrict__ /* colPtrs */,
    const unsigned* const __restrict__ /* rows */,
    const unsigned* const __restrict__ /* nov */,
    const unsigned* const __restrict__ /* nnz */,
    const scaleType* const __restrict__ /* rvInit */,
    const scaleType* const __restrict__ /* cvInit */,
    scaleType* const __restrict__ /* rv */,
    scaleType* const __restrict__ /* cv */,
    int* const __restrict__ /* rowElems */,
    int* const __restrict__ /* colElems */,
    double* const __restrict__ /* result */,
    unsigned* const __restrict__ /* stack */,
    unsigned long long* const __restrict__ /* sampleCounter */
);

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

inline int dpMSharedComplex(int b)
{
    return V * V * sizeof(cuDoubleComplex);
}

#endif //SUPERMAN_GPUHELPERS_CUH
