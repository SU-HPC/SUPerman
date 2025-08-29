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

#ifndef SUPERMAN_PERMANENT_H
#define SUPERMAN_PERMANENT_H

#include "omp.h"
#include "Matrix.h"
#include "Settings.h"
#include <algorithm>
#include "Result.h"
#include "IO.h"


template <class C, class S>
class Permanent
{
public:
    Permanent(Matrix<S>* matrix, Settings settings)
    :
        m_Matrix(matrix),
        m_Settings(settings) {}

    Permanent(const Permanent& other) = delete;
    Permanent& operator=(const Permanent& other) = delete;
    Permanent(Permanent&& other) = delete;
    Permanent& operator=(Permanent&& other) = delete;

    virtual ~Permanent()
    {
        delete m_Matrix;
    }

    double computePermanent();
    virtual double permanentFunction() = 0;

public:
    Matrix<S>* m_Matrix;
    Settings m_Settings;
};


template <class C, class S>
double Permanent<C, S>::computePermanent()
{
    // cases for sparse
    if (m_Settings.algorithm == NAIVECODEGENERATION)
    {

    }
    else if (m_Settings.algorithm == REGEFFICIENTCODEGENERATION)
    {
        IO::UTOrder(m_Matrix);
    }
    else if (m_Settings.algorithm == APPROXIMATION)
    {
        IO::rowSort(m_Matrix);
        Matrix<S>* sparseMatrix = new SparseMatrix<S>(m_Matrix, getNNZ(m_Matrix));
        m_Matrix = sparseMatrix;
    }
    else if (sparse)
    {
        IO::colSort(m_Matrix);
        Matrix<S>* sparseMatrix = new SparseMatrix<S>(m_Matrix, getNNZ(m_Matrix));
        m_Matrix = sparseMatrix;
    }
    //

    return this->permanentFunction();
}


#endif //SUPERMAN_PERMANENT_H
