//
// Created by deniz on 4/13/24.
//

#ifndef SUPERMAN_MATRIX_H
#define SUPERMAN_MATRIX_H

#include <iostream>
#include <cstring>


template <class S>
class Matrix
{
public:
    Matrix() = default;

    explicit Matrix(int nov)
    :   nov(nov)
    {
        int entry = nov * nov;
        mat = new S[entry];
        memset(mat, 0, sizeof(S) * entry);
    }

    Matrix(const Matrix& other);
    Matrix& operator=(const Matrix& other) = delete;
    Matrix(Matrix&& other);
    Matrix& operator=(Matrix&& other) = delete;

    virtual ~Matrix();

public:
    S* mat;
    int nov;
    double sparsity;
};


template<class S>
Matrix<S>::Matrix(const Matrix &other)
:   nov(other.nov),
    sparsity(other.sparsity)
{
    int entry = nov * nov;
    mat = new S[entry];
    memcpy(mat, other.mat, sizeof(S) * entry);
}

template<class S>
Matrix<S>::Matrix(Matrix &&other)
:   nov(other.nov),
    sparsity(other.sparsity)
{
    mat = other.mat;
    other.mat = nullptr;
}

template<class S>
Matrix<S>::~Matrix()
{
    delete[] mat;
}


#endif //SUPERMAN_MATRIX_H
