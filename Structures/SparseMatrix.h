/*
 * This file is part of the SUperman repository: https://github.com/SU-HPC/SUPerman
 * Author(s): Deniz Elbek, Fatih Taşyaran, Bora Uçar, and Kamer Kaya.
 *
 * Please see the papers:
 * 
 * @article{Elbek2025SUperman,
 *   title   = {SUperman: Efficient Permanent Computation on GPUs},
 *   author  = {Elbek, Deniz and Taşyaran, Fatih and Uçar, Bora and Kaya, Kamer},
 *   journal = {arXiv preprint arXiv:2502.16577},
 *   year    = {2025},
 *   doi     = {10.48550/arXiv.2502.16577},
 *   url     = {https://arxiv.org/abs/2502.16577}
 * }
 *
 * @article{Elbek2025FullyAutomated,
 *   title   = {Fully-Automated Code Generation for Efficient Computation of Sparse Matrix Permanents on GPUs},
 *   author  = {Elbek, Deniz and Kaya, Kamer},
 *   journal = {arXiv preprint arXiv:2501.15126},
 *   year    = {2025},
 *   doi     = {10.48550/arXiv.2501.15126},
 *   url     = {https://arxiv.org/abs/2501.15126}
 * }
 */

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
