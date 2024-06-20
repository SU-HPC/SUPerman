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
    if (settings->algorithm == AlgorithmEnds)
    {
        // Algorithm selection
        settings->algorithm = XLOCALMSHARED;
    }

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
