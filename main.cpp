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

double avgN = 0;
double avgNNZ = 0;
unsigned count = 0;

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

    IO::readSettings<S>(settings, argv, argc);

    if (!settings.complex)
    {
        std::stringstream stream;
        stream << "MATRIX NAME: " << settings.filename << std::endl;
        print(stream, rank, settings.PID, 1);
        Matrix<S>* matrix = IO::readMatrix<S>(settings.filename, settings);
        
        std::vector<std::vector<unsigned>> rowComponents;
        std::vector<std::vector<unsigned>> colComponents;
        unsigned biggestComponentSize;
        findCCs<S>(matrix, rowComponents, colComponents, biggestComponentSize);
        AlgorithmSelector<C, S>::Algorithm algorithm = AlgorithmSelector<C, S>::selectAlgorithm(matrix, &settings, biggestComponentSize);

        bool connectedComponentBased = (settings.algorithm != REGEFFICIENTCODEGENERATION && settings.algorithm != NAIVECODEGENERATION);
        Result result;
        if (connectedComponentBased)
        {
            result.time = 0;
            result.permanent = 0;
            if (matrix->nov != 0) result.permanent = 1;
            for (unsigned component = 0; component < rowComponents.size(); ++component)
            {
                std::vector<unsigned>& rowVerts = rowComponents[component];
                std::vector<unsigned>& colVerts = colComponents[component];

                if (rowVerts.size() != colVerts.size())
                {
                    result.permanent = 0;
                    break;
                }

                Matrix<S>* block = new Matrix<S>(rowVerts.size());
                for (unsigned i = 0; i < rowVerts.size(); ++i)
                {
                    for (unsigned j = 0; j < colVerts.size(); ++j)
                    {
                        block->mat[i * rowVerts.size() + j] = matrix->mat[rowVerts[i] * matrix->nov + colVerts[j]];
                    }
                }
            
                int nnz = getNNZ(block);
                block->sparsity = (double(nnz) / (block->nov * block->nov)) * 100;
    
                Result bres = algorithm(block, &settings);
                result.time += bres.time;
                result.permanent *= bres.permanent;
                
                delete block;
            }
        }
        else
        {
            result = algorithm(matrix, &settings);
        }

        avgN /= count;
        avgNNZ /= count;

        stream = std::stringstream();
        stream << "Submatrix count: " << count << " - Average N: " << avgN << " - Average NNZ: " << avgNNZ << std::endl;
        stream << "Permanent: " << std::setprecision (settings.printingPrecision) << result.permanent << " - Computed in: " << result.time << " seconds." << std::endl << std::endl;
        print(stream, rank, settings.PID, -1);

        delete matrix;
    }
    else
    {
        std::stringstream stream;
        stream << "MATRIX NAME: " << settings.filename << std::endl;
        print(stream, rank, settings.PID, 1);
        Matrix<std::complex<S>>* matrix = IO::readComplex<S>(settings.filename, settings);
        recompilationStatus(0, settings.rank);
        complexPerman<C, S>(matrix, &settings);
        delete matrix;
    }

#ifdef MPI_AVAILABLE
    finalizeMPI();
#endif

    return 0;
}
