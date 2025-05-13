//
// Created by deniz on 4/13/24.
//

#ifndef SUPERMAN_IO_H
#define SUPERMAN_IO_H

#include "Matrix.h"
#include <string>
#include <fstream>
#include "Settings.h"
#include "SparseMatrix.h"
#include <vector>
#include <cstring>
#include <sstream>
#include "Helpers.h"
#include "algorithm"
#include "omp.h"
#include <cstdint>
#include "dm.h"
#include <complex>


class IO
{
public:
    template <class S>
    static void readSettings(std::string& filename, Settings& settings, int argc, char* argv[]);

    template <class S>
    static Matrix<S>* readMatrix(std::string filename, Settings& settings);

    template <class S>
    static Matrix<std::complex<S>>* readComplex(std::string filename, Settings& settings);

    template <class S>
    static void skipOrder(Matrix<S>* matrix);

    template <class S>
    static void sortOrder(Matrix<S>* matrix);

    template <class S>
    static void UTOrder(Matrix<S>* matrix);

    template <class C, class S>
    static void scale(Matrix<S>* matrix, const Settings& settings, ScalingCompact* scalingCompact);

    template <class S>
    static void writeMatrixToFile(Matrix<S>* matrix, std::string filename);

private:
    template <class S>
    static void applyPermutations(Matrix<S>* matrix, int* rowIPermutation, int* colIPermutation);

    template <class S>
    static void trim(std::string &s);

    template <class S>
    static std::vector<std::string> split(const std::string& s, char delimiter);
};


template<class C, class S>
void IO::scale(Matrix<S> *matrix, const Settings& settings, ScalingCompact* scalingCompact)
{
    int nov = matrix->nov;
    S* mat = matrix->mat;
    unsigned scalingIterationNo = settings.scalingIterationNo;
    unsigned scaleInto = settings.scaleInto;

    double*& rowScale = scalingCompact->rowScale;
    double*& colScale = scalingCompact->colScale;

    rowScale = new double[nov];
    colScale = new double[nov];

    for (int i = 0; i < nov; ++i)
    {
        rowScale[i] = colScale[i] = 1;
    }

    for (int i = 0; i < scalingIterationNo; ++i)
    {
        for (int iv = 0; iv < nov; ++iv)
        {
            double sum = 0;
            for (int jv = 0; jv < nov; ++jv)
            {
                sum += mat[iv * nov + jv] * rowScale[iv] * colScale[jv];
            }
            if (sum != 0)
                rowScale[iv] = double(scaleInto) / sum;
        }

        for (int jv = 0; jv < nov; ++jv)
        {
            double sum = 0;
            for (int iv = 0; iv < nov; ++iv)
            {
                sum += mat[iv * nov + jv] * rowScale[iv] * colScale[jv];
            }
            if (sum != 0)
                colScale[jv] = double(scaleInto) / sum;
        }
    }

    for (int i = 0; i < nov; ++i)
    {
        for (int j = 0; j < nov; ++j)
        {
            mat[i * nov + j] *= rowScale[i];
            mat[j * nov + i] *= colScale[i];
        }
    }
}

template <class S>
void IO::readSettings(std::string& filename, Settings& settings, int argc, char* argv[])
{
    settings.algorithm = AlgorithmEnds;
    settings.mode = Mode::CPU;
    settings.complex = false;
    settings.binary = false;
    settings.undirected = false;
    settings.scaling = false;
    settings.scalingIterationNo = 100;
    settings.scaleInto = 2;
    settings.printingPrecision = 50;
    settings.threadC = omp_get_max_threads();
    settings.deviceID = 0;
    settings.gpuNum = 1;
    settings.partition = 1;
    settings.calculationPrecision = KAHAN;

    bool pidFound = false;
    bool repoDirFound = false;
    bool filenameFound = false;
    for (int i = 1; i < argc; ++i)
    {
        std::vector<std::string> argumentSplitted = split<S>(argv[i], '=');
        std::string arg = argumentSplitted[0];
        std::string value = argumentSplitted[1];
        std::stringstream stream;

        if (arg == "pid")
        {
            try
            {
                settings.PID = std::stoi(value);
                if (settings.PID != 1 && settings.PID != 2)
                {
                    throw std::runtime_error("The pid argument must be either 1 or 2. If you are reading this, you are probably doing something you should not be doing. Use ./run_superman.sh located directly under the source directory instead!\n");
                }
                pidFound = true;
            }
            catch (const std::exception& e)
            {
                throw std::runtime_error("An integer value should be provided to the pid argument!\n");
            }
        }
        else if (arg == "repo_dir")
        {
            settings.REPO_DIR = value;
            repoDirFound = true;
        }
        else if (arg == "filename")
        {
            filename = value;
            filenameFound = true;
        }
        else if (arg == "algorithm")
        {
            if (value == "auto")
            {
                settings.algorithm = AlgorithmEnds;
            }
            else if (value == "xregister_mshared")
            {
                settings.algorithm = XREGISTERMSHARED;
            }
            else if (value == "xregister_mglobal")
            {
                settings.algorithm = XREGISTERMGLOBAL;
            }
            else if (value == "xshared_mglobal")
            {
                settings.algorithm = XSHAREDMGLOBAL;
            }
            else if (value == "xshared_mshared")
            {
                settings.algorithm = XSHAREDMSHARED;
            }
            else if (value == "xglobal_mglobal")
            {
                settings.algorithm = XGLOBALMGLOBAL;
            }
            else if (value == "xglobal_mshared")
            {
                settings.algorithm = XGLOBALMSHARED;
            }
            else if (value == "naive_code_generation")
            {
                settings.algorithm = NAIVECODEGENERATION;
            }
            else if (value == "register_efficient_code_generation")
            {
                settings.algorithm = REGEFFICIENTCODEGENERATION;
            }
            else if (value == "approximation")
            {
                settings.algorithm = APPROXIMATION;
            }
            else
            {
                stream << "UNKNOWN ALGORITHM: " << value << " - selecting automatically instead." << std::endl;
                print(stream, settings.rank, settings.PID, 1);
            }
        }
        else if (arg == "mode")
        {
            if (value == "cpu")
            {
                settings.mode = CPU;
            }
            else if (value == "single_gpu")
            {
                settings.mode = SingleGPU;
            }
            else if (value == "multi_gpu")
            {
                settings.mode = MultiGPU;
            }
            else if (value == "multi_gpu_mpi")
            {
                settings.mode = MultiGPUMPI;
            }
            else
            {
                stream << "UNKNOWN MODE: " << value << " - selecting CPU by default instead." << std::endl;
                print(stream, settings.rank, settings.PID, 1);
                settings.mode = CPU;
            }
        }
        else if (arg == "thread_count")
        {
            try
            {
                settings.threadC = std::stoi(value);
            }
            catch (const std::exception& e)
            {
                throw std::runtime_error("An integer value should be provided to the thread_count argument!\n");
            }
        }
        else if (arg == "device_id")
        {
            try
            {
                settings.deviceID = std::stoi(value);
            }
            catch (const std::exception& e)
            {
                throw std::runtime_error("An integer value should be provided to the device_id argument!\n");
            }
        }
        else if (arg == "gpu_num")
        {
            try
            {
                settings.gpuNum = std::stoi(value);
            }
            catch (const std::exception& e)
            {
                throw std::runtime_error("An integer value should be provided to the gpu_num argument!\n");
            }
        }
        else if (arg == "complex")
        {
            settings.complex = value == "true";
        }
        else if (arg == "binary")
        {
            settings.binary = value == "true";
        }
        else if (arg == "undirected")
        {
            settings.undirected = value == "true";
        }
        else if (arg == "scaling")
        {
            settings.scaling = value == "true";
        }
        else if (arg == "scaling_iteration_no")
        {
            try
            {
                settings.scalingIterationNo = std::stoul(value);
            }
            catch (const std::exception& e)
            {
                throw std::runtime_error("An integer value should be provided to the scaling_iteration_no argument!\n");
            }
        }
        else if (arg == "scale_into")
        {
            try
            {
                settings.scaleInto = std::stoul(value);
            }
            catch (const std::exception& e)
            {
                throw std::runtime_error("An integer value should be provided to the scale_into argument!\n");
            }
        }
        else if (arg == "printing_precision")
        {
            try
            {
                settings.printingPrecision = std::stoul(value);
            }
            catch (const std::exception& e)
            {
                throw std::runtime_error("An integer value should be provided to the printing_precision argument!\n");
            }
        }
        else if (arg == "chunk_partitioning")
        {
            try
            {
                settings.partition = std::stoul(value);
            }
            catch (const std::exception& e)
            {
                throw std::runtime_error("An unsigned integer value should be provided to the chunk_partitioning argument!\n");
            }
        }
        else if (arg == "calculation_precision")
        {
            if (value == "kahan")
            {
                settings.calculationPrecision = KAHAN;
            }
            else
            {
                settings.calculationPrecision = DD;
            }
        }
        else
        {
            stream << "UNKNOWN ARGUMENT: " << arg << " - skipping it." << std::endl;
            print(stream, settings.rank, settings.PID, 1);
        }
    }

    if (!pidFound)
    {
        throw std::runtime_error("You are required to provide the pid of the program to the executable. If you are reading this, you are probably doing something you should not be doing. Use ./run_superman.sh located directly under the source directory instead!\n");
    }
    if (!repoDirFound)
    {
        throw std::runtime_error("You are required to provide the absolute path of the repository directory to the executable of this program!\n");
    }
    if (!filenameFound)
    {
        throw std::runtime_error("You are required to provide the absolute path of the matrix file that you want to calculate the matrix permanent for to the executable of this program!\n");
    }
}

template <class S>
Matrix<S> *IO::readMatrix(std::string filename, Settings& settings)
{
    std::ifstream file(filename);
    if (!file.is_open())
    {
        throw std::runtime_error("File could not be opened.\n");
    }

    bool isMTX = false;
    std::string extension = split<S>(filename, '.').back();
    if (extension == "mtx")
    {
        isMTX = true;
    }

    while (file.peek() == '%')
    {
        file.ignore(2048, '\n');
    }

    int nov, noLines;
    file >> nov >> nov >> noLines;

    S val;
    int i, j;

    S* mat = new S[nov * nov];
    memset(mat, 0, sizeof(S) * nov * nov);
    int nnz = 0;
    for(int iter = 0; iter < noLines; ++iter)
    {
        file >> i >> j;

        // binary read check
        if (!settings.binary) file >> val;
        else val = 1;

        if (isMTX)
        {
            i -= 1; // Convert from 1-based to 0-based
            j -= 1;
        }

        mat[i * nov + j] = val;
        ++nnz;

        if (settings.undirected && i != j)
        {
            mat[j * nov + i] = val;
            ++nnz;
        }
    }

    file.close();

    int size = nov * nov;
    double sparsity = (double(nnz) / double(size)) * 100;

    std::stringstream stream;
    stream << "Number of rows/columns of matrix is: " << nov << std::endl;
    stream << "Total number of nonzeros is: " << nnz << std::endl;
    stream << "Sparsity of the matrix is determined to be: " << sparsity << std::endl;
    print(stream, settings.rank, settings.PID, 1);

    // for dm
    int* rptrs = new int[nov + 1];
    rptrs[0] = 0;
    int* cids = new int[nnz];
    int nnzSeen = 0;
    for (int i = 0; i < nov; ++i)
    {
        for (int j = 0; j < nov; ++j)
        {
            if (mat[i * nov + j] != 0)
            {
                cids[nnzSeen++] = j;
            }
        }
        rptrs[i + 1] = nnzSeen;
    }
    dm(rptrs, cids, nov, nnz);

    Matrix<S>* matrix = new Matrix<S>(nov);
    S* newMat = matrix->mat;
    for (int i = 0; i < nov; ++i)
    {
        for (int ptr = rptrs[i]; ptr < rptrs[i + 1]; ++ptr)
        {
            newMat[i * nov + cids[ptr]] = mat[i * nov + cids[ptr]];
        }
    }

    delete[] rptrs;
    delete[] cids;
    delete[] mat;
    // for dm

    size = nov * nov;
    sparsity = (double(nnz) / double(size)) * 100;
    matrix->sparsity = sparsity;

    stream = std::stringstream();
    stream << "Total number of nonzeros after DM is: " << nnz << std::endl;
    stream << "Sparsity of the matrix after DM is determined to be: " << sparsity << std::endl;
    print(stream, settings.rank, settings.PID, 1);

    return matrix;
}

template <class S>
Matrix<std::complex<S>> *IO::readComplex(std::string filename, Settings &settings)
{
    std::ifstream file(filename);
    if (!file.is_open())
    {
        throw std::runtime_error("File could not be opened.\n");
    }

    bool isMTX = false;
    std::string extension = split<S>(filename, '.').back();
    if (extension == "mtx")
    {
        isMTX = true;
    }

    while (file.peek() == '%')
    {
        file.ignore(2048, '\n');
    }

    int nov, noLines;
    file >> nov >> nov >> noLines;

    std::complex<S> entry;
    S real;
    S imag;
    int i, j;

    Matrix<std::complex<S>>* matrix = new Matrix<std::complex<S>>(nov);
    std::complex<S>* mat = matrix->mat;
    for(int iter = 0; iter < noLines; ++iter)
    {
        file >> i >> j;
        file >> real >> imag;
        entry.real(real);
        entry.imag(imag);

        if (isMTX)
        {
            i -= 1; // Convert from 1-based to 0-based
            j -= 1;
        }

        mat[i * nov + j] = entry;

        if (settings.undirected)
        {
            mat[j * nov + i] = entry;
        }
    }

    file.close();

    int nnz;
    if (settings.undirected)
    {
        nnz = noLines * 2;
    }
    else
    {
        nnz = noLines;
    }
    int size = nov * nov;
    double sparsity = (double(nnz) / double(size)) * 100;

    std::stringstream stream;
    stream << "Number of rows/columns of matrix is: " << nov << std::endl;
    stream << "Total number of nonzeros is: " << nnz << std::endl;
    stream << "Sparsity of the matrix is determined to be: " << sparsity << std::endl;
    print(stream, settings.rank, settings.PID, 1);

    matrix->sparsity = sparsity;

    return matrix;
}

template<class S>
void IO::skipOrder(Matrix<S>* matrix)
{
    S* mat = matrix->mat;
    int nov = matrix->nov;

    int rowPermutation[nov]; // shows where the rth row has gone to
    int colPermutation[nov]; // shows where the cth col has gone to
    bool visited[nov];
    int degrees[nov]; // note that this is in-degree

    for (int i = 0; i < nov; ++i)
    {
        rowPermutation[i] = i;
        colPermutation[i] = i;
        degrees[i] = 0;
        visited[i] = false;
    }

    for (int i = 0; i < nov; ++i)
    {
        for (int j = 0; j < nov; ++j)
        {
            if (mat[i * nov + j] != 0)
            {
                ++degrees[j];
            }
        }
    }

    int i = 0;
    for (int j = 0; j < nov; ++j)
    {
        int currentCol;
        int temp = INT8_MAX;
        for (int l = 0; l < nov; ++l)
        {
            if (degrees[l] < temp)
            {
                temp = degrees[l];
                currentCol = l;
            }
        }
        degrees[currentCol] = INT8_MAX;
        colPermutation[j] = currentCol;
        for (int l = 0; l < nov; ++l)
        {
            if (mat[l * nov + currentCol] != 0)
            {
                if (!visited[l])
                {
                    visited[l] = true;
                    rowPermutation[i] = l;
                    ++i;
                    for (int k = 0; k < nov; ++k)
                    {
                        if (mat[l * nov + k] != 0)
                        {
                            if (degrees[k] != INT8_MAX)
                            {
                                --degrees[k];
                            }
                        }
                    }
                }
            }
        }
    }

    S* matPrev = new S[nov * nov];
    memcpy(matPrev, mat, sizeof(S) * nov * nov);

    for (int r = 0; r < nov; ++r)
    {
        for(int c = 0; c < nov; ++c)
        {
            mat[r * nov + c] = matPrev[rowPermutation[r] * nov + colPermutation[c]];
        }
    }

    delete[] matPrev;
}

template<class S>
void IO::sortOrder(Matrix<S>* matrix)
{
    S* mat = matrix->mat;
    int nov = matrix->nov;

    std::vector<int> indegrees(nov);
    for (int j = 0; j < nov; ++j) 
    {
        int indegree = 0;
        for (int i = 0; i < nov; ++i)
        {
            if (mat[i * nov + j] != 0)
            {
                ++indegree;
            }
        }
        indegrees[j] = indegree;
    }

    S* newMat = new S[nov * nov];
    for (int outCol = 0; outCol < nov; ++outCol) 
    {
        int mindegree = INT32_MAX;
        int chosen = 0;
        for (int j = 0; j < nov; ++j) 
        {
            if (indegrees[j] < mindegree) 
            {
                mindegree = indegrees[j];
                chosen = j;
            }
        }

        indegrees[chosen] = INT32_MAX;

        for (int i = 0; i < nov; ++i) 
        {
            newMat[i * nov + outCol] = mat[i * nov + chosen];
        }
    }

    matrix->mat = newMat;
    delete[] mat;
}

template<class S>
void IO::UTOrder(Matrix<S>* matrix)
{
    int nov = matrix->nov;
    S* mat = matrix->mat;

    std::vector<int> rowPerm(nov), colPerm(nov);
    for (int i = 0; i < nov; ++i)
    {
        rowPerm[i] = colPerm[i] = i;
    }

    std::vector<unsigned> indegrees(nov);
    for (int j = 0; j < nov; ++j) 
    {
        unsigned d = 0;
        for (int i = 0; i < nov; ++i)
        {    
            if (mat[i * nov + j] != 0)
            {
                ++d;
            }
        }
        indegrees[j] = d;
    }

    std::vector<bool> rowMarked(nov, false);
    int nextRow = 0;

    for (int step = 0; step < nov; ++step) 
    {
        unsigned mind = UINT32_MAX;
        int chosen = 0;
        for (int j = 0; j < nov; ++j) 
        {
            if (indegrees[j] < mind) 
            {
                mind = indegrees[j];
                chosen = j;
            }
        }

        colPerm[chosen] = step;
        indegrees[chosen] = UINT32_MAX;

        for (int i = 0; i < nov; ++i) 
        {
            if (mat[i * nov + chosen] == 0) continue;

            if (!rowMarked[i]) 
            {
                rowMarked[i] = true;
                rowPerm[i] = nextRow++;

                for (int j = 0; j < nov; ++j) 
                {
                    if (indegrees[j] == UINT32_MAX) continue;
                    
                    if (mat[i * nov + j] != 0)
                    {
                        --indegrees[j];
                    }
                }
            }
        }
    }

    for (int i = 0; i < nov; ++i) 
    {
        if (!rowMarked[i])
        {
            rowPerm[i] = nextRow++;
        }
    }

    applyPermutations(matrix, rowPerm.data(), colPerm.data());
}

template<class S>
void IO::applyPermutations(Matrix<S>* matrix, int *rowIPermutation, int* colIPermutation)
{
    int nov = matrix->nov;
    S* mat = matrix->mat;
    S* newMat = new S[nov * nov];

    for (int i = 0; i < nov; ++i)
    {
        for (int j = 0; j < nov; ++j)
        {
            newMat[rowIPermutation[i] * nov + colIPermutation[j]] = mat[i * nov + j];
        }
    }

    matrix->mat = newMat;
    delete[] mat;
}

template <class S>
void IO::trim(std::string &s)
{
    s.erase(s.begin(), std::find_if(s.begin(), s.end(), [](unsigned char ch)
    {
        return !std::isspace(ch);
    }));
    s.erase(std::find_if(s.rbegin(), s.rend(), [](unsigned char ch)
    {
        return !std::isspace(ch);
    }).base(), s.end());
}

template <class S>
std::vector<std::string> IO::split(const std::string& s, char delimiter)
{
    std::vector<std::string> tokens;
    std::string token;
    std::istringstream tokenStream(s);

    while (std::getline(tokenStream, token, delimiter))
    {
        trim<S>(token);
        tokens.push_back(token);
    }

    return tokens;
}

template <class S>
void IO::writeMatrixToFile(Matrix<S>* matrix, std::string filename)
{
    int nov = matrix->nov;
    S* mat = matrix->mat;
    int nnz = getNNZ(matrix);

    std::ofstream file(filename);

    file << nov << ' ' << nov << ' ' << nnz << std::endl;
    for (int i = 0; i < nov; ++i)
    {
        for (int j = 0; j < nov; ++j)
        {
            if (mat[i * nov + j] == 0)
            {
                continue;
            }

            file << i + 1 << ' ' << j + 1 << ' ' << mat[i * nov + j] << std::endl;
        }
    }

    file.close();
}


#endif //SUPERMAN_IO_H
