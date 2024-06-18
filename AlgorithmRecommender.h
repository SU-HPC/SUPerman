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
    settings->algorithm = SPXLOCALMSHARED;

    settings->threadC = 16;
    settings->deviceID = 0;

    if (mode == 0)
    {
        return cpuSPNaivePerman<C, S>;
    }
    else if (mode == 1)
    {
        return gpuSPSingleGPU<C, S>;
    }
    else if (mode == 2)
    {
        return gpuSPMultiGPU<C, S>;
    }
    else
    {
#ifdef MPI_AVAILABLE
        return gpuSPMultiGPUMPI<C, S>;
#endif
    }
}


#endif //SUPERMAN_REBORN_ALGORITHMRECOMMENDER_H
