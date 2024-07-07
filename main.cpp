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
    std::cout << "MATRIX NAME: " << filename << std::endl;
    Matrix<S>* matrix = IO::readMatrix<S>(filename, settings);

    S* rowScale;
    S* colScale;
    if (settings.scaling)
    {
        rowScale = new S[matrix->nov];
        colScale = new S[matrix->nov];
        IO::scale(matrix, settings, rowScale, colScale);
    }

    AlgorithmRecommender<C, S>::selectAlgorithm(matrix, &settings);
    AlgorithmRecommender<C, S>::Algorithm algorithm = AlgorithmRecommender<C, S>::selectMode(matrix, &settings);
    Result result = algorithm(matrix, &settings);

    if (settings.scaling)
    {
        for (int i = 0; i < matrix->nov; ++i)
        {
            result.permanent /= rowScale[i];
            result.permanent /= colScale[i];
        }

        delete[] rowScale;
        delete[] colScale;
    }

    if (machineID == 0)
    {
        std::cout << "Permanent: " << result.permanent << " - Computed in: " << result.time << " seconds." << std::endl;
    }

    delete matrix;

    std::cout << std::endl;

#ifdef MPI_AVAILABLE
    MPI_Finalize();
#endif

    return 0;
}
