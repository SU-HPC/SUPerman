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
#include <fstream>
#include "mpi_wrapper.h"


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
        std::stringstream stream;
        if (matrix->nov > 63)
        {
            settings->algorithm = APPROXIMATION;
            stream << "SELECTED ALGORITHM IS: APPROXIMATION" << std::endl;
            print(stream, settings->rank, settings->PID, 1);
        }
        if ((matrix->nov * matrix->sparsity / 100 <= 4) || matrix->nov <= 40)
        {
            settings->algorithm = XREGISTERMSHARED;
            stream << "SELECTED ALGORITHM IS: xregister_mshared" << std::endl;
            print(stream, settings->rank, settings->PID, 1);
        }
        else
        {
            settings->algorithm = REGEFFICIENTCODEGENERATION;
            stream << "SELECTED ALGORITHM IS: register_efficient_code_generation" << std::endl;
            print(stream, settings->rank, settings->PID, 1);
        }
    }
    #endif

    if (settings->PID == 1)
    {
        if (settings->algorithm == NAIVECODEGENERATION || settings->algorithm == REGEFFICIENTCODEGENERATION)
        {
            recompilationStatus(1, settings->rank);
        }
        else
        {
            recompilationStatus(0, settings->rank);
        }
    }

    // cpu
    if (settings->mode == Mode::CPU)
    {
        if (matrix->sparsity < 50)  // sparse
        {
            return cpuSPNaivePerman<C, S>;
        }
        else                        // dense
        {
            return cpuDPNaivePerman<C, S>;
        }
    }

    // gpu-mpi
    if (
            (settings->algorithm != XREGISTERMSHARED && settings->algorithm != XREGISTERMGLOBAL && matrix->sparsity < 50) 
        ||  settings->algorithm == NAIVECODEGENERATION || settings->algorithm == REGEFFICIENTCODEGENERATION
        ||  settings->algorithm == APPROXIMATION
    ) // sparse
    {
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
    else // dense
    {
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
    throw std::runtime_error("The mode you want to calculate the permanent in is unavailable for launch. Terminating...\n");
}


#endif //SUPERMAN_ALGORITHMSELECTOR_H
