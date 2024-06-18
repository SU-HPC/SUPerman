//
// Created by delbek on 6/18/24.
//

#include "IO.h"
#include <iostream>
#include "AlgorithmRecommender.h"
#include <filesystem>
#include <stdexcept>
#ifdef MPI_AVAILABLE
#include "mpi.h"
#endif

namespace fs = std::filesystem;


// will be determined at runtime
#define S float
#define C double
#define DIRECTORY "../../matrices/"
#define GPU_NUM 1


int main()
{
    Settings settings;
    settings.gpuNum = GPU_NUM;

    int machineID = 0;
#ifdef MPI_AVAILABLE
    int numberOfProcessors;

    MPI_Init(nullptr, nullptr);
    MPI_Comm_rank(MPI_COMM_WORLD, &machineID);
    MPI_Comm_size(MPI_COMM_WORLD, &numberOfProcessors);
    settings.machineID = machineID;
    settings.processorNum = numberOfProcessors;
#endif

    try
    {
        for (const auto& entry: fs::directory_iterator(DIRECTORY))
        {
            std::cout << "MATRIX NAME: " << entry << std::endl;
            Matrix<S>* mat = IO::readMatrix<S>(entry.path(), settings);

            for (int mode = 0; mode < 2; ++mode)
            {
                for (int algo = 1; algo < 5; ++algo)
                {
                    if (mode == 0) algo = 0;

                    AlgorithmRecommender<C, S>::Algorithm algorithm = AlgorithmRecommender<C, S>::recommendAlgorithm(mat, &settings, mode, algo);
                    Result result = algorithm(mat, &settings);

                    if (machineID == 0)
                    {
                        std::cout << "Permanent: " << result.permanent << " - Computed in: " << result.time << " seconds." << std::endl;
                    }

                    if (mode == 0) break;
                }
            }

            delete mat;
            std::cout << std::endl;
            std::cout << std::endl;
        }
    }
    catch (std::exception& e)
    {
        std::cout << "An error has occured." << std::endl;
        std::cout << "SKIPPING THIS MATRIX!" << std::endl;
    }

#ifdef MPI_AVAILABLE
    MPI_Finalize();
#endif

    return 0;
}
