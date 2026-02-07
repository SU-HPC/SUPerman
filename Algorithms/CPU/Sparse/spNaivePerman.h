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

#ifndef SUPERMAN_SPNAIVEPERMAN_H
#define SUPERMAN_SPNAIVEPERMAN_H

#include "Permanent.h"
#include "SparseMatrix.h"
#include <cstring>
#include "omp.h"


template <class C, class S>
class spNaivePerman: public Permanent<C, S>
{
public:
    spNaivePerman(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};


template<class C, class S>
double spNaivePerman<C, S>::permanentFunction()
{
    SparseMatrix<S>* sp = dynamic_cast<SparseMatrix<S>*>(this->m_Matrix);

    int nov = sp->nov;
    S* mat = sp->mat;
    int* cptrs = sp->cptrs;
    int* rows = sp->rows;
    S* cvals = sp->cvals;
    int* rptrs = sp->rptrs;
    int* cols = sp->cols;
    S* rvals = sp->rvals;

    int threads = this->m_Settings.threadC;

    C x[nov];
    double product = 1;
    for (int i = 0; i < nov; ++i)
    {
        C rowSum = 0;
        for (int ptr = rptrs[i]; ptr < rptrs[i + 1]; ++ptr)
        {
            rowSum += rvals[ptr];
        }
        x[i] = mat[(i * nov) + (nov - 1)] - (rowSum / 2);
        product *= x[i];
    }
    double productSum = product;

    long long start = 1;
    long long end = (1LL << (nov - 1));

#ifndef SILENT
    static bool printed = false;
    if (!printed)
    {
        std::cout << "Permanent is being computed on the CPU" << std::endl;
        printed = true;
    }
#endif

#pragma omp parallel num_threads(threads)
    {
        int threadID = omp_get_thread_num();
        C myResult = 0;

        C myX[nov];
        memcpy(myX, x, sizeof(C) * nov);

        long long chunkSize = (end - start + threads - 1) / threads;
        long long myStart = start + (threadID * chunkSize);
        long long myEnd = std::min(start + ((threadID + 1) * chunkSize), end);

        long long gray = (myStart - 1) ^ ((myStart - 1) >> 1); // gray code for the previous subset
        // getting the x vector from the previous subset
        for (int j = 0; j < (nov - 1); ++j)
        {
            if ((gray >> j) & 1LL) // was jth column included?
            {
                for (int i = cptrs[j]; i < cptrs[j + 1]; ++i)
                {
                    myX[rows[i]] += cvals[i];
                }
            }
        }

        int zeroNumber = 0;
        for (int i = 0; i < nov; ++i)
        {
            if (myX[i] == 0)
            {
                ++zeroNumber;
            }
        }

        // are we starting with a negative product sign?
        int productSign = (myStart & 1LL) ? -1 : 1;

        for (long long i = myStart; i < myEnd; ++i)
        {
            int columnChanged = __builtin_ctzll(i); // column no that was added or removed
            gray ^= (1LL << columnChanged);

            // is column removed or added
            C added = ((1LL << columnChanged) & gray) ? 1 : -1;

            for (int j = cptrs[columnChanged]; j < cptrs[columnChanged + 1]; ++j)
            {
                int rowNeigbour = rows[j];
                C xValue = myX[rowNeigbour];

                // excluding
                if (xValue == 0)
                {
                    --zeroNumber;
                }

                xValue += added * cvals[j];

                // including
                if (xValue == 0)
                {
                    ++zeroNumber;
                }

                myX[rowNeigbour] = xValue;
            }

            if (zeroNumber == 0)
            {
                C myProduct = 1;
                for (int r = 0; r < nov; ++r)
                {
                    myProduct *= myX[r];
                }
                myResult += productSign * myProduct;
            }

            productSign *= -1;
        }

        #pragma omp atomic
            productSum += myResult;
    }

    return ((4 * (nov % 2) - 2) * productSum);
}


#endif //SUPERMAN_SPNAIVEPERMAN_H
