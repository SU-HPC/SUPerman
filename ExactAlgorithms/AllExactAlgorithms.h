//
// Created by deniz on 4/22/24.
//

#ifndef SUPERMAN_REBORN_ALLEXACTALGORITHMS_H
#define SUPERMAN_REBORN_ALLEXACTALGORITHMS_H


// CPU
#include "ParallelPermanSparse.h"
template <typename C, typename S>
Result cpuSPPerman(Matrix<S>* matrix, Settings* settings)
{
    Permanent<C, S>* permanent = new ParallelPermanSparse<C, S>(matrix, *settings);
    Result result = permanent->computePermanent();
    delete permanent;
    return result;
}


// GPU
#ifdef GPU_AVAILABLE
#include "GPUKernelWrappers.h"
#endif


#endif //SUPERMAN_REBORN_ALLEXACTALGORITHMS_H
