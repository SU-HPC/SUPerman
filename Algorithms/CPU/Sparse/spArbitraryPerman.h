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

#ifndef SUPERMAN_SPARBITRARYPERMAN_H
#define SUPERMAN_SPARBITRARYPERMAN_H

#include "Permanent.h"
#include "SparseMatrix.h"
#include <cstring>
#include "omp.h"
#include <gmpxx.h>


template <class C, class S>
class spArbitraryPerman: public Permanent<C, S>
{
public:
    spArbitraryPerman(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};


template<class C, class S>
double spArbitraryPerman<C, S>::permanentFunction()
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

    mpf_set_default_prec(this->m_Settings.arbitraryPrecision);

    mpf_class x[nov];
    mpf_class productValue(1, this->m_Settings.arbitraryPrecision);
    for (int i = 0; i < nov; ++i)
    {
        mpf_class rowSum(0, this->m_Settings.arbitraryPrecision);
        for (int ptr = rptrs[i]; ptr < rptrs[i + 1]; ++ptr)
        {
            rowSum += rvals[ptr];
        }
        x[i] = mpf_class(mat[(i * nov) + (nov - 1)], this->m_Settings.arbitraryPrecision) - (rowSum / 2);
        productValue *= x[i];
    }
    mpf_class productSum(productValue, this->m_Settings.arbitraryPrecision);

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
        mpf_class myResult(0, this->m_Settings.arbitraryPrecision);

        mpf_class myX[nov];
        for (int t = 0; t < nov; ++t) myX[t] = x[t];

        long long chunkSize = (end - start + threads - 1) / threads;
        long long myStart = start + (threadID * chunkSize);
        long long myEnd = std::min(start + ((threadID + 1) * chunkSize), end);

        long long gray = (myStart - 1) ^ ((myStart - 1) >> 1);
        for (int j = 0; j < (nov - 1); ++j)
        {
            if ((gray >> j) & 1LL)
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

        int productSign = (myStart & 1LL) ? -1 : 1;

        for (long long i = myStart; i < myEnd; ++i)
        {
            int columnChanged = __builtin_ctzll(i);
            gray ^= (1LL << columnChanged);

            C added = ((1LL << columnChanged) & gray) ? 1 : -1;

            for (int j = cptrs[columnChanged]; j < cptrs[columnChanged + 1]; ++j)
            {
                int rowNeigbour = rows[j];
                mpf_class xValue = myX[rowNeigbour];

                if (xValue == 0)
                {
                    --zeroNumber;
                }

                xValue += added * cvals[j];

                if (xValue == 0)
                {
                    ++zeroNumber;
                }

                myX[rowNeigbour] = xValue;
            }

            if (zeroNumber == 0)
            {
                mpf_class myProduct(1, this->m_Settings.arbitraryPrecision);
                for (int r = 0; r < nov; ++r)
                {
                    myProduct *= myX[r];
                }
                myResult += productSign * myProduct;
            }

            productSign *= -1;
        }

        #pragma omp critical
        {
            productSum += myResult;
        }
    }

    mpf_class coeff(4 * (nov % 2) - 2, this->m_Settings.arbitraryPrecision);
    mpf_class retValue(0, this->m_Settings.arbitraryPrecision);
    retValue = coeff * productSum;

    auto mpfToDecimal = [](const mpf_class& value) 
    {
        mp_exp_t exp = 0;
        std::string digits = value.get_str(exp, 10, 0);
        if (digits == "0") 
        {
            return std::string("0");
        }
        long expInt = static_cast<long>(exp);
        long numDigits = static_cast<long>(digits.size());
        if (expInt <= 0)
        {
            return std::string("0.") + std::string(static_cast<size_t>(-expInt), '0') + digits;
        }
        if (numDigits <= expInt)
        {
            return digits + std::string(static_cast<size_t>(expInt - numDigits), '0');
        }
        return digits.substr(0, static_cast<size_t>(expInt)) + "." + digits.substr(static_cast<size_t>(expInt));
    };

    std::cout << "Arbitrary Precision Permanent (decimal): " << mpfToDecimal(retValue) << "\n";

    return retValue.get_d();
}


#endif //SUPERMAN_SPARBITRARYPERMAN_H
