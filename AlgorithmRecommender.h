//
// Created by deniz on 4/15/24.
//

#ifndef SUPERMAN_REBORN_ALGORITHMRECOMMENDER_H
#define SUPERMAN_REBORN_ALGORITHMRECOMMENDER_H

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
    static AlgorithmRecommender<C, S>::Algorithm recommendAlgorithm(Matrix<S>* matrix, Settings* settings, int mode);
};


template<class C, class S>
typename AlgorithmRecommender<C, S>::Algorithm AlgorithmRecommender<C, S>::recommendAlgorithm(Matrix<S> *matrix, Settings *settings, int mode)
{
    settings->algorithm = DPXSHAREDMGLOBAL;

    settings->threadC = 16;
    settings->deviceID = 0;

    if (mode == 0)
    {
        return cpuDPNaivePerman<C, S>;
    }
    else if (mode == 1)
    {
        return gpuDPSingleGPU<C, S>;
    }
    else if (mode == 2)
    {
        return gpuDPMultiGPU<C, S>;
    }
    else
    {
#ifdef MPI_AVAILABLE
        return gpuDPMultiGPUMPI<C, S>;
#endif
    }
}


#endif //SUPERMAN_REBORN_ALGORITHMRECOMMENDER_H
