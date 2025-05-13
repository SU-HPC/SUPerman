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
        stream << "Permanent: " << std::setprecision (settings.printingPrecision) << result.permanent << " - Computed in: " << result.time << " seconds." << std::endl << std::endl;
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
        complexPerman<C, S>(matrix, &settings);
        delete matrix;
    }

#ifdef MPI_AVAILABLE
    finalizeMPI();
#endif

    return 0;
}
