//
// Created by deniz on 4/15/24.
//

#ifndef SUPERMAN_REBORN_ALGORITHMRECOMMENDER_H
#define SUPERMAN_REBORN_ALGORITHMRECOMMENDER_H

#include "AllExactAlgorithms.h"
#include "Matrix.h"
#include "SparseMatrix.h"
#include "Settings.h"
#include "Permanent.h"
#include "cuda_runtime.h"


template <class C, class S>
class AlgorithmRecommender
{
public:
    static Permanent<C, S>* recommendAlgorithm(Matrix<S>* matrix, Settings* settings);
};


template<class C, class S>
Permanent<C, S> *AlgorithmRecommender<C, S>::recommendAlgorithm(Matrix<S> *matrix, Settings *settings)
{
    SparseMatrix<S>* sparseMatrix = dynamic_cast<SparseMatrix<S>*>(matrix);
    settings->threadC = omp_get_max_threads();
    settings->gpuNum = 4;
    if (sparseMatrix)
    {
        settings->matrixType = Sparse;
        return new SparsePermanSharedCoalescing<C, S>(matrix, *settings);
    }
    else
    {
        settings->matrixType = Dense;
    }
}


#endif //SUPERMAN_REBORN_ALGORITHMRECOMMENDER_H
