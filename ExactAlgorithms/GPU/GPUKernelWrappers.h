//
// Created by deniz on 5/24/24.
//

#ifndef SUPERMAN_GPUKERNELWRAPPERS_H
#define SUPERMAN_GPUKERNELWRAPPERS_H

#include "Result.h"
#include "Settings.h"
#include "Matrix.h"


// SPARSE KERNEL WRAPPERS
template <class C, class S>
extern Result gpuSPSingleGPU(Matrix<S>* matrix, Settings* settings);

template <class C, class S>
extern Result gpuSPMultiGPU(Matrix<S>* matrix, Settings* settings);

#ifdef MPI_AVAILABLE
template <class C, class S>
extern Result gpuSPMultiGPUMPI(Matrix<S>* matrix, Settings* settings);
#endif
// SPARSE KERNEL WRAPPERS


// DENSE KERNEL WRAPPERS
template <class C, class S>
extern Result gpuDPSingleGPU(Matrix<S>* matrix, Settings* settings);

template <class C, class S>
extern Result gpuDPMultiGPU(Matrix<S>* matrix, Settings* settings);

#ifdef MPI_AVAILABLE
template <class C, class S>
extern Result gpuDPMultiGPUMPI(Matrix<S>* matrix, Settings* settings);
#endif
// DENSE KERNEL WRAPPERS


#endif //SUPERMAN_GPUKERNELWRAPPERS_H
