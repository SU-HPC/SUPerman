//
// Created by deniz on 4/13/24.
//

#ifndef SUPERMAN_REBORN_PARALLELPERMANSPARSE_H
#define SUPERMAN_REBORN_PARALLELPERMANSPARSE_H

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

public:
    C productSum;
    double time;
};


template<class C, class S>
double spNaivePerman<C, S>::permanentFunction()
{
    SparseMatrix<S>* ccs = dynamic_cast<SparseMatrix<S>*>(this->m_Matrix);

    int nov = ccs->nov;
    S* mat = ccs->mat;
    int* cptrs = ccs->cptrs;
    int* rows = ccs->rows;
    S* cvals = ccs->cvals;
    int* rptrs = ccs->rptrs;
    int* cols = ccs->cols;
    S* rvals = ccs->rvals;

    int threads = this->m_Settings.threadC;

    C x[nov];
    C product = 1;
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
    productSum = product;

    long long start = 1;
    long long end = (1LL << (nov - 1));

    double s = omp_get_wtime();

#pragma omp parallel num_threads(threads)
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

        C myProduct = 1;
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

        // are starting with a negative product sign?
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
                S value = cvals[j];
                C temp = added * value;

                // excluding
                if (xValue == 0)
                {
                    --zeroNumber;
                }
                else
                {
                    myProduct /= xValue;
                }

                xValue += temp;

                // including
                if (xValue == 0)
                {
                    ++zeroNumber;
                }
                else
                {
                    myProduct *= xValue;
                }

                myX[rowNeigbour] = xValue;
            }

            if (zeroNumber == 0)
            {
                myResult += productSign * myProduct;
            }

            productSign *= -1;
        }

        #pragma omp atomic
            productSum += myResult;
    }

    double e = omp_get_wtime();

    time = e - s;

    return 0;
}


#endif //SUPERMAN_REBORN_PARALLELPERMANSPARSE_H
