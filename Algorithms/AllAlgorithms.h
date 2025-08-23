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

#ifndef SUPERMAN_ALLALGORITHMS_H
#define SUPERMAN_ALLALGORITHMS_H


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
        throw std::runtime_error("The mode you want to calculate the permanent in is unavailable for launch. Terminating...\n");
    }
}


#endif //SUPERMAN_ALLALGORITHMS_H
