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


int main()
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
    while (IO::readSettings<S>(filename, settings))
    {
        std::cout << "MATRIX NAME: " << filename << std::endl;
        Matrix<S>* mat = IO::readMatrix<S>(filename, settings);

        AlgorithmRecommender<C, S>::Algorithm algorithm = AlgorithmRecommender<C, S>::recommendAlgorithm(mat, &settings);
        Result result = algorithm(mat, &settings);

        if (machineID == 0)
        {
            std::cout << "Permanent: " << result.permanent << " - Computed in: " << result.time << " seconds." << std::endl;
        }

        delete mat;

        std::cout << std::endl;
    }

#ifdef MPI_AVAILABLE
    MPI_Finalize();
#endif

    return 0;
}
