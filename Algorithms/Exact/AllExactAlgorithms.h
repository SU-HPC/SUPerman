//
// Created by deniz on 4/22/24.
//

#ifndef SUPERMAN_ALLEXACTALGORITHMS_H
#define SUPERMAN_ALLEXACTALGORITHMS_H


// CPU
#include "spNaivePerman.h"
#include "dpNaivePerman.h"
#include "DecomposePerman.h"

template <typename C, typename S>
Result cpuSPNaivePerman(Matrix<S>* matrix, Settings* settings)
{
    auto permanent = new DecomposePerman<C, S, spNaivePerman<C, S> >(matrix, *settings);
    Result result = permanent->computePermanentRecursively();
    delete permanent;
    return result;
}

template <typename C, typename S>
Result cpuDPNaivePerman(Matrix<S>* matrix, Settings* settings)
{
    auto permanent = new DecomposePerman<C, S, dpNaivePerman<C, S> >(matrix, *settings);
    Result result = permanent->computePermanentRecursively();
    delete permanent;
    return result;
}


// GPU
#ifdef GPU_AVAILABLE
#include "GPUKernelWrappers.h"
#endif


// Complex
#include "cpuComputeComplex.h"
#ifdef GPU_AVAILABLE
#include "gpuComputeComplex.cuh"
#endif

template <typename C, typename S>
void complexPerman(Matrix<std::complex<S>>* matrix, Settings* settings)
{
    if (settings->mode == Mode::CPU)
    {
        cpuComputeComplex<C, S>(matrix, settings);
    }
    #ifdef GPU_AVAILABLE
    else if (settings->mode == Mode::SingleGPU)
    {
        gpuComputeComplex(matrix, settings);
    }
    #endif
    else
    {
        throw std::runtime_error("Computation of permanent on complex matrices are supported only on a cpu or on a single gpu.");
    }
}


#endif //SUPERMAN_ALLEXACTALGORITHMS_H
