//
// Created by deniz on 4/15/24.
//

#ifndef SUPERMAN_ALGORITHMRECOMMENDER_H
#define SUPERMAN_ALGORITHMRECOMMENDER_H

#include "AllExactAlgorithms.h"
#include "Matrix.h"
#include "SparseMatrix.h"
#include "Settings.h"
#include "Result.h"
#ifdef GPU_AVAILABLE
#include "GPUKernelWrappers.h"
#endif


template <class C, class S>
class AlgorithmRecommender
{
public:
    typedef Result (*Algorithm)(Matrix<S>* matrix, Settings* settings);

public:
    static AlgorithmRecommender<C, S>::Algorithm recommendAlgorithm(Matrix<S>* matrix, Settings* settings);
};


template<class C, class S>
typename AlgorithmRecommender<C, S>::Algorithm AlgorithmRecommender<C, S>::recommendAlgorithm(Matrix<S> *matrix, Settings *settings)
{
    if (matrix->nov > 63)
    {
        std::string errMessage = "Permanent is a #P problem. The exact permanent of the matrix of size " + std::to_string(matrix->nov) + " is not computable. Consider using approximation algorithms.";
        throw std::runtime_error(errMessage);
    }

#ifdef GPU_AVAILABLE
    if (settings->algorithm == AlgorithmEnds && settings->mode != Mode::CPU)
    {
        DeviceProperties properties = getDeviceProperties(settings->deviceID);

        double xlocalmsharedScore, xlocalmglobalScore, xsharedmsharedScore, xsharedmglobalScore;

        unsigned matrixSize = (matrix->sparsity / 100) * matrix->nov * matrix->nov * sizeof(S);
        unsigned xsize = matrix->nov * sizeof(C);
        unsigned sparseMatrixAccessPerIteration = 3;
        unsigned denseMatrixAccessPerIteration = 1;
        unsigned xVectorAccessPerIteration = 2;
        unsigned registerMemAccessLatency = 1;
        unsigned sharedMemAccessLatency = 19;
        unsigned l1DataAccessLatency = 32;
        unsigned l2DataAccessLatency = 188;
        unsigned globalMemAccessLatency = 316;

        unsigned expectedThreadsPerSM;
        unsigned latencyTotal;

        // XLOCALMSHARED  - register bounded kernel
        if (matrix->sparsity < 50)
        {
            expectedThreadsPerSM = double(properties.regsPerSM) / double(54);
            latencyTotal = registerMemAccessLatency * xVectorAccessPerIteration + sharedMemAccessLatency * sparseMatrixAccessPerIteration;
            xlocalmsharedScore = double(expectedThreadsPerSM) / double(latencyTotal);
        }
        else
        {
            expectedThreadsPerSM = double(properties.regsPerSM) / double(32);
            latencyTotal = registerMemAccessLatency * xVectorAccessPerIteration + sharedMemAccessLatency * denseMatrixAccessPerIteration;
            xlocalmsharedScore = double(expectedThreadsPerSM) / double(latencyTotal);
        }
        // XLOCALMSHARED

        // XLOCALMGLOBAL - register bounded kernel
        if (matrix->sparsity < 50)
        {
            expectedThreadsPerSM = double(properties.regsPerSM) / double(54);
            latencyTotal = registerMemAccessLatency * xVectorAccessPerIteration + l2DataAccessLatency * sparseMatrixAccessPerIteration;
            xlocalmglobalScore = double(expectedThreadsPerSM) / double(latencyTotal);
        }
        else
        {
            expectedThreadsPerSM = double(properties.regsPerSM) / double(40);
            latencyTotal = registerMemAccessLatency * xVectorAccessPerIteration + l2DataAccessLatency * denseMatrixAccessPerIteration;
            xlocalmglobalScore = double(expectedThreadsPerSM) / double(latencyTotal);
        }
        // XLOCALMGLOBAL

        // XSHAREDMSHARED - shared memory bounded kernel
        expectedThreadsPerSM = double(properties.sharedMemoryPerSM - matrixSize * 2) / double(xsize);
        if (matrix->sparsity < 50)
        {
            latencyTotal = sharedMemAccessLatency * (sparseMatrixAccessPerIteration + xVectorAccessPerIteration);
            xsharedmsharedScore = double(expectedThreadsPerSM) / double(latencyTotal);
        }
        else
        {
            latencyTotal = sharedMemAccessLatency * (denseMatrixAccessPerIteration + xVectorAccessPerIteration);
            xsharedmsharedScore = double(expectedThreadsPerSM) / double(latencyTotal);
        }
        // XSHAREDMSHARED

        // XSHAREDMGLOBAL - shared memory bounded kernel
        expectedThreadsPerSM = double(properties.sharedMemoryPerSM) / double(xsize);
        if (matrix->sparsity < 50)
        {
            latencyTotal = sharedMemAccessLatency * xVectorAccessPerIteration + l2DataAccessLatency * sparseMatrixAccessPerIteration;
            xsharedmglobalScore = double(expectedThreadsPerSM) / double(latencyTotal);
        }
        else
        {
            latencyTotal = sharedMemAccessLatency * xVectorAccessPerIteration + l2DataAccessLatency * denseMatrixAccessPerIteration;
            xsharedmglobalScore = double(expectedThreadsPerSM) / double(latencyTotal);
        }

#ifndef SILENT
        std::cout << "XLOCALMSHARED SCORE: " << xlocalmsharedScore << std::endl;
        std::cout << "XLOCALMGLOBAL SCORE: " << xlocalmglobalScore << std::endl;
        std::cout << "XSHAREDMSHARED SCORE: " << xsharedmsharedScore << std::endl;
        std::cout << "XSHAREDMGLOBAL SCORE: " << xsharedmglobalScore << std::endl;
#endif

        if (xlocalmsharedScore > xlocalmglobalScore && xlocalmsharedScore > xsharedmsharedScore && xlocalmsharedScore > xsharedmglobalScore)
        {
            settings->algorithm = XLOCALMSHARED;
            std::cout << "SELECTED ALGORITHM IS: XLOCALMSHARED" << std::endl;
        }
        else if (xlocalmglobalScore > xsharedmsharedScore && xlocalmglobalScore > xsharedmglobalScore)
        {
            settings->algorithm = XLOCALMGLOBAL;
            std::cout << "SELECTED ALGORITHM IS: XLOCALMGLOBAL" << std::endl;
        }
        else if (xsharedmsharedScore > xsharedmglobalScore)
        {
            settings->algorithm = XSHAREDMSHARED;
            std::cout << "SELECTED ALGORITHM IS: XSHAREDMSHARED" << std::endl;
        }
        else
        {
            settings->algorithm = XSHAREDMGLOBAL;
            std::cout << "SELECTED ALGORITHM IS: XSHAREDMGLOBAL" << std::endl;
        }
    }
#endif

    if (matrix->sparsity < 50)
    {
        if (settings->mode == Mode::CPU)
        {
            return cpuSPNaivePerman<C, S>;
        }
        if (settings->mode == Mode::SingleGPU)
        {
            return gpuSPSingleGPU<C, S>;
        }
        if (settings->mode == Mode::MultiGPU)
        {
            return gpuSPMultiGPU<C, S>;
        }
        if (settings->mode == Mode::MultiGPUMPI)
        {
            return gpuSPMultiGPU<C, S>;
        }
    }
    else
    {
        if (settings->mode == Mode::CPU)
        {
            return cpuDPNaivePerman<C, S>;
        }
        if (settings->mode == Mode::SingleGPU)
        {
            return gpuDPSingleGPU<C, S>;
        }
        if (settings->mode == Mode::MultiGPU)
        {
            return gpuDPMultiGPU<C, S>;
        }
        if (settings->mode == Mode::MultiGPUMPI)
        {
            return gpuDPMultiGPU<C, S>;
        }
    }
}


#endif //SUPERMAN_ALGORITHMRECOMMENDER_H
