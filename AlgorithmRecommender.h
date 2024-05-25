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
    static AlgorithmRecommender<C, S>::Algorithm recommendAlgorithm(Matrix<S>* matrix, Settings* settings);
};


template<class C, class S>
typename AlgorithmRecommender<C, S>::Algorithm AlgorithmRecommender<C, S>::recommendAlgorithm(Matrix<S> *matrix, Settings *settings)
{
    SparseMatrix<S>* sparseMatrix = dynamic_cast<SparseMatrix<S>*>(matrix);
    settings->threadC = 16;
    settings->gpuNum = 4;
    settings->deviceID = 0;
    settings->algorithm = SPXLOCALMSHARED;
    return gpuSPMultiGPU<C, S>;
}


#endif //SUPERMAN_REBORN_ALGORITHMRECOMMENDER_H
