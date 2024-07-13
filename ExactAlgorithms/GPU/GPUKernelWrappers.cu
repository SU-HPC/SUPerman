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
#include "cuda_runtime.h"

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
    if (selectedAlgorithm == Algorithm::XLOCALMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, spSingleGPU<C, S, &SparseDefinitions::xLocalMShared, spMShared<C, S> > >(Algorithm::XLOCALMSHARED, matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XLOCALMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, spSingleGPU<C, S, &SparseDefinitions::xLocalMGlobal, spNoShared<C, S> > >(Algorithm::XLOCALMGLOBAL, matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XSHAREDMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, spSingleGPU<C, S, &SparseDefinitions::xSharedMGlobal, spXShared<C, S> > >(Algorithm::XSHAREDMGLOBAL, matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XSHAREDMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, spSingleGPU<C, S, &SparseDefinitions::xSharedMShared, spXSharedMShared<C, S> > >(Algorithm::XSHAREDMSHARED, matrix, *settings);
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
    if (selectedAlgorithm == Algorithm::XLOCALMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, spMultiGPU<C, S, &SparseDefinitions::xLocalMShared, spMShared<C, S> > >(Algorithm::XLOCALMSHARED, matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XLOCALMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, spMultiGPU<C, S, &SparseDefinitions::xLocalMGlobal, spNoShared<C, S> > >(Algorithm::XLOCALMGLOBAL, matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XSHAREDMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, spMultiGPU<C, S, &SparseDefinitions::xSharedMGlobal, spXShared<C, S> > >(Algorithm::XSHAREDMGLOBAL, matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XSHAREDMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, spMultiGPU<C, S, &SparseDefinitions::xSharedMShared, spXSharedMShared<C, S> > >(Algorithm::XSHAREDMSHARED, matrix, *settings);
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
    if (selectedAlgorithm == Algorithm::XLOCALMSHARED)
    {
        permanent = new spMultiGPUMPI<C, S, &SparseDefinitions::xLocalMShared, spMShared<C, S> >(Algorithm::XLOCALMSHARED, matrix, *settings);
    }
    else if (selectedAlgorithm == Algorithm::XLOCALMGLOBAL)
    {
        permanent = new spMultiGPUMPI<C, S, &SparseDefinitions::xLocalMGlobal, spNoShared<C, S> >(Algorithm::XLOCALMGLOBAL, matrix, *settings);
    }
    else if (selectedAlgorithm == Algorithm::XSHAREDMGLOBAL)
    {
        permanent = new spMultiGPUMPI<C, S, &SparseDefinitions::xSharedMGlobal, spXShared<C, S> >(Algorithm::XSHAREDMGLOBAL, matrix, *settings);
    }
    else if (selectedAlgorithm == Algorithm::XSHAREDMSHARED)
    {
        permanent = new spMultiGPUMPI<C, S, &SparseDefinitions::xSharedMShared, spXSharedMShared<C, S> >(Algorithm::XSHAREDMSHARED, matrix, *settings);
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
    if (selectedAlgorithm == Algorithm::XLOCALMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, dpSingleGPU<C, S, &DenseDefinitions::xLocalMShared, dpMShared<C, S> > >(Algorithm::XLOCALMSHARED, matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XREGISTERMSHARED)
    {
        #ifdef MAT_SPECIFIC_COMPILATION
            auto permanent = new DecomposePerman<C, S, dpSingleGPU<C, S, &DenseDefinitions::xRegisterMSharedMatSpecificCompilation, dpMShared<C, S> > >(Algorithm::XREGISTERMSHARED, matrix, *settings);
            result = permanent->computePermanentRecursively();
            delete permanent;
        #else
            auto permanent = new DecomposePerman<C, S, dpSingleGPU<C, S, &DenseDefinitions::xRegisterMShared, dpMShared<C, S> > >(Algorithm::XREGISTERMSHARED, matrix, *settings);
            result = permanent->computePermanentRecursively();
            delete permanent;
        #endif
    }
    else if (selectedAlgorithm == Algorithm::XLOCALMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, dpSingleGPU<C, S, &DenseDefinitions::xLocalMGlobal, dpNoShared<C, S> > >(Algorithm::XLOCALMGLOBAL, matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XREGISTERMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, dpSingleGPU<C, S, &DenseDefinitions::xRegisterMGlobal, dpNoShared<C, S> > >(Algorithm::XREGISTERMGLOBAL, matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XSHAREDMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, dpSingleGPU<C, S, &DenseDefinitions::xSharedMGlobal, dpXShared<C, S> > >(Algorithm::XSHAREDMGLOBAL, matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XSHAREDMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, dpSingleGPU<C, S, &DenseDefinitions::xSharedMShared, dpXSharedMShared<C, S> > >(Algorithm::XSHAREDMSHARED, matrix, *settings);
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
    if (selectedAlgorithm == Algorithm::XLOCALMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, dpMultiGPU<C, S, &DenseDefinitions::xLocalMShared, dpMShared<C, S> > >(Algorithm::XLOCALMSHARED, matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XREGISTERMSHARED)
    {
        #ifdef MAT_SPECIFIC_COMPILATION
            auto permanent = new DecomposePerman<C, S, dpMultiGPU<C, S, &DenseDefinitions::xRegisterMSharedMatSpecificCompilation, dpMShared<C, S> > >(Algorithm::XREGISTERMSHARED, matrix, *settings);
            result = permanent->computePermanentRecursively();
            delete permanent;
        #else
            auto permanent = new DecomposePerman<C, S, dpMultiGPU<C, S, &DenseDefinitions::xRegisterMShared, dpMShared<C, S> > >(Algorithm::XREGISTERMSHARED, matrix, *settings);
            result = permanent->computePermanentRecursively();
            delete permanent;
        #endif
    }
    else if (selectedAlgorithm == Algorithm::XLOCALMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, dpMultiGPU<C, S, &DenseDefinitions::xLocalMGlobal, dpNoShared<C, S> > >(Algorithm::XLOCALMGLOBAL, matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XREGISTERMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, dpMultiGPU<C, S, &DenseDefinitions::xRegisterMGlobal, dpNoShared<C, S> > >(Algorithm::XREGISTERMGLOBAL, matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XSHAREDMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, dpMultiGPU<C, S, &DenseDefinitions::xSharedMGlobal, dpXShared<C, S> > >(Algorithm::XSHAREDMGLOBAL, matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XSHAREDMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, dpMultiGPU<C, S, &DenseDefinitions::xSharedMShared, dpXSharedMShared<C, S> > >(Algorithm::XSHAREDMSHARED, matrix, *settings);
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
    if (selectedAlgorithm == Algorithm::XLOCALMSHARED)
    {
        permanent = new dpMultiGPUMPI<C, S, &DenseDefinitions::xLocalMShared, dpMShared<C, S> >(Algorithm::XLOCALMSHARED, matrix, *settings);
    }
    else if (selectedAlgorithm == Algorithm::XREGISTERMSHARED)
    {
        #ifdef MAT_SPECIFIC_COMPILATION
            permanent = new dpMultiGPUMPI<C, S, &DenseDefinitions::xRegisterMSharedMatSpecificCompilation, dpMShared<C, S> >(Algorithm::XREGISTERMSHARED, matrix, *settings);
        #else
            permanent = new dpMultiGPUMPI<C, S, &DenseDefinitions::xRegisterMShared, dpMShared<C, S> >(Algorithm::XREGISTERMSHARED, matrix, *settings);
        #endif
    }
    else if (selectedAlgorithm == Algorithm::XLOCALMGLOBAL)
    {
        permanent = new dpMultiGPUMPI<C, S, &DenseDefinitions::xLocalMGlobal, dpNoShared<C, S> >(Algorithm::XLOCALMGLOBAL, matrix, *settings);
    }
    else if (selectedAlgorithm == Algorithm::XREGISTERMGLOBAL)
    {
        permanent = new dpMultiGPUMPI<C, S, &DenseDefinitions::xRegisterMGlobal, dpNoShared<C, S> >(Algorithm::XREGISTERMGLOBAL, matrix, *settings);
    }
    else if (selectedAlgorithm == Algorithm::XSHAREDMGLOBAL)
    {
        permanent = new dpMultiGPUMPI<C, S, &DenseDefinitions::xSharedMGlobal, dpXShared<C, S> >(Algorithm::XSHAREDMGLOBAL, matrix, *settings);
    }
    else if (selectedAlgorithm == Algorithm::XSHAREDMSHARED)
    {
        permanent = new dpMultiGPUMPI<C, S, &DenseDefinitions::xSharedMShared, dpXSharedMShared<C, S> >(Algorithm::XSHAREDMSHARED, matrix, *settings);
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
// Calculation: Double | Storage: Float
template extern Result gpuSPSingleGPU<double, float>(Matrix<float>* matrix, Settings* settings);
template extern Result gpuSPMultiGPU<double, float>(Matrix<float>* matrix, Settings* settings);
#ifdef MPI
template extern Result gpuSPMultiGPUMPI<double, float>(Matrix<float>* matrix, Settings* settings);
#endif

// Calculation: Double | Storage: Double
template extern Result gpuSPSingleGPU<double, double>(Matrix<double>* matrix, Settings* settings);
template extern Result gpuSPMultiGPU<double, double>(Matrix<double>* matrix, Settings* settings);
#ifdef MPI
template extern Result gpuSPMultiGPUMPI<double, double>(Matrix<double>* matrix, Settings* settings);
#endif
// FOR COMPILATION -SPARSE-


// FOR COMPILATION -DENSE-
// Calculation: Double | Storage: Float
template extern Result gpuDPSingleGPU<double, float>(Matrix<float>* matrix, Settings* settings);
template extern Result gpuDPMultiGPU<double, float>(Matrix<float>* matrix, Settings* settings);
#ifdef MPI
template extern Result gpuDPMultiGPUMPI<double, float>(Matrix<float>* matrix, Settings* settings);
#endif

// Calculation: Double | Storage: Double
template extern Result gpuDPSingleGPU<double, double>(Matrix<double>* matrix, Settings* settings);
template extern Result gpuDPMultiGPU<double, double>(Matrix<double>* matrix, Settings* settings);
#ifdef MPI
template extern Result gpuDPMultiGPUMPI<double, double>(Matrix<double>* matrix, Settings* settings);
#endif
// FOR COMPILATION -DENSE-
