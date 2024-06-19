//
// Created by deniz on 4/13/24.
//

#include "IO.h"
#include <iostream>
#include "AlgorithmRecommender.h"
#ifdef MPI_AVAILABLE
#include "mpi.h"
#endif


// will be determined at runtime
#define S float
#define C double


int main(int argc, const char* argv[])
{
    Settings settings;
    if (argc == 5) settings.gpuNum = std::stoi(argv[4]);

    int machineID = 0;
#ifdef MPI_AVAILABLE
    int numberOfProcessors;

    MPI_Init(nullptr, nullptr);
    MPI_Comm_rank(MPI_COMM_WORLD, &machineID);
    MPI_Comm_size(MPI_COMM_WORLD, &numberOfProcessors);
    settings.machineID = machineID;
    settings.processorNum = numberOfProcessors;
#endif

    std::cout << "MATRIX NAME: " << argv[1] << std::endl;
    Matrix<S>* mat = IO::readMatrix<S>(argv[1], settings);

    AlgorithmRecommender<C, S>::Algorithm algorithm = AlgorithmRecommender<C, S>::recommendAlgorithm(mat, &settings, std::stoi(argv[2]), std::stoi(argv[3]));
    Result result = algorithm(mat, &settings);

    if (machineID == 0)
    {
        std::cout << "Permanent: " << result.permanent << " - Computed in: " << result.time << " seconds." << std::endl;
    }

    delete mat;

#ifdef MPI_AVAILABLE
    MPI_Finalize();
#endif

    return 0;
}
