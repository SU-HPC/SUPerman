/*
 * This file is part of the SUperman repository: https://github.com/SU-HPC/SUPerman
 * Author(s): Deniz Elbek, Fatih Taşyaran, Bora Uçar, and Kamer Kaya.
 *
 * Please see the papers:
 * 
 * @article{Elbek2025SUperman,
 *   title   = {SUperman: Efficient Permanent Computation on GPUs},
 *   author  = {Elbek, Deniz and Taşyaran, Fatih and Uçar, Bora and Kaya, Kamer},
 *   journal = {arXiv preprint arXiv:2502.16577},
 *   year    = {2025},
 *   doi     = {10.48550/arXiv.2502.16577},
 *   url     = {https://arxiv.org/abs/2502.16577}
 * }
 *
 * @article{Elbek2025FullyAutomated,
 *   title   = {Fully-Automated Code Generation for Efficient Computation of Sparse Matrix Permanents on GPUs},
 *   author  = {Elbek, Deniz and Kaya, Kamer},
 *   journal = {arXiv preprint arXiv:2501.15126},
 *   year    = {2025},
 *   doi     = {10.48550/arXiv.2501.15126},
 *   url     = {https://arxiv.org/abs/2501.15126}
 * }
 */

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
bool printing = true;

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
            if (rowComponents.size() > 1)
            {
                printing = false;
            }
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
        if (std::isnan(result.permanent))
        {
            stream << "Permanent computation has overflowed." << " - Computed in: " << result.time << " seconds." << std::endl;
        }
        else
        {
            unsigned maxPrec = effectivePrecision(result.permanent);
            stream << "Permanent: " << std::setprecision (maxPrec) << result.permanent << " - Computed in: " << result.time << " seconds." << std::endl;
        }
        print(stream, rank, settings.PID, -1);

        delete matrix;
    }
    else
    {
        std::stringstream stream;
        stream << "MATRIX NAME: " << settings.filename << std::endl;
        print(stream, rank, settings.PID, 1);
        Matrix<std::complex<S>>* matrix = IO::readComplex<S>(settings.filename, settings);
        recompilationStatus(settings.pipe, 0, settings.rank);
        complexPerman<C, S>(matrix, &settings);
        delete matrix;
    }

#ifdef MPI_AVAILABLE
    finalizeMPI();
#endif

    return 0;
}
