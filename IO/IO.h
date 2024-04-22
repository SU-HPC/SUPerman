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
    static void skipOrder(Matrix<S>* densemat);

    template <class S>
    static void sortOrder(Matrix<S>* densemat);

    template <class S>
    static Matrix<S>* matToSparse(Matrix<S>* densemat, int nnz);
};


template <class S>
Matrix<S> *IO::readMatrix(std::string filename, Settings& settings)
{
    std::ifstream file(filename);

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

        x -= 1; // Convert from 1-based to 0-based
        y -= 1;

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

    Matrix<S>* densemat = new Matrix<S>(mat, noRow, noCol);

    double nnz = noLines;
    double size = noRow * noCol;
    double sparsity = (nnz / size) * 100;

    std::cout << "Sparsity of the matrix is determined to be: " << sparsity << std::endl;
    if (sparsity < 30)
    {
        std::cout << "Proceed to use skip order" << std::endl;
        IO::skipOrder(densemat);
        return IO::matToSparse(densemat, nnz);
    }
    if (sparsity < 50)
    {
        std::cout << "Proceed to use sort order" << std::endl;
        IO::sortOrder(densemat);
        return IO::matToSparse(densemat, nnz);
    }

    return densemat;
}

template<class S>
void IO::skipOrder(Matrix<S>* densemat)
{
    S* mat = densemat->mat;
    int nov = densemat->noRow;

    int rowPerm[nov];
    int colPerm[nov];
    bool rowVisited[nov];
    int degs[nov];

    for(int i = 0; i < nov; i++)
    {
        rowPerm[i] = 0;
        colPerm[i] = 0;
    }

    for (int j = 0; j < nov; j++)
    {
        degs[j] = 0;
        rowVisited[j] = false;
    }

    for (int i = 0; i < nov; i++)
    {
        for (int j = 0; j < nov; j++)
        {
            if (mat[i*nov + j] != 0)
            {
                degs[j]++;
            }
        }
    }

    int i = 0;
    for (int j = 0; j < nov; j++)
    {
        int curCol;
        int temp = INT8_MAX;
        for (int l = 0; l < nov; l++)
        {
            if (degs[l] < temp)
            {
                temp = degs[l];
                curCol = l;
            }
        }
        degs[curCol] = INT8_MAX;
        colPerm[j] = curCol;
        for (int l = 0; l < nov; l++)
        {
            if (mat[l*nov + curCol] != 0)
            {
                if (!rowVisited[l])
                {
                    rowVisited[l] = true;
                    rowPerm[i] = l;
                    i++;
                    for (int k = 0; k < nov; k++)
                    {
                        if (mat[l*nov + k] != 0)
                        {
                            if (degs[k] != INT8_MAX)
                            {
                                degs[k]--;
                            }
                        }
                    }
                }
            }
        }
    }

    S* matPrev = new S[nov*nov];
    for (int r = 0; r < nov; r++)
    {
        for(int c = 0; c < nov; c++)
        {
            matPrev[r*nov + c] = mat[r*nov + c];
        }
    }

    for (int r = 0; r < nov; r++)
    {
        for(int c = 0; c < nov; c++)
        {
            mat[r*nov + c] = matPrev[rowPerm[r]*nov + colPerm[c]];
        }
    }

    delete[] matPrev;
}

template<class S>
void IO::sortOrder(Matrix<S>* densemat)
{

}

template<class S>
Matrix<S> *IO::matToSparse(Matrix<S>* densemat, int nnz)
{
    //Note that there is a known bug about generated dense grid graph to sparse matrix

    SparseMatrix<S>* sparsemat = new SparseMatrix<S>(densemat, nnz);
    delete densemat;

    int curr_elt_r = 0;
    int curr_elt_c = 0;

    S* mat = sparsemat->mat;
    int* cptrs = sparsemat->cptrs;
    int* rptrs = sparsemat->rptrs;
    int* rows = sparsemat->rows;
    int* cols = sparsemat->cols;
    S* cvals = sparsemat->cvals;
    S* rvals = sparsemat->rvals;
    int nov = sparsemat->noRow;

    for (int i = 0; i < nov; ++i)
    {
        rptrs[i] = curr_elt_r;
        cptrs[i] = curr_elt_c;
        for(int j = 0; j < nov; ++j)
        {
            if (mat[i*nov + j] > 0)
            {
                cols[curr_elt_r] = j; // invalid write
                rvals[curr_elt_r] = mat[i*nov + j]; // invalid write
                curr_elt_r++;
            }
            if (mat[j*nov + i] > 0)
            {
                rows[curr_elt_c] = j; // invalid write
                cvals[curr_elt_c] = mat[j*nov + i]; // invalid write
                curr_elt_c++;
            }
        }
    }
    rptrs[nov] = curr_elt_r;
    cptrs[nov] = curr_elt_c;

    return sparsemat;
}


#endif //SUPERMAN_REBORN_IO_H
