//
// Created by deniz on 4/13/24.
//

#include "IO.h"
#include <iostream>
#include "AlgorithmRecommender.h"
#include <vector>
#include <string>
#ifdef MPI_AVAILABLE
#include "mpi.h"
#endif


// will be determined at runtime
#define S double
#define C double
#define filename "/home/users/deniz/sample_matrices/chesapeake.mat"


int main()
{
    Settings settings;

#ifdef MPI_AVAILABLE
    int machineID;
    int numberOfProcessors;

    MPI_Init(nullptr, nullptr);
    MPI_Comm_rank(MPI_COMM_WORLD, &machineID);
    MPI_Comm_size(MPI_COMM_WORLD, &numberOfProcessors);
    settings.machineID = machineID;
    settings.processorNum = numberOfProcessors;
#endif

    std::vector<MatrixProperty> matrixProperties =
            {
                Binary,
                PatternSymmetric,
                Symmetric
            };
    settings.matrixProperties = matrixProperties;

    settings.storagePrecision = DOUBLE;
    settings.calculationPrecision = DOUBLE;

    Matrix<S>* mat = IO::readMatrix<S>(filename, settings);

    AlgorithmRecommender<C, S>::Algorithm algorithm = AlgorithmRecommender<C, S>::recommendAlgorithm(mat, &settings);
    Result result = algorithm(mat, &settings);

    std::cout << "Permanent: " << result.permanent << " - Computed in: " << result.time << " seconds." << std::endl;

    delete mat;

#ifdef MPI_AVAILABLE
    MPI_Finalize();
#endif

    return 0;
}
