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
    Settings settings;

    int machineID = 0;
#ifdef MPI_AVAILABLE
    int numberOfProcessors;

    initMPI(nullptr, nullptr);
    mpiCommRank(getMPI_COMM_WORLD(), &machineID);
    mpiCommSize(getMPI_COMM_WORLD(), &numberOfProcessors);
    settings.machineID = machineID;
    settings.processorNum = numberOfProcessors;
#endif

    std::string filename;
    IO::readSettings<S>(filename, settings, argv, argc);
    if (machineID == 0)
    {
        std::cout << "MATRIX NAME: " << filename << std::endl;
    }
    Matrix<S>* matrix = IO::readMatrix<S>(filename, settings);

    AlgorithmSelector<C, S>::Algorithm algorithm = AlgorithmSelector<C, S>::selectAlgorithm(matrix, &settings);
    Result result = algorithm(matrix, &settings);

    if (machineID == 0)
    {
        std::cout << "Permanent: " << std::setprecision (settings.printingPrecision) << double(result.permanent) << " - Computed in: " << result.time << " seconds." << std::endl;
        std::cout << std::endl;
    }

    delete matrix;

#ifdef MPI_AVAILABLE
    finalizeMPI();
#endif

    return 0;
}
