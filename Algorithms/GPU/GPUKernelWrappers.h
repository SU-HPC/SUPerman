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
