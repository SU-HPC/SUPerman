//
// Created by deniz on 6/6/24.
//

#ifndef SUPERMAN_HELPERS_H
#define SUPERMAN_HELPERS_H

#include "Matrix.h"
#include <cmath>


template <class S>
struct ScalingCompact
{
    ~ScalingCompact()
    {
        delete[] rowScale;
        delete[] colScale;
    }

    S *rowScale;
    S *colScale;
};

template <class S>
inline int getRowNNZ(Matrix<S>* matrix, int vertex)
{
    S* mat = matrix->mat;

    int row = vertex * matrix->nov;
    int nnz = 0;
    for (int j = 0; j < matrix->nov; ++j)
    {
        if (mat[row + j] != 0)
        {
            ++nnz;
        }
    }
    return nnz;
}

template <class S>
inline int getColNNZ(Matrix<S>* matrix, int vertex)
{
    S* mat = matrix->mat;

    int nnz = 0;
    for (int i = 0; i < matrix->nov; ++i)
    {
        if (mat[i * matrix->nov + vertex] != 0)
        {
            ++nnz;
        }
    }
    return nnz;
}

template <class S>
inline int getMinDegree(Matrix<S>* matrix)
{
    int minDegree = matrix->nov;
    for (int i = 0; i < matrix->nov; ++i)
    {
        int rowDegree = getRowNNZ(matrix, i);
        int colDegree = getColNNZ(matrix, i);
        if (rowDegree < minDegree) minDegree = rowDegree;
        if (colDegree < minDegree) minDegree = colDegree;
    }
    return minDegree;
}

template <class S>
inline int getNNZ(Matrix<S>* matrix)
{
    S* mat = matrix->mat;

    int entry = matrix->nov * matrix->nov;
    int nnz = 0;
    for(int i = 0; i < entry; ++i)
    {
        if (mat[i] != 0)
        {
            ++nnz;
        }
    }

    return nnz;
}

template <class S>
inline bool isRankDeficient(Matrix<S>* matrix)
{
    for (int i = 0; i < matrix->nov; ++i)
    {
        if (getRowNNZ(matrix, i) == 0) return true;
        if (getColNNZ(matrix, i) == 0) return true;
    }
    return false;
}

template<class S>
inline S getMax(Matrix<S>* matrix, S* xv)
{
    int nov = matrix->nov;
    S* mat = matrix->mat;

    S xMax = 0;
    for (int i = 0; i < nov; ++i)
    {
        for (int j = 0; j < nov; ++j)
        {
            S val = xv[i] * mat[i * nov + j];
            if (xMax < val)
            {
                xMax = val;
            }
        }
    }
    return xMax;
}

template <class C>
C computeFactorial(int n)
{
    if (n == 0 || n == 1)
    {
        return 1;
    }

    C fac = 1;
    for (int i = 2; i <=n; ++i)
    {
        fac *= i;
    }

    return fac;
}

template <class C, class S>
C generatePermanentKnownMatrix(Matrix<S>** matrix, int nov, int entry)
{
    *matrix = new Matrix<S>(nov);

    (*matrix)->sparsity = 100;

    S* mat = (*matrix)->mat;
    for (int i = 0; i < nov * nov; ++i)
    {
        mat[i] = entry;
    }

    return computeFactorial<C>(nov) * std::pow(entry, nov);
}


#endif //SUPERMAN_HELPERS_H
