//
// Created by deniz on 4/13/24.
//

#ifndef SUPERMAN_REBORN_SPARSEMATRIX_H
#define SUPERMAN_REBORN_SPARSEMATRIX_H

#include <algorithm>
#include "Matrix.h"


template <class S>
class SparseMatrix: public Matrix<S>
{
public:
    SparseMatrix(Matrix<S>* densemat, int nnz);

    SparseMatrix(const SparseMatrix& other);
    SparseMatrix& operator=(const SparseMatrix& other) = delete;
    SparseMatrix(SparseMatrix&& other);
    SparseMatrix& operator=(SparseMatrix&& other) = delete;

    virtual ~SparseMatrix() override;

public:
    int* cptrs;
    int* rptrs;
    int* rows;
    int* cols;
    S* cvals;
    S* rvals;
    int nnz;
    double sparsity;
};


template<class S>
SparseMatrix<S>::SparseMatrix(Matrix<S>* densemat, int nnz)
:   Matrix<S>(std::move(*densemat)),
    nnz(nnz)
{
    int nov = this->noRow;

    rvals = new S[nnz];
    cvals = new S[nnz];
    cptrs = new int[nov + 1];
    rptrs = new int[nov + 1];
    rows = new int[nnz];
    cols = new int[nnz];

    sparsity = ((double)nnz / (double)(this->noRow * this->noCol)) * 100;
}

template<class S>
SparseMatrix<S>::SparseMatrix(const SparseMatrix &other)
:   Matrix<S>(other),
    nnz(other.nnz),
    sparsity(other.sparsity)
{
    int nov = this->noRow;

    rvals = new S[nnz];
    cvals = new S[nnz];
    cptrs = new int[nov + 1];
    rptrs = new int[nov + 1];
    rows = new int[nnz];
    cols = new int[nnz];

    for(int i = 0; i < nov + 1; i++)
    {
        cptrs[i] = other->cptrs[i];
        rptrs[i] = other->rptrs[i];
    }

    for(int i = 0; i < nnz; i++)
    {
        rvals[i] = other->rvals[i];
        cvals[i] = other->cvals[i];

        rows[i] = other->rows[i];
        cols[i] = other->cols[i];
    }
}

template<class S>
SparseMatrix<S>::SparseMatrix(SparseMatrix &&other)
:   Matrix<S>(std::move(other)),
    nnz(other.nnz),
    sparsity(other.sparsity)
{
    rvals = other.rvals;
    cvals = other.cvals;
    cptrs = other.cptrs;
    rptrs = other.rptrs;
    rows = other.rows;
    cols = other.cols;

    other.rvals = nullptr;
    other.cvals = nullptr;
    other.cptrs = nullptr;
    other.rptrs = nullptr;
    other.rows = nullptr;
    other.cols = nullptr;
}

template<class S>
SparseMatrix<S>::~SparseMatrix()
{
    std::cout << "Sparse destructor called" << std::endl;
    delete[] cptrs;
    delete[] rptrs;
    delete[] rows;
    delete[] cols;
    delete[] cvals;
    delete[] rvals;
}


#endif //SUPERMAN_REBORN_SPARSEMATRIX_H
