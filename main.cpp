//
// Created by deniz on 4/13/24.
//

#include "IO.h"
#include <iostream>
#include "AlgorithmRecommender.h"
#ifdef MPI_AVAILABLE
#include "mpi.h"
#endif

#define S double
#define C double


int main(int argv, char* argc[])
{
    Settings settings;

    int machineID = 0;
#ifdef MPI_AVAILABLE
    int numberOfProcessors;

    MPI_Init(nullptr, nullptr);
    MPI_Comm_rank(MPI_COMM_WORLD, &machineID);
    MPI_Comm_size(MPI_COMM_WORLD, &numberOfProcessors);
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

    AlgorithmRecommender<C, S>::selectAlgorithm(matrix, &settings);
    AlgorithmRecommender<C, S>::Algorithm algorithm = AlgorithmRecommender<C, S>::selectMode(matrix, &settings);
    Result result = algorithm(matrix, &settings);

    if (machineID == 0)
    {
        std::cout << "Permanent: " << result.permanent << " - Computed in: " << result.time << " seconds." << std::endl;
        std::cout << std::endl;
    }

    delete matrix;

#ifdef MPI_AVAILABLE
    MPI_Finalize();
#endif

    return 0;
}
