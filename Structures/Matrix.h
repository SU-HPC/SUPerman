//
// Created by deniz on 4/13/24.
//

#ifndef SUPERMAN_REBORN_MATRIX_H
#define SUPERMAN_REBORN_MATRIX_H

#include <iostream>


template <class S>
class Matrix
{
public:
    Matrix(int nov)
    :   nov(nov)
    {
        mat = new S[nov * nov];
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
    mat = new S[nov * nov];
    memcpy(mat, other.mat, sizeof(S) * nov * nov);
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
