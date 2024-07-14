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


class IO
{
public:
    template <class S>
    static void readSettings(std::string& filename, Settings& settings, int argc, char* argv[]);

    template <class S>
    static Matrix<S>* readMatrix(std::string filename, Settings& settings);

    template <class S>
    static Matrix<S>* denseToSparse(Matrix<S>* denseMatrix, int nnz);

    template <class S>
    static void order(Matrix<S>* matrix);

    template <class S>
    static void scale(Matrix<S>* matrix, const Settings& settings, ScalingCompact<S>* scalingCompact);

private:
    template <class S>
    static void skipOrder(Matrix<S>* matrix);

    template <class S>
    static void sortOrder(Matrix<S>* matrix);

    template <class S>
    static void trim(std::string &s);

    template <class S>
    static std::vector<std::string> split(const std::string& s, char delimiter);
};


template<class S>
void IO::scale(Matrix<S> *matrix, const Settings& settings, ScalingCompact<S>* scalingCompact)
{
    int nov = matrix->nov;
    S* mat = matrix->mat;
    S scalingIterationNo = settings.scalingIterationNo;

    S*& rowScale = scalingCompact->rowScale;
    S*& colScale = scalingCompact->colScale;

    rowScale = new S[nov];
    colScale = new S[nov];

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
                rowScale[iv] = double(nov) / sum;
        }

        for (int jv = 0; jv < nov; ++jv)
        {
            double sum = 0;
            for (int iv = 0; iv < nov; ++iv)
            {
                sum += mat[iv * nov + jv] * rowScale[iv] * colScale[jv];
            }
            if (sum != 0)
                colScale[jv] = double(nov) / sum;
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
    settings.binary = false;
    settings.undirected = false;
    settings.scaling = false;
    settings.scalingIterationNo = 1000;
    settings.threadC = omp_get_max_threads();
    settings.deviceID = 0;
    settings.gpuNum = 1;
    settings.partition = 5;

    bool filenameFound = false;
    for (int i = 1; i < argc; ++i)
    {
        std::vector<std::string> argumentSplitted = split<S>(argv[i], '=');
        std::string arg = argumentSplitted[0];
        std::string value = argumentSplitted[1];

        if (arg == "filename")
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
            else if (value == "xlocal_mshared")
            {
                settings.algorithm = XLOCALMSHARED;
            }
            else if (value == "xregister_mshared")
            {
                settings.algorithm = XREGISTERMSHARED;
            }
            else if (value == "xlocal_mglobal")
            {
                settings.algorithm = XLOCALMGLOBAL;
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
            else
            {
                std::cout << "UNKNOWN ALGORITHM: " << value << " - selecting automatically instead." << std::endl;
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
                std::cout << "UNKNOWN MODE: " << value << " - selecting CPU by default instead." << std::endl;
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
                throw std::runtime_error("An integer value should be provided to the thread_count argument!");
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
                throw std::runtime_error("An integer value should be provided to the device_id argument!");
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
                throw std::runtime_error("An integer value should be provided to the gpu_num argument!");
            }
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
                throw std::runtime_error("A double value should be provided to the scaling_threshold argument!");
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
                throw std::runtime_error("An unsigned integer value should be provided to the chunk_partitioning argument!");
            }
        }
        else
        {
            std::cout << "UNKNOWN ARGUMENT: " << arg << " - skipping it." << std::endl;
        }
    }

    if (!filenameFound)
    {
        throw std::runtime_error("You are required to provide the absolute path of the matrix file that you want to calculate the matrix permanent for to the executable of this program!");
    }
}

template <class S>
Matrix<S> *IO::readMatrix(std::string filename, Settings& settings)
{
    std::ifstream file(filename);
    if (!file.is_open())
    {
        throw std::runtime_error("File could not be opened.");
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

    int noRow, noCol, noLines;
    file >> noRow >> noCol >> noLines;

    double val;
    int x, y;

    std::vector<std::vector<std::pair<std::pair<int, int>, double>>> colBuckets(noCol);
    for(int i = 0; i < noLines; i++)
    {
        file >> x >> y;

        // binary read check
        if (!settings.binary) file >> val;
        else val = 1;

        if (isMTX)
        {
            x -= 1; // Convert from 1-based to 0-based
            y -= 1;
        }

        colBuckets[y].push_back({{x, y}, val});

        if (settings.undirected)
        {
            colBuckets[x].push_back({{y, x}, val});
        }
    }

    std::vector<std::vector<std::pair<std::pair<int, int>, double>>> rowBuckets(noRow);
    for (const auto& bucket: colBuckets)
    {
        for (const auto& el: bucket)
        {
            rowBuckets[el.first.first].push_back(el);
        }
    }

    colBuckets.clear();

    S* mat = new S[noRow * noCol];
    memset(mat, 0, sizeof(S) * noRow * noCol);
    for (const auto& bucket: rowBuckets)
    {
        for (const auto& el: bucket)
        {
            mat[el.first.first * noRow + el.first.second] = el.second;
        }
    }

    file.close();

    Matrix<S>* matrix = new Matrix<S>(mat, noRow);

    int nnz;
    if (settings.undirected)
    {
        nnz = noLines * 2;
    }
    else
    {
        nnz = noLines;
    }
    int size = noRow * noCol;
    double sparsity = (double(nnz) / double(size)) * 100;

    std::cout << "Number of rows/columns of matrix is: " << noRow << std::endl;
    std::cout << "Total number of nonzeros is: " << nnz << std::endl;
    std::cout << "Sparsity of the matrix is determined to be: " << sparsity << std::endl;

    matrix->sparsity = sparsity;

    return matrix;
}

template <class S>
void IO::order(Matrix<S> *matrix)
{
    if (matrix->sparsity < 10)
    {
        IO::skipOrder(matrix);
    }
    else if (matrix->sparsity < 50)
    {
        IO::sortOrder(matrix);
    }
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

    typedef std::pair<int, S*> Entry;
    Entry arr[nov];
    for (int j = 0; j < nov; j++)
    {
        int currNNZ = 0;
        S* col = new S[nov];
        memset(col, 0, sizeof(S) * nov);
        for(int i = 0; i < nov; i++)
        {
            S& entry = mat[i * nov + j];
            if (entry != 0)
            {
                col[i] = entry;
                ++currNNZ;
            }
        }
        arr[j] = Entry(currNNZ, col);
    }

    typedef std::vector<Entry*> Bucket;
    std::vector<Bucket> buckets(nov + 1);

    for (int i = 0; i < nov; ++i)
    {
        buckets[arr[i].first].push_back(&arr[i]);
    }

    S* tempMat = new S[nov * nov];
    int j = 0;
    for (int i = nov; i >= 0; --i)
    {
        for (Entry*& entryPtr: buckets[i])
        {
            memcpy(&tempMat[j * nov], entryPtr->second, sizeof(S) * nov);
            ++j;
            delete entryPtr->second;
        }
    }

    memcpy(mat, tempMat, sizeof(S) * nov * nov);
    delete[] tempMat;
}

template<class S>
Matrix<S> *IO::denseToSparse(Matrix<S>* denseMatrix, int nnz)
{
    SparseMatrix<S>* sparseMatrix = new SparseMatrix<S>(denseMatrix, nnz);
    delete denseMatrix;

    S* mat = sparseMatrix->mat;
    int* cptrs = sparseMatrix->cptrs;
    int* rptrs = sparseMatrix->rptrs;
    int* rows = sparseMatrix->rows;
    int* cols = sparseMatrix->cols;
    S* cvals = sparseMatrix->cvals;
    S* rvals = sparseMatrix->rvals;
    int nov = sparseMatrix->nov;

    int rowNNZ = 0;
    int colNNZ = 0;
    for (int i = 0 ; i < nov; ++i)
    {
        rptrs[i] = rowNNZ;
        cptrs[i] = colNNZ;
        for (int j = 0; j < nov; ++j)
        {
            if (mat[i * nov + j] != 0)
            {
                cols[rowNNZ] = j;
                rvals[rowNNZ] = mat[i * nov + j];
                ++rowNNZ;
            }
            if (mat[j * nov + i] != 0)
            {
                rows[colNNZ] = j;
                cvals[colNNZ] = mat[j*nov + i];
                ++colNNZ;
            }
        }
    }
    rptrs[nov] = rowNNZ;
    cptrs[nov] = colNNZ;

    return sparseMatrix;
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


#endif //SUPERMAN_IO_H
