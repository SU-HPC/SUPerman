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
    Matrix(int noRow, int noCol)
    :   noRow(noRow),
        noCol(noCol)
    {
        mat = new S[noRow * noCol];
    }

    Matrix(S* mat, int noRow, int noCol)
    :   mat(mat),
        noRow(noRow),
        noCol(noCol) {}

    Matrix(const Matrix& other);
    Matrix& operator=(const Matrix& other) = delete;
    Matrix(Matrix&& other);
    Matrix& operator=(Matrix&& other) = delete;

    virtual ~Matrix();

public:
    S* mat;
    int noRow;
    int noCol;
};


template<class S>
Matrix<S>::Matrix(const Matrix &other)
:   noRow(other.noRow),
    noCol(other.noCol)
{
    mat = new S[noRow * noCol];
    memcpy(mat, other.mat, sizeof(S) * noRow * noCol);
}

template<class S>
Matrix<S>::Matrix(Matrix &&other)
:   noRow(other.noRow),
    noCol(other.noCol)
{
    mat = other.mat;
    other.mat = nullptr;
}

template<class S>
Matrix<S>::~Matrix()
{
    std::cout << "Matrix destructor called" << std::endl;
    delete[] mat;
}


#endif //SUPERMAN_REBORN_MATRIX_H
