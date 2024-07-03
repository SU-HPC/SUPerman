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
    auto permanent = new DecomposePerman<C, S, spNaivePerman<C, S> >(Algorithm::AlgorithmEnds, matrix, *settings);
    Result result = permanent->computePermanentRecursively();
    delete permanent;
    return result;
}

template <typename C, typename S>
Result cpuDPNaivePerman(Matrix<S>* matrix, Settings* settings)
{
    auto permanent = new DecomposePerman<C, S, dpNaivePerman<C, S> >(Algorithm::AlgorithmEnds, matrix, *settings);
    Result result = permanent->computePermanentRecursively();
    delete permanent;
    return result;
}


// GPU
#ifdef GPU_AVAILABLE
#include "GPUKernelWrappers.h"
#endif


#endif //SUPERMAN_ALLEXACTALGORITHMS_H
