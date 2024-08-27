//
// Created by deniz on 4/15/24.
//

#ifndef SUPERMAN_ALGORITHMSELECTOR_H
#define SUPERMAN_ALGORITHMSELECTOR_H

#include "AllExactAlgorithms.h"
#include "Matrix.h"
#include "SparseMatrix.h"
#include "Settings.h"
#include "Result.h"


template <class C, class S>
class AlgorithmSelector
{
public:
    typedef Result (*Algorithm)(Matrix<S>* matrix, Settings* settings);

public:
    static AlgorithmSelector<C, S>::Algorithm selectAlgorithm(Matrix<S>* matrix, Settings* settings);
};


template<class C, class S>
typename AlgorithmSelector<C, S>::Algorithm AlgorithmSelector<C, S>::selectAlgorithm(Matrix<S> *matrix, Settings *settings)
{

#ifdef GPU_AVAILABLE
    if (settings->algorithm == AlgorithmEnds && settings->mode != Mode::CPU)
    {
        settings->algorithm = XREGISTERMSHARED;
        std::cout << "SELECTED ALGORITHM IS: XREGISTERMSHARED" << std::endl;
    }
#endif

    if (settings->algorithm != XREGISTERMSHARED && settings->algorithm != XREGISTERMGLOBAL && matrix->sparsity < 50)
    {
        if (settings->mode == Mode::CPU)
        {
            return cpuSPNaivePerman<C, S>;
        }
#ifdef GPU_AVAILABLE
        if (settings->mode == Mode::SingleGPU)
        {
            return gpuSPSingleGPU<C, S>;
        }
        if (settings->mode == Mode::MultiGPU)
        {
            return gpuSPMultiGPU<C, S>;
        }
#endif
#ifdef MPI_AVAILABLE
        if (settings->mode == Mode::MultiGPUMPI)
        {
            return gpuSPMultiGPUMPI<C, S>;
        }
#endif
    }
    else
    {
        if (settings->mode == Mode::CPU)
        {
            return cpuDPNaivePerman<C, S>;
        }
#ifdef GPU_AVAILABLE
        if (settings->mode == Mode::SingleGPU)
        {
            return gpuDPSingleGPU<C, S>;
        }
        if (settings->mode == Mode::MultiGPU)
        {
            return gpuDPMultiGPU<C, S>;
        }
#endif
#ifdef MPI_AVAILABLE
        if (settings->mode == Mode::MultiGPUMPI)
        {
            return gpuDPMultiGPUMPI<C, S>;
        }
#endif
    }
    throw std::runtime_error("The mode you want to calculate the permanent in is unavailable for launch. Terminating...");
}


#endif //SUPERMAN_ALGORITHMSELECTOR_H
