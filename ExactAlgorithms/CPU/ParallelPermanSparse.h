//
// Created by deniz on 4/13/24.
//

#ifndef SUPERMAN_REBORN_PARALLELPERMANSPARSE_H
#define SUPERMAN_REBORN_PARALLELPERMANSPARSE_H

#include "Permanent.h"
#include "SparseMatrix.h"
#include <cstring>


template <class C, class S>
class ParallelPermanSparse: public Permanent<C, S>
{
public:
    ParallelPermanSparse(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};


template<class C, class S>
double ParallelPermanSparse<C, S>::permanentFunction()
{
    SparseMatrix<S>* ccs = dynamic_cast<SparseMatrix<S>*>(this->m_Matrix);

    int nov = ccs->nov;
    S* mat = ccs->mat;
    int* cptrs = ccs->cptrs;
    int* rows = ccs->rows;
    S* cvals = ccs->cvals;

    int threads = this->m_Settings.threadC;

    C x[nov];
    C rowSum;
    C product = 1;
    for (int i = 0; i < nov; ++i)
    {
        rowSum = 0;
        for (int j = 0; j < nov; ++j)
        {
            rowSum += mat[(i * nov) + j];
        }
        x[i] = mat[(i * nov) + (nov - 1)] - (rowSum / 2);
        product *= x[i];
    }

    long long start = 1;
    long long end = (1LL << (nov - 1));

#pragma omp parallel num_threads(threads) reduction(+:product)
    {
        int threadID = omp_get_thread_num();
        C myResult = 0;

        C myX[nov];
        memcpy(myX, x, sizeof(C) * nov);

        long long chunkSize = (end - start) / threads + 1;
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

        C myProduct = 1.0;
        int zeroNumber = 0;
        // product from the previous subset
        for (int i = 0; i < nov; ++i)
        {
            if (myX[i] == 0)
            {
                ++zeroNumber;
            }
            else
            {
                myProduct *= myX[i];
            }
        }

        int productSign = 1;
        // are starting with a negative product sign?
        if(myStart & 1LL)
        {
            productSign = -1;
        }

        for (long long i = myStart; i < myEnd; ++i)
        {
            int columnChanged = __builtin_ctzll(i); // column no that was added or removed
            gray ^= (1LL << columnChanged);

            // is column removed or added
            C added = ((1LL << columnChanged) & gray) ? 1 : -1;

            for (int j = cptrs[columnChanged]; j < cptrs[columnChanged + 1]; j++)
            {
                if (myX[rows[j]] == 0)
                {
                    --zeroNumber;
                    myX[rows[j]] += added * cvals[j];
                    myProduct *= myX[rows[j]];
                }
                else
                {
                    myProduct /= myX[rows[j]];
                    myX[rows[j]] += added * cvals[j];
                    if (myX[rows[j]] == 0)
                    {
                        ++zeroNumber;
                    }
                    else
                    {
                        myProduct *= myX[rows[j]]; // product of the elements in vector 'x'
                    }
                }
            }

            if (zeroNumber == 0)
            {
                myResult += productSign * myProduct;
            }
            productSign *= -1;
        }

        product += myResult;
    }

    return (4 * (nov & 1) - 2) * product;
}


#endif //SUPERMAN_REBORN_PARALLELPERMANSPARSE_H
