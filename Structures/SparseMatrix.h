//
// Created by deniz on 4/13/24.
//

#ifndef SUPERMAN_SPARSEMATRIX_H
#define SUPERMAN_SPARSEMATRIX_H

#include "Matrix.h"


template <class S>
class SparseMatrix: public Matrix<S>
{
public:
    SparseMatrix(Matrix<S>* matrix, int nnz);

    SparseMatrix(const SparseMatrix& other) = delete;
    SparseMatrix& operator=(const SparseMatrix& other) = delete;
    SparseMatrix(SparseMatrix&& other) = delete;
    SparseMatrix& operator=(SparseMatrix&& other) = delete;

    virtual ~SparseMatrix() override;

public:
    // for ccs
    int* cptrs;
    int* rows;
    S* cvals;

    // for csr
    int* rptrs;
    int* cols;
    S* rvals;

    // for both
    int nnz;
};


template<class S>
SparseMatrix<S>::SparseMatrix(Matrix<S>* matrix, int nnz)
:   Matrix<S>(std::move(*matrix)),
    nnz(nnz)
{
    int nov = this->nov;

    rvals = new S[nnz];
    cvals = new S[nnz];
    cptrs = new int[nov + 1];
    rptrs = new int[nov + 1];
    rows = new int[nnz];
    cols = new int[nnz];
    S* mat = this->mat;

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
                cvals[colNNZ] = mat[j * nov + i];
                ++colNNZ;
            }
        }
    }
    rptrs[nov] = rowNNZ;
    cptrs[nov] = colNNZ;

    delete matrix; // let's take the ownership for now
}

template<class S>
SparseMatrix<S>::~SparseMatrix()
{
    delete[] cptrs;
    delete[] rptrs;
    delete[] rows;
    delete[] cols;
    delete[] cvals;
    delete[] rvals;
}


#endif //SUPERMAN_SPARSEMATRIX_H
