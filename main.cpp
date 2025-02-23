//
// Created by deniz on 4/13/24.
//

#include "IO.h"
#include <iostream>
#include <iomanip>
#include "AlgorithmSelector.h"
#ifdef MPI_AVAILABLE
#include "mpi_wrapper.h"
#endif
#include "cpuComputeComplex.h"
#ifdef GPU_AVAILABLE
#include "gpuComputeComplex.cuh"
#endif

#define S double
#define C double


int main(int argv, char* argc[])
{
    int rank = 0;
    int numberOfProcessors = 1;
#ifdef MPI_AVAILABLE
    initMPI(nullptr, nullptr);
    mpiCommRank(getMPI_COMM_WORLD(), &rank);
    mpiCommSize(getMPI_COMM_WORLD(), &numberOfProcessors);
#endif

    Settings settings;
    settings.rank = rank;
    settings.processorNum = numberOfProcessors;

    std::string filename;
    IO::readSettings<S>(filename, settings, argv, argc);

    if (!settings.complex)
    {
        std::stringstream stream;
        stream << "MATRIX NAME: " << filename << std::endl;
        print(stream, rank, settings.PID, 1);
        Matrix<S>* matrix = IO::readMatrix<S>(filename, settings);

        AlgorithmSelector<C, S>::Algorithm algorithm = AlgorithmSelector<C, S>::selectAlgorithm(matrix, &settings);
        Result result = algorithm(matrix, &settings);

        stream = std::stringstream();
        stream << "Permanent: " << std::setprecision (settings.printingPrecision) << double(result.permanent) << " - Computed in: " << result.time << " seconds." << std::endl << std::endl;
        print(stream, rank, settings.PID, -1);

        delete matrix;
    }
    else
    {
        std::stringstream stream;
        stream << "MATRIX NAME: " << filename << std::endl;
        print(stream, rank, settings.PID, 1);
        Matrix<std::complex<S>>* matrix = IO::readComplex<S>(filename, settings);
        recompilationStatus(0, settings.rank);
        if (settings.mode == Mode::CPU)
        {
            cpuComputeComplex<C, S>(matrix, &settings);
        }
        #ifdef GPU_AVAILABLE
        else if (settings.mode == Mode::SingleGPU)
        {
            gpuComputeComplex(matrix, &settings);
        }
        #endif
        else
        {
            throw std::runtime_error("Computation of permanent on complex matrices are supported only on a cpu or on a single gpu.");
        }
        delete matrix;
    }

#ifdef MPI_AVAILABLE
    finalizeMPI();
#endif

    return 0;
}
