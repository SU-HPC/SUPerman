//
// Created by deniz on 5/24/24.
//

#ifndef SUPERMAN_REBORN_GPUKERNELWRAPPERS_H
#define SUPERMAN_REBORN_GPUKERNELWRAPPERS_H

#include "Result.h"
#include "Settings.h"
#include "Matrix.h"


// SPARSE KERNEL WRAPPERS START
template <class C, class S>
extern Result gpuSPSingleGPU(Matrix<S>* matrix, Settings* settings);

template <class C, class S>
extern Result gpuSPMultiGPU(Matrix<S>* matrix, Settings* settings);

#ifdef MPI_AVAILABLE
template <class C, class S>
extern Result gpuSPMultiGPUMPI(Matrix<S>* matrix, Settings* settings);
#endif
// SPARSE KERNEL WRAPPERS END


#endif //SUPERMAN_REBORN_GPUKERNELWRAPPERS_H
