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

#ifndef SUPERMAN_DPARBITRARYPERMAN_H
#define SUPERMAN_DPARBITRARYPERMAN_H

#include "Permanent.h"
#include "Matrix.h"
#include <cstring>
#include "omp.h"
#include <gmpxx.h>


template <class C, class S>
class dpArbitraryPerman: public Permanent<C, S>
{
public:
    dpArbitraryPerman(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};


template<class C, class S>
double dpArbitraryPerman<C, S>::permanentFunction()
{
    int nov = this->m_Matrix->nov;
    S* mat = this->m_Matrix->mat;

    int threads = this->m_Settings.threadC;

    mpf_set_default_prec(this->m_Settings.arbitraryPrecision);

    mpf_class x[nov];
    mpf_class productSum(1, this->m_Settings.arbitraryPrecision);
    for (int i = 0; i < nov; ++i)
    {
        mpf_class rowSum(0, this->m_Settings.arbitraryPrecision);
        for (int j = 0; j < nov; ++j)
        {
            rowSum += mat[i * nov + j];
        }
        x[i] = mpf_class(mat[(i * nov) + (nov - 1)], this->m_Settings.arbitraryPrecision)
             - (rowSum / 2);
        productSum *= x[i];
    }

    S* matTransposed = new S[nov * nov];
    for (int i = 0; i < nov; ++i)
    {
        for (int j = 0; j < nov; ++j)
        {
            matTransposed[j * nov + i] = mat[i * nov + j];
        }
    }

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
        for (int t = 0; t < nov; ++t) 
        {
            myX[t] = x[t];
        }

        long long chunkSize = (end - start + threads - 1) / threads;
        long long myStart = start + (threadID * chunkSize);
        long long myEnd = std::min(start + ((threadID + 1) * chunkSize), end);

        long long gray = (myStart - 1) ^ ((myStart - 1) >> 1); // gray code for the previous subset
        // getting the x vector from the previous subset
        for (int j = 0; j < (nov - 1); ++j)
        {
            if ((gray >> j) & 1LL) // was jth column included?
            {
                for (int i = 0; i < nov; ++i)
                {
                    myX[i] += matTransposed[j * nov + i];
                }
            }
        }

        // are we starting with a negative product sign?
        int productSign = (myStart & 1LL) ? -1 : 1;

        for (long long i = myStart; i < myEnd; ++i)
        {
            int columnChanged = __builtin_ctzll(i); // column no that was added or removed
            gray ^= (1LL << columnChanged);

            C added = ((1LL << columnChanged) & gray) ? 1 : -1;

            mpf_class myProduct(1, this->m_Settings.arbitraryPrecision);
            for (int r = 0; r < nov; ++r)
            {
                myX[r] += added * matTransposed[columnChanged * nov + r];
                myProduct *= myX[r];
            }

            myResult += productSign * myProduct;
            productSign *= -1; // sign for the next subset
        }

        #pragma omp critical
        {
            productSum += myResult;
        }
    }

    delete[] matTransposed;

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

    std::cout << "Arbitrary Precision Permanent: " << mpfToDecimal(retValue) << std::endl;

    return retValue.get_d();
}


#endif //SUPERMAN_DPARBITRARYPERMAN_H
