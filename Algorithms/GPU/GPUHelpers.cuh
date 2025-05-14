//
// Created by deniz on 5/25/24.
//

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

#define X_SIZE 63
#define NO_SAMPLES 67108864
#define ALPHA 1
#define BETA 5
#define INITIAL_BETA 50

template <typename C, typename S>
using SparseKernelPointer = void(*)(int*, int*, S*, C*, C*, int, int, long long, long long, long long);

template <typename C, typename S>
using ApproximateSparseKernelPointer = void(*)(unsigned*, unsigned*, unsigned*, unsigned*, unsigned, unsigned, double*, double*, double*, double*, int*, int*, double*, unsigned*);

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

inline void scaleABInit(
					unsigned nov, unsigned nnz, 
					unsigned* rowPtrs, unsigned* cols, 
					unsigned* colPtrs, unsigned* rows, 
					double* rv, double* cv, 
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

__device__ __inline__ void scaleAB(
							unsigned nov, unsigned nnz, 
							unsigned* rowPtrs, unsigned* cols, 
							unsigned* colPtrs, unsigned* rows, 
							double* rv, double* cv, 
							int* markedRows, int* markedCols, 
							unsigned beta, unsigned row) 
{
	unsigned tid = blockIdx.x * blockDim.x + threadIdx.x;
	unsigned noThreads = blockDim.x * gridDim.x;

	double sum;
	while (beta--) 
	{
		// cols
		for (unsigned j = 0; j < nov; ++j)
		{
			sum = 0;
			for (unsigned ptr = colPtrs[j]; ptr < colPtrs[j + 1]; ++ptr)
			{
				sum += rv[rows[ptr] * noThreads + tid] * (markedRows[rows[ptr] * noThreads + tid] >= 0);
			}
			cv[j * noThreads + tid] = 1 / sum;
		}
		// rows
		for (unsigned i = row; i < nov; ++i) 
		{
			sum = 0;
			for (unsigned ptr = rowPtrs[i]; ptr < rowPtrs[i + 1]; ++ptr)
			{
				sum += cv[cols[ptr] * noThreads + tid] * (markedCols[cols[ptr] * noThreads + tid] >= 0);
			}
			rv[i * noThreads + tid] = 1 / sum;
		}
	}
}

__device__ __inline__ bool d1Reduce(
									unsigned nov,
    								unsigned* rowPtrs, unsigned* cols, 
									unsigned* colPtrs, unsigned* rows,
									int* rowElems, int* colElems, 
									unsigned* stack, 
									unsigned col) 
{
	stack[0] = col;
	unsigned stackPtr = 1;
	for (unsigned ii = 0; ii < stackPtr; ++ii) 
	{
		unsigned j = stack[ii];
		for (unsigned ptr = colPtrs[j]; ptr < colPtrs[j + 1]; ++ptr) 
		{
			unsigned i = rows[ptr];
			if (rowElems[i] <= 0)
			{
				continue;
			}
			int k = --rowElems[i];
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
				if (colElems[j2] <= 0)
				{
					continue;
				}
				rowElems[i] = -1;
				colElems[j2] = -1;
				stack[stackPtr++] = j2;
				break;
			}
		}
	}
	return false;
}

#endif //SUPERMAN_GPUHELPERS_CUH
