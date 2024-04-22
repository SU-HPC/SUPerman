//
// Created by deniz on 4/22/24.
//

#ifndef SUPERMAN_REBORN_SEQUENTIALPERMAN_H
#define SUPERMAN_REBORN_SEQUENTIALPERMAN_H

#include "Permanent.h"


template <class C, class S>
class SequentialPerman: public Permanent<C, S>
{
public:
    SequentialPerman(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};


template<class C, class S>
double SequentialPerman<C, S>::permanentFunction()
{
    C x[64];
    C rs; //row sum
    C s;  //+1 or -1
    C prod; //product of the elements in vector 'x'
    C p = 1; //product of the elements in vector 'x'
    C *xptr;
    int j, k;
    int nov = this->m_Matrix->noRow;
    S* mat = this->m_Matrix->mat;
    unsigned long long i, tn11 = (1ULL << (nov-1)) - 1ULL;
    unsigned long long int gray;

    double starttime = omp_get_wtime();

    //create the x vector and initiate the permanent
    for (j = 0; j < nov; j++) {
        rs = .0f;
        for (k = 0; k < nov; k++)
            rs += mat[(j * nov) + k];  // sum of row j
        x[j] = mat[(j * nov) + (nov-1)] - rs/2;  // see Nijenhuis and Wilf - x vector entry
        p *= x[j];   // product of the elements in vector 'x'
    }

    //create the transpose of the matrix
    S* mat_t = new S[nov * nov];
    for (int i = 0; i < nov; i++) {
        for (int j = 0; j < nov; j++) {
            mat_t[(i * nov) + j] = mat[(j * nov) + i];
        }
    }

    gray = 0;
    unsigned long long one = 1;

    unsigned long long counter = 0;

    for (i = 1; i <= tn11; i++) {

        //compute the gray code
        k = __builtin_ctzll(i);
        gray ^= (one << k); // Gray-code order: 1,3,2,6,7,5,4,12,13,15,...
        //decide if subtract of not - if the kth bit of gray is one then 1, otherwise -1
        s = ((one << k) & gray) ? 1 : -1;

        counter++;
        prod = 1.0;
        xptr = (C*)x;
        for (j = 0; j < nov; j++) {
            *xptr += s * mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
            prod *= *xptr++;  //product of the elements in vector 'x'
        }

        p += ((i&1ULL)? -1.0:1.0) * prod;
    }

    delete [] mat_t;

    double perman = (4*(nov&1)-2) * p;
    return perman;
}


#endif //SUPERMAN_REBORN_SEQUENTIALPERMAN_H
