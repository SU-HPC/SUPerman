/*
 * This file is part of the SUperman repository: https://github.com/SU-HPC/SUPerman
 * Author(s): Deniz Elbek, Fatih Taşyaran, Bora Uçar, and Kamer Kaya.
 *
 * Please see the papers:
 * 
 * @article{Elbek2025SUperman,
 *   title   = {SUperman: Efficient Permanent Computation on GPUs},
 *   author  = {Elbek, Deniz and Taşyaran, Fatih and Uçar, Bora and Kaya, Kamer},
 *   journal = {arXiv preprint arXiv:2502.16577},
 *   year    = {2025},
 *   doi     = {10.48550/arXiv.2502.16577},
 *   url     = {https://arxiv.org/abs/2502.16577}
 * }
 *
 * @article{Elbek2025FullyAutomated,
 *   title   = {Fully-Automated Code Generation for Efficient Computation of Sparse Matrix Permanents on GPUs},
 *   author  = {Elbek, Deniz and Kaya, Kamer},
 *   journal = {arXiv preprint arXiv:2501.15126},
 *   year    = {2025},
 *   doi     = {10.48550/arXiv.2501.15126},
 *   url     = {https://arxiv.org/abs/2501.15126}
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
