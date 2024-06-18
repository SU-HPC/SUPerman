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
    static AlgorithmRecommender<C, S>::Algorithm recommendAlgorithm(Matrix<S>* matrix, Settings* settings, int mode, int algo = 0);
};


template<class C, class S>
typename AlgorithmRecommender<C, S>::Algorithm AlgorithmRecommender<C, S>::recommendAlgorithm(Matrix<S> *matrix, Settings *settings, int mode, int algo)
{
    settings->threadC = 16;
    settings->deviceID = 0;

    if (matrix->sparsity < 50)
    {
        if (algo == 0)
        {
            std::cout << "SELECTED ALGORITHM IS NAIVE CPU" << std::endl;
        }
        else if (algo == 1)
        {
            std::cout << "SELECTED ALGORITHM IS SPXLOCALMSHARED" << std::endl;
            settings->algorithm = SPXLOCALMSHARED;
        }
        else if (algo == 2)
        {
            std::cout << "SELECTED ALGORITHM IS SPXLOCALMGLOBAL" << std::endl;
            settings->algorithm = SPXLOCALMGLOBAL;
        }
        else if (algo == 3)
        {
            std::cout << "SELECTED ALGORITHM IS SPXSHAREDMGLOBAL" << std::endl;
            settings->algorithm = SPXSHAREDMGLOBAL;
        }
        else
        {
            std::cout << "SELECTED ALGORITHM IS SPXSHAREDMSHARED" << std::endl;
            settings->algorithm = SPXSHAREDMSHARED;
        }
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
    else
    {
        if (algo == 0)
        {
            std::cout << "SELECTED ALGORITHM IS NAIVE CPU" << std::endl;
        }
        else if (algo == 1)
        {
            std::cout << "SELECTED ALGORITHM IS DPXLOCALMSHARED" << std::endl;
            settings->algorithm = DPXLOCALMSHARED;
        }
        else if (algo == 2)
        {
            std::cout << "SELECTED ALGORITHM IS DPXLOCALMGLOBAL" << std::endl;
            settings->algorithm = DPXLOCALMGLOBAL;
        }
        else if (algo == 3)
        {
            std::cout << "SELECTED ALGORITHM IS DPXSHAREDMGLOBAL" << std::endl;
            settings->algorithm = DPXSHAREDMGLOBAL;
        }
        else
        {
            std::cout << "SELECTED ALGORITHM IS DPXSHAREDMSHARED" << std::endl;
            settings->algorithm = DPXSHAREDMSHARED;
        }
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
}


#endif //SUPERMAN_ALGORITHMRECOMMENDER_H
