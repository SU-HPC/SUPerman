//
// Created by deniz on 5/24/24.
//

#include "GPUKernelWrappers.h"

// COMMON
#include "Permanent.h"
#include "DecomposePerman.h"
#include "Result.h"
#include "Settings.h"
#include "Matrix.h"
#include <stdexcept>
#include "SparseMatrix.h"

// SP
#include "SparseKernelDefinitions.cuh"
#include "spSingleGPU.cuh"
#include "spMultiGPU.cuh"

// DP
#include "DenseKernelDefinitions.cuh"
#include "dpSingleGPU.cuh"
#include "dpMultiGPU.cuh"

// MPI
#ifdef MPI
#include "spMultiGPUMPI.cuh"
#include "dpMultiGPUMPI.cuh"
#endif


// SPARSE WRAPPERS
template <typename C, typename S>
extern Result gpuSPSingleGPU(Matrix<S>* matrix, Settings* settings)
{
    Result result;

    Algorithm selectedAlgorithm = settings->algorithm;
    if (selectedAlgorithm == Algorithm::SPXLOCALMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, spSingleGPU<C, S, &SparseDefinitions::xLocalMShared, spMShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::SPXLOCALMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, spSingleGPU<C, S, &SparseDefinitions::xLocalMGlobal, spNoShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::SPXSHAREDMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, spSingleGPU<C, S, &SparseDefinitions::xSharedMGlobal, spXShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::SPXSHAREDMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, spSingleGPU<C, S, &SparseDefinitions::xSharedMShared, spXSharedMShared<C, S> > >(matrix, *settings);
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
        auto permanent = new DecomposePerman<C, S, spMultiGPU<C, S, &SparseDefinitions::xLocalMShared, spMShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::SPXLOCALMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, spMultiGPU<C, S, &SparseDefinitions::xLocalMGlobal, spNoShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::SPXSHAREDMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, spMultiGPU<C, S, &SparseDefinitions::xSharedMGlobal, spXShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::SPXSHAREDMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, spMultiGPU<C, S, &SparseDefinitions::xSharedMShared, spXSharedMShared<C, S> > >(matrix, *settings);
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
        permanent = new spMultiGPUMPI<C, S, &SparseDefinitions::xLocalMShared, spMShared<C, S> >(matrix, *settings);
    }
    else if (selectedAlgorithm == Algorithm::SPXLOCALMGLOBAL)
    {
        permanent = new spMultiGPUMPI<C, S, &SparseDefinitions::xLocalMGlobal, spNoShared<C, S> >(matrix, *settings);
    }
    else if (selectedAlgorithm == Algorithm::SPXSHAREDMGLOBAL)
    {
        permanent = new spMultiGPUMPI<C, S, &SparseDefinitions::xSharedMGlobal, spXShared<C, S> >(matrix, *settings);
    }
    else if (selectedAlgorithm == Algorithm::SPXSHAREDMSHARED)
    {
        permanent = new spMultiGPUMPI<C, S, &SparseDefinitions::xSharedMShared, spXSharedMShared<C, S> >(matrix, *settings);
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
// SPARSE WRAPPERS


// DENSE WRAPPERS
template <typename C, typename S>
extern Result gpuDPSingleGPU(Matrix<S>* matrix, Settings* settings)
{
    Result result;

    Algorithm selectedAlgorithm = settings->algorithm;
    if (selectedAlgorithm == Algorithm::DPXLOCALMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, dpSingleGPU<C, S, &DenseDefinitions::xLocalMShared, dpMShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::DPXLOCALMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, dpSingleGPU<C, S, &DenseDefinitions::xLocalMGlobal, dpNoShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::DPXSHAREDMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, dpSingleGPU<C, S, &DenseDefinitions::xSharedMGlobal, dpXShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::DPXSHAREDMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, dpSingleGPU<C, S, &DenseDefinitions::xSharedMShared, dpXSharedMShared<C, S> > >(matrix, *settings);
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
extern Result gpuDPMultiGPU(Matrix<S>* matrix, Settings* settings)
{
    Result result;

    Algorithm selectedAlgorithm = settings->algorithm;
    if (selectedAlgorithm == Algorithm::DPXLOCALMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, dpMultiGPU<C, S, &DenseDefinitions::xLocalMShared, dpMShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::DPXLOCALMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, dpMultiGPU<C, S, &DenseDefinitions::xLocalMGlobal, dpNoShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::DPXSHAREDMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, dpMultiGPU<C, S, &DenseDefinitions::xSharedMGlobal, dpXShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::DPXSHAREDMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, dpMultiGPU<C, S, &DenseDefinitions::xSharedMShared, dpXSharedMShared<C, S> > >(matrix, *settings);
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
extern Result gpuDPMultiGPUMPI(Matrix<S>* matrix, Settings* settings)
{
    Permanent<C, S>* permanent;

    Algorithm selectedAlgorithm = settings->algorithm;
    if (selectedAlgorithm == Algorithm::DPXLOCALMSHARED)
    {
        permanent = new dpMultiGPUMPI<C, S, &DenseDefinitions::xLocalMShared, dpMShared<C, S> >(matrix, *settings);
    }
    else if (selectedAlgorithm == Algorithm::DPXLOCALMGLOBAL)
    {
        permanent = new dpMultiGPUMPI<C, S, &DenseDefinitions::xLocalMGlobal, dpNoShared<C, S> >(matrix, *settings);
    }
    else if (selectedAlgorithm == Algorithm::DPXSHAREDMGLOBAL)
    {
        permanent = new dpMultiGPUMPI<C, S, &DenseDefinitions::xSharedMGlobal, dpXShared<C, S> >(matrix, *settings);
    }
    else if (selectedAlgorithm == Algorithm::DPXSHAREDMSHARED)
    {
        permanent = new dpMultiGPUMPI<C, S, &DenseDefinitions::xSharedMShared, dpXSharedMShared<C, S> >(matrix, *settings);
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
// DENSE WRAPPERS


// FOR COMPILATION -SPARSE-
template extern Result gpuSPSingleGPU<double, float>(Matrix<float>* matrix, Settings* settings);
template extern Result gpuSPMultiGPU<double, float>(Matrix<float>* matrix, Settings* settings);
#ifdef MPI
template extern Result gpuSPMultiGPUMPI<double, float>(Matrix<float>* matrix, Settings* settings);
#endif
// FOR COMPILATION -SPARSE-


// FOR COMPILATION -DENSE-
template extern Result gpuDPSingleGPU<double, float>(Matrix<float>* matrix, Settings* settings);
template extern Result gpuDPMultiGPU<double, float>(Matrix<float>* matrix, Settings* settings);
#ifdef MPI
template extern Result gpuDPMultiGPUMPI<double, float>(Matrix<float>* matrix, Settings* settings);
#endif
// FOR COMPILATION -DENSE-
