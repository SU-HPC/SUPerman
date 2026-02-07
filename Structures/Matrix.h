/*
 * This file is part of the SUperman repository: https://github.com/SU-HPC/SUPerman
 * Author: Deniz Elbek
 *
 * Please see the papers:
 * 
 * @article{Elbek2026SUperman,
 *   title   = {SUperman: Efficient permanent computation on GPUs},
 *   author  = {Elbek, Deniz and Ta{\c{s}}yaran, Fatih and U{\c{c}}ar, Bora and Kaya, Kamer},
 *   journal = {Computer Physics Communications},
 *   volume  = {321},
 *   pages   = {110027},
 *   year    = {2026},
 *   doi     = {10.1016/j.cpc.2026.110027}
 *
 * @article{Elbek2025CodeGeneration,
 *   title   = {Fully-Automated Code Generation for Efficient Computation of Sparse Matrix Permanents on GPUs},
 *   author  = {Elbek, Deniz and Kaya, Kamer},
 *   journal = {arXiv preprint arXiv:2501.15126},
 *   year    = {2025},
 *   doi     = {10.48550/arXiv.2501.15126},
 * }
 */

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
