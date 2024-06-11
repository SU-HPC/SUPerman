//
// Created by deniz on 4/13/24.
//

#ifndef SUPERMAN_REBORN_IO_H
#define SUPERMAN_REBORN_IO_H

#include "Matrix.h"
#include <string>
#include <fstream>
#include "Settings.h"
#include "SparseMatrix.h"
#include <vector>
#include <cstring>


class IO
{
public:
    template <class S>
    static Matrix<S>* readMatrix(std::string filename, Settings& settings);

    template <class S>
    static void skipOrder(Matrix<S>* matrix);

    template <class S>
    static void sortOrder(Matrix<S>* matrix, int nnz);

    template <class S>
    static Matrix<S>* denseToSparse(Matrix<S>* denseMatrix, int nnz);
};


template <class S>
Matrix<S> *IO::readMatrix(std::string filename, Settings& settings)
{
    std::ifstream file(filename);
    if (!file.is_open())
    {
        throw std::runtime_error("File could not be opened.");
    }

    bool anyComments = false;
    while (file.peek() == '%')
    {
        anyComments = true;
        file.ignore(2048, '\n');
    }

    int noRow, noCol, noLines;
    file >> noRow >> noCol >> noLines;

    double val;
    int x, y;

    std::vector<std::vector<std::pair<std::pair<int, int>, double>>> colBuckets(noCol);
    for(int i = 0; i < noLines; i++)
    {
        file >> x >> y >> val;

        if (anyComments)
        {
            x -= 1; // Convert from 1-based to 0-based
            y -= 1;
        }

        colBuckets[y].push_back({{x, y}, val});
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

    int nnz = noLines;
    int size = noRow * noCol;
    double sparsity = (double(nnz) / double(size)) * 100;

    std::cout << "Number of rows/columns of matrix is: " << noRow << std::endl;
    std::cout << "Total number of nonzeros is: " << nnz << std::endl;
    std::cout << "Sparsity of the matrix is determined to be: " << sparsity << std::endl;

    if (sparsity < 30)
    {
        std::cout << "Proceeding to use skip order..." << std::endl;
        IO::skipOrder(matrix);
    }
    else if (sparsity < 50)
    {
        std::cout << "Proceeding to use sort order..." << std::endl;
        IO::sortOrder(matrix, nnz);
    }

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
                                degrees[k]--;
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
void IO::sortOrder(Matrix<S>* matrix, int nnz)
{

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


#endif //SUPERMAN_REBORN_IO_H
