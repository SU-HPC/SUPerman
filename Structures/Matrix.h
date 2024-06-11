//
// Created by deniz on 4/13/24.
//

#ifndef SUPERMAN_REBORN_MATRIX_H
#define SUPERMAN_REBORN_MATRIX_H

#include <iostream>
#include <cstring>


template <class S>
class Matrix
{
public:
    Matrix() {}

    Matrix(int nov)
    :   nov(nov)
    {
        int entry = nov * nov;
        mat = new S[entry];
        memset(mat, 0, sizeof(S) * entry);
    }

    Matrix(S* mat, int nov)
    :   mat(mat),
        nov(nov) {}

    Matrix(const Matrix& other);
    Matrix& operator=(const Matrix& other) = delete;
    Matrix(Matrix&& other);
    Matrix& operator=(Matrix&& other) = delete;

    virtual ~Matrix();

public:
    S* mat;
    int nov;
};


template<class S>
Matrix<S>::Matrix(const Matrix &other)
:   nov(other.nov)
{
    int entry = nov * nov;
    mat = new S[entry];
    memcpy(mat, other.mat, sizeof(S) * entry);
}

template<class S>
Matrix<S>::Matrix(Matrix &&other)
:   nov(other.nov)
{
    mat = other.mat;
    other.mat = nullptr;
}

template<class S>
Matrix<S>::~Matrix()
{
    delete[] mat;
}


#endif //SUPERMAN_REBORN_MATRIX_H
