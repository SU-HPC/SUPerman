//
// Created by deniz on 5/24/24.
//

#include "Permanent.h"
#include "DecomposePerman.h"
#include "Result.h"
#include "Settings.h"
#include "Matrix.h"
#include <stdexcept>
#include "SparseMatrix.h"

#include "GPUKernelWrappers.h"
#include "SparseKernelDefinitions.cuh"
#include "spSingleGPU.cuh"
#include "spMultiGPU.cuh"
#ifdef MPI
#include "spMultiGPUMPI.cuh"
#endif


template <typename C, typename S>
extern Result gpuSPSingleGPU(Matrix<S>* matrix, Settings* settings)
{
    Result result;

    Algorithm selectedAlgorithm = settings->algorithm;
    if (selectedAlgorithm == Algorithm::SPXLOCALMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, spSingleGPU<C, S, &Definitions::xLocalMShared, spMShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::SPXLOCALMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, spSingleGPU<C, S, &Definitions::xLocalMGlobal, spNoShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else
    {
        throw std::runtime_error("Algorithm you have selected is not included in the available GPU algorithms list.");
    }

    return result;
}

template <typename C, typename S>
extern Result gpuSPMultiGPU(Matrix<S>* matrix, Settings* settings)
{
    Result result;

    Algorithm selectedAlgorithm = settings->algorithm;
    if (selectedAlgorithm == Algorithm::SPXLOCALMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, spMultiGPU<C, S, &Definitions::xLocalMShared, spMShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::SPXLOCALMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, spMultiGPU<C, S, &Definitions::xLocalMGlobal, spNoShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else
    {
        throw std::runtime_error("Algorithm you have selected is not included in the available GPU algorithms list.");
    }

    return result;
}

#ifdef MPI
template <typename C, typename S>
extern Result gpuSPMultiGPUMPI(Matrix<S>* matrix, Settings* settings)
{
    Permanent<C, S>* permanent;

    Algorithm selectedAlgorithm = settings->algorithm;
    if (selectedAlgorithm == Algorithm::SPXLOCALMSHARED)
    {
        permanent = new spMultiGPUMPI<C, S, &Definitions::xLocalMShared, spMShared<C, S> >(matrix, *settings);
    }
        else if (selectedAlgorithm == Algorithm::SPXLOCALMGLOBAL)
    {
        permanent = new spMultiGPUMPI<C, S, &Definitions::xLocalMGlobal, spNoShared<C, S> >(matrix, *settings);
    }
    else
    {
        throw std::runtime_error("Algorithm you have selected is not included in the available GPU algorithms list.");
    }

Result result = permanent->computePermanent();
    delete permanent;
    return result;
}
#endif


// For compilation
template extern Result gpuSPSingleGPU<double, float>(Matrix<float>* matrix, Settings* settings);
template extern Result gpuSPMultiGPU<double, float>(Matrix<float>* matrix, Settings* settings);
#ifdef MPI
template extern Result gpuSPMultiGPUMPI<double, float>(Matrix<float>* matrix, Settings* settings);
#endif
