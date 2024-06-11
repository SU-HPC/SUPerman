//
// Created by deniz on 4/22/24.
//

#ifndef SUPERMAN_REBORN_ALLEXACTALGORITHMS_H
#define SUPERMAN_REBORN_ALLEXACTALGORITHMS_H


// CPU
#include "spNaivePerman.h"
#include "DecomposePerman.h"

template <typename C, typename S>
Result cpuSPNaivePerman(Matrix<S>* matrix, Settings* settings)
{
    auto permanent = new DecomposePerman<C, S, spNaivePerman<C, S> >(matrix, *settings);
    Result result = permanent->computePermanentRecursively();
    delete permanent;
    return result;
}


// GPU
#ifdef GPU_AVAILABLE
#include "GPUKernelWrappers.h"
#endif


#endif //SUPERMAN_REBORN_ALLEXACTALGORITHMS_H
