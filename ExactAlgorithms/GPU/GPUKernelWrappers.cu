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

// Kernel Generation
#include "generatedKernels.cuh"
#include "KernelGenSingleGPU.cuh"
#include "KernelGenMultiGPU.cuh"

// MPI
#ifdef MPI_AVAILABLE
#include "spMultiGPUMPI.cuh"
#include "dpMultiGPUMPI.cuh"
#include "KernelGenMultiGPUMPI.cuh"
#endif


// SPARSE WRAPPERS
template <typename C, typename S>
extern Result gpuSPSingleGPU(Matrix<S>* matrix, Settings* settings)
{
    Result result;

    Algorithm selectedAlgorithm = settings->algorithm;
    if (selectedAlgorithm == Algorithm::XSHAREDMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, spSingleGPU<C, S, &SparseDefinitions::xSharedMGlobal, spXShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XSHAREDMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, spSingleGPU<C, S, &SparseDefinitions::xSharedMShared, spXSharedMShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XGLOBALMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, spSingleGPU<C, S, &SparseDefinitions::xGlobalMGlobal, spNoShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XGLOBALMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, spSingleGPU<C, S, &SparseDefinitions::xGlobalMShared, spMShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if ((selectedAlgorithm == Algorithm::NAIVECODEGENERATION) || selectedAlgorithm == Algorithm::REGEFFICIENTCODEGENERATION)
    {
        auto permanent = new DecomposePerman<C, S, KernelGenSingleGPU<C, S, &globalKernel, spNoShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else
    {
        throw std::runtime_error("Algorithm you have selected is not included in the available GPU algorithms list.\n");
    }

    return result;
}

template <typename C, typename S>
extern Result gpuSPMultiGPU(Matrix<S>* matrix, Settings* settings)
{
    Result result;

    Algorithm selectedAlgorithm = settings->algorithm;
    if (selectedAlgorithm == Algorithm::XSHAREDMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, spMultiGPU<C, S, &SparseDefinitions::xSharedMGlobal, spXShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XSHAREDMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, spMultiGPU<C, S, &SparseDefinitions::xSharedMShared, spXSharedMShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XGLOBALMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, spMultiGPU<C, S, &SparseDefinitions::xGlobalMGlobal, spNoShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XGLOBALMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, spMultiGPU<C, S, &SparseDefinitions::xGlobalMShared, spMShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if ((selectedAlgorithm == Algorithm::NAIVECODEGENERATION) || selectedAlgorithm == Algorithm::REGEFFICIENTCODEGENERATION)
    {
        auto permanent = new DecomposePerman<C, S, KernelGenMultiGPU<C, S, &globalKernel, spNoShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else
    {
        throw std::runtime_error("Algorithm you have selected is not included in the available GPU algorithms list.\n");
    }

    return result;
}

#ifdef MPI_AVAILABLE
template <typename C, typename S>
extern Result gpuSPMultiGPUMPI(Matrix<S>* matrix, Settings* settings)
{
    Result result;

    Algorithm selectedAlgorithm = settings->algorithm;
    if (selectedAlgorithm == Algorithm::XSHAREDMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, spMultiGPUMPI<C, S, &SparseDefinitions::xSharedMGlobal, spXShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XSHAREDMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, spMultiGPUMPI<C, S, &SparseDefinitions::xSharedMShared, spXSharedMShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XGLOBALMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, spMultiGPUMPI<C, S, &SparseDefinitions::xGlobalMGlobal, spNoShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XGLOBALMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, spMultiGPUMPI<C, S, &SparseDefinitions::xGlobalMShared, spMShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if ((selectedAlgorithm == Algorithm::NAIVECODEGENERATION) || selectedAlgorithm == Algorithm::REGEFFICIENTCODEGENERATION)
    {
        auto permanent = new DecomposePerman<C, S, KernelGenMultiGPUMPI<C, S, &globalKernel, spNoShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else
    {
        throw std::runtime_error("Algorithm you have selected is not included in the available GPU algorithms list.\n");
    }

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
    if (selectedAlgorithm == Algorithm::XREGISTERMSHARED)
    {
        #ifdef MAT_SPECIFIC_COMPILATION
            if (settings->calculationPrecision == DD)
            {
                auto permanent = new DecomposePerman<C, S, dpMultiGPU<C, S, &DenseDefinitions::xRegisterMSharedMatSpecificCompilation, dpMShared<C, S> > >(matrix, *settings);
                result = permanent->computePermanentRecursively();
                delete permanent;
            }
            else if (settings->calculationPrecision == KAHAN)
            {
                auto permanent = new DecomposePerman<C, S, dpMultiGPU<C, S, &DenseDefinitions::xRegisterMSharedKahanMatSpecificCompilation, dpMShared<C, S> > >(matrix, *settings);
                result = permanent->computePermanentRecursively();
                delete permanent;
            }
        #else
            if (settings->calculationPrecision == DD)
            {
                auto permanent = new DecomposePerman<C, S, dpSingleGPU<C, S, &DenseDefinitions::xRegisterMShared, dpMShared<C, S> > >(matrix, *settings);
                result = permanent->computePermanentRecursively();
                delete permanent;
            }
            else if (settings->calculationPrecision == KAHAN)
            {
                auto permanent = new DecomposePerman<C, S, dpSingleGPU<C, S, &DenseDefinitions::xRegisterMSharedKahan, dpMShared<C, S> > >(matrix, *settings);
                result = permanent->computePermanentRecursively();
                delete permanent;
            }
        #endif
    }
    else if (selectedAlgorithm == Algorithm::XREGISTERMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, dpSingleGPU<C, S, &DenseDefinitions::xRegisterMGlobal, dpNoShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XSHAREDMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, dpSingleGPU<C, S, &DenseDefinitions::xSharedMGlobal, dpXShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XSHAREDMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, dpSingleGPU<C, S, &DenseDefinitions::xSharedMShared, dpXSharedMShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else
    {
        throw std::runtime_error("Algorithm you have selected is not included in the available GPU algorithms list.\n");
    }

    return result;
}

template <typename C, typename S>
extern Result gpuDPMultiGPU(Matrix<S>* matrix, Settings* settings)
{
    Result result;

    Algorithm selectedAlgorithm = settings->algorithm;
    if (selectedAlgorithm == Algorithm::XREGISTERMSHARED)
    {
        #ifdef MAT_SPECIFIC_COMPILATION
            if (settings->calculationPrecision == DD)
            {
                auto permanent = new DecomposePerman<C, S, dpMultiGPU<C, S, &DenseDefinitions::xRegisterMSharedMatSpecificCompilation, dpMShared<C, S> > >(matrix, *settings);
                result = permanent->computePermanentRecursively();
                delete permanent;
            }
            else if (settings->calculationPrecision == KAHAN)
            {
                auto permanent = new DecomposePerman<C, S, dpMultiGPU<C, S, &DenseDefinitions::xRegisterMSharedKahanMatSpecificCompilation, dpMShared<C, S> > >(matrix, *settings);
                result = permanent->computePermanentRecursively();
                delete permanent;
            }
        #else
            if (settings->calculationPrecision == DD)
            {
                auto permanent = new DecomposePerman<C, S, dpMultiGPU<C, S, &DenseDefinitions::xRegisterMShared, dpMShared<C, S> > >(matrix, *settings);
                result = permanent->computePermanentRecursively();
                delete permanent;
            }
            else if (settings->calculationPrecision == KAHAN)
            {
                auto permanent = new DecomposePerman<C, S, dpMultiGPU<C, S, &DenseDefinitions::xRegisterMSharedKahan, dpMShared<C, S> > >(matrix, *settings);
                result = permanent->computePermanentRecursively();
                delete permanent;
            }
        #endif
    }
    else if (selectedAlgorithm == Algorithm::XREGISTERMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, dpMultiGPU<C, S, &DenseDefinitions::xRegisterMGlobal, dpNoShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XSHAREDMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, dpMultiGPU<C, S, &DenseDefinitions::xSharedMGlobal, dpXShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XSHAREDMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, dpMultiGPU<C, S, &DenseDefinitions::xSharedMShared, dpXSharedMShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else
    {
        throw std::runtime_error("Algorithm you have selected is not included in the available GPU algorithms list.\n");
    }

    return result;
}

#ifdef MPI_AVAILABLE
template <typename C, typename S>
extern Result gpuDPMultiGPUMPI(Matrix<S>* matrix, Settings* settings)
{
    Result result;

    Algorithm selectedAlgorithm = settings->algorithm;
    if (selectedAlgorithm == Algorithm::XREGISTERMSHARED)
    {
        #ifdef MAT_SPECIFIC_COMPILATION
            if (settings->calculationPrecision == DD)
            {
                auto permanent = new DecomposePerman<C, S, dpMultiGPU<C, S, &DenseDefinitions::xRegisterMSharedMatSpecificCompilation, dpMShared<C, S> > >(matrix, *settings);
                result = permanent->computePermanentRecursively();
                delete permanent;
            }
            else if (settings->calculationPrecision == KAHAN)
            {
                auto permanent = new DecomposePerman<C, S, dpMultiGPU<C, S, &DenseDefinitions::xRegisterMSharedKahanMatSpecificCompilation, dpMShared<C, S> > >(matrix, *settings);
                result = permanent->computePermanentRecursively();
                delete permanent;
            }
        #else
            if (settings->calculationPrecision == DD)
            {
                auto permanent = new DecomposePerman<C, S, dpMultiGPUMPI<C, S, &DenseDefinitions::xRegisterMShared, dpMShared<C, S> > >(matrix, *settings);
                result = permanent->computePermanentRecursively();
                delete permanent;
            }
            else if (settings->calculationPrecision == KAHAN)
            {
                auto permanent = new DecomposePerman<C, S, dpMultiGPUMPI<C, S, &DenseDefinitions::xRegisterMSharedKahan, dpMShared<C, S> > >(matrix, *settings);
                result = permanent->computePermanentRecursively();
                delete permanent;
            }
        #endif
    }
    else if (selectedAlgorithm == Algorithm::XREGISTERMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, dpMultiGPUMPI<C, S, &DenseDefinitions::xRegisterMGlobal, dpNoShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XSHAREDMGLOBAL)
    {
        auto permanent = new DecomposePerman<C, S, dpMultiGPUMPI<C, S, &DenseDefinitions::xSharedMGlobal, dpXShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else if (selectedAlgorithm == Algorithm::XSHAREDMSHARED)
    {
        auto permanent = new DecomposePerman<C, S, dpMultiGPUMPI<C, S, &DenseDefinitions::xSharedMShared, dpXSharedMShared<C, S> > >(matrix, *settings);
        result = permanent->computePermanentRecursively();
        delete permanent;
    }
    else
    {
        throw std::runtime_error("Algorithm you have selected is not included in the available GPU algorithms list.\n");
    }

    return result;
}
#endif
// DENSE WRAPPERS


// FOR COMPILATION -SPARSE-
// Calculation: Double | Storage: Float
template extern Result gpuSPSingleGPU<double, float>(Matrix<float>* matrix, Settings* settings);
template extern Result gpuSPMultiGPU<double, float>(Matrix<float>* matrix, Settings* settings);
#ifdef MPI_AVAILABLE
template extern Result gpuSPMultiGPUMPI<double, float>(Matrix<float>* matrix, Settings* settings);
#endif

// Calculation: Double | Storage: Double
template extern Result gpuSPSingleGPU<double, double>(Matrix<double>* matrix, Settings* settings);
template extern Result gpuSPMultiGPU<double, double>(Matrix<double>* matrix, Settings* settings);
#ifdef MPI_AVAILABLE
template extern Result gpuSPMultiGPUMPI<double, double>(Matrix<double>* matrix, Settings* settings);
#endif
// FOR COMPILATION -SPARSE-


// FOR COMPILATION -DENSE-
// Calculation: Double | Storage: Float
template extern Result gpuDPSingleGPU<double, float>(Matrix<float>* matrix, Settings* settings);
template extern Result gpuDPMultiGPU<double, float>(Matrix<float>* matrix, Settings* settings);
#ifdef MPI_AVAILABLE
template extern Result gpuDPMultiGPUMPI<double, float>(Matrix<float>* matrix, Settings* settings);
#endif

// Calculation: Double | Storage: Double
template extern Result gpuDPSingleGPU<double, double>(Matrix<double>* matrix, Settings* settings);
template extern Result gpuDPMultiGPU<double, double>(Matrix<double>* matrix, Settings* settings);
#ifdef MPI_AVAILABLE
template extern Result gpuDPMultiGPUMPI<double, double>(Matrix<double>* matrix, Settings* settings);
#endif
// FOR COMPILATION -DENSE-
