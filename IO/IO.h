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


class IO
{
public:
    template <class S>
    static Matrix<S>* readMatrix(std::string filename, Settings& settings);

private:
    template <class S>
    static void skipOrder(Matrix<S>* matrix);

    template <class S>
    static void sortOrder(Matrix<S>* matrix, int nnz);

    template <class S>
    static Matrix<S>* denseToSparse(Matrix<S>* matrix, int nnz);
};


template <class S>
Matrix<S> *IO::readMatrix(std::string filename, Settings& settings)
{
    std::ifstream file(filename);
    if (!file.is_open())
    {
        throw std::runtime_error("File could not be opened.");
    }

    bool isPattern = false;
    bool isBinary = false;
    bool isSymmetric = false;
    for (auto& property: settings.matrixProperties)
    {
        if (property == MatrixProperty::PatternSymmetric)
        {
            isPattern = true;
        }
        if (property == MatrixProperty::Binary)
        {
            isBinary = true;
        }
        if (property == MatrixProperty::Symmetric)
        {
            isSymmetric = true;
        }
    }

    //Ignore comment headers
    while (file.peek() == '%') file.ignore(2048, '\n');

    int noRow, noCol, noLines;
    file >> noRow >> noCol >> noLines;

    S* mat = new S[noRow * noCol];

    for(int i = 0; i < (noRow * noCol); i++)
    {
        mat[i] = (S)0;
    }

    double cast;
    int x, y;

    for(int i = 0; i < noLines; i++)
    {
        if(isPattern)
        {
            file >> x >> y;
            cast = (int)1; // Just for safety
        }
        else if(!isPattern && isBinary)
        {
            file >> x >> y >> cast;
            cast = (int)1; // Just for safety
        }
        else
        {
            file >> x >> y >> cast;
        }

//        x -= 1; // Convert from 1-based to 0-based
//        y -= 1;

        if (isPattern || isBinary)
            mat[x * noRow + y] = (int)1;
        else
            mat[x * noRow + y] = (S)cast;

        if (isSymmetric)
        {
            if(x != y)
            {
                if(isPattern || isBinary)
                    mat[y * noRow + x] = (int)1;
                else
                    mat[y * noRow + x] = (S)cast;
            }
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
        return IO::denseToSparse(matrix, nnz);
    }
    if (sparsity < 50)
    {
        std::cout << "Proceeding to use sort order..." << std::endl;
        IO::sortOrder(matrix, nnz);
        return IO::denseToSparse(matrix, nnz);
    }

    return matrix;
}

template<class S>
void IO::skipOrder(Matrix<S>* matrix)
{

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
