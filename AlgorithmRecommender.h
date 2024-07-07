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
    static AlgorithmRecommender<C, S>::Algorithm selectMode(Matrix<S>* matrix, Settings* settings);
    static void selectAlgorithm(Matrix<S>* matrix, Settings* settings);
};


template<class C, class S>
typename AlgorithmRecommender<C, S>::Algorithm AlgorithmRecommender<C, S>::selectMode(Matrix<S> *matrix, Settings *settings)
{
    if (settings->algorithm != XREGISTERMSHARED && settings->algorithm != XREGISTERMGLOBAL && matrix->sparsity < 50)
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
    return nullptr;
}

template<class C, class S>
void AlgorithmRecommender<C, S>::selectAlgorithm(Matrix<S> *matrix, Settings *settings)
{
#ifdef GPU_AVAILABLE
    if (settings->algorithm == AlgorithmEnds && settings->mode != Mode::CPU)
    {
        settings->algorithm = XREGISTERMSHARED;
        std::cout << "SELECTED ALGORITHM IS: XREGISTERMSHARED" << std::endl;
    }
#endif
}


#endif //SUPERMAN_ALGORITHMRECOMMENDER_H
