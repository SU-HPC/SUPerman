//
// Created by deniz on 4/13/24.
//

#ifndef SUPERMAN_REBORN_PARALLELPERMANDENSE_H
#define SUPERMAN_REBORN_PARALLELPERMANDENSE_H

#include "Permanent.h"


template <class C, class S>
class ParallelPermanDense: public Permanent<C, S>
{
public:
    ParallelPermanDense(Matrix<S>* matrix, Settings settings)
    :   Permanent<C, S>(matrix, settings) {}

    virtual double permanentFunction() final;
};


template<class C, class S>
double ParallelPermanDense<C, S>::permanentFunction()
{
    //Pack parameters//
    S* mat = this->m_Matrix->mat;
    int nov = this->m_Matrix->nov;
    //Pack parameters//

    //Pack flags//
    int threads = this->m_Settings.threadC;
    //Pack flags//

    C x[nov];
    C rs; //row sum
    C p = 1; //product of the elements in vector 'x'

    //cout << "First letter of calculation type " << typeid(p).name() << endl;
    //cout << "First letter of storage type " << typeid(mat[0]).name() << endl;

    //std::string ctype(typeid(p).name());
    //std::string stype(typeid(mat[0]).name());


    //std::cout << "ctype: " << type_name<decltype(p)>() << '\n';
    //std::cout << "stype: " << type_name<decltype(mat[0])>() << '\n';


    //create the x vector and initiate the permanent
    for (int j = 0; j < nov; j++) {
        rs = .0f;
        for (int k = 0; k < nov; k++) {
            rs += mat[(j * nov) + k];  // sum of row j
        }
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

    long long one = 1;
    long long start = 1;
    long long end = (1LL << (nov-1));

    long long chunk_size = end / threads + 1;

#pragma omp parallel num_threads(threads) firstprivate(x)
    {
        int tid = omp_get_thread_num();
        long long my_start = start + tid * chunk_size;
        long long my_end = std::min(start + ((tid+1) * chunk_size), end);

        C *xptr;
        C s;  //+1 or -1
        C prod; //product of the elements in vector 'x'
        C my_p = 0;
        long long i = my_start;
        long long gray = (i-1) ^ ((i-1) >> 1);

        for (int k = 0; k < (nov-1); k++) {
            if ((gray >> k) & 1LL) { // whether kth column should be added to x vector or not
                xptr = (C*)x;
                for (int j = 0; j < nov; j++) {
                    *xptr += mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                    xptr++;
                }
            }
        }

        int prodSign = 1;
        int k = 0;
        if(i & 1LL) {
            prodSign = -1;
        }

        while (i < my_end) {
            //compute the gray code
            k = __builtin_ctzll(i);
            gray ^= (one << k); // Gray-code order: 1,3,2,6,7,5,4,12,13,15,...
            //decide if subtract of not - if the kth bit of gray is one then 1, otherwise -1
            s = ((one << k) & gray) ? 1 : -1;

            prod = 1.0;
            xptr = (C*)x;
            for (int j = 0; j < nov; j++) {
                *xptr += s * mat_t[(k * nov) + j]; // see Nijenhuis and Wilf - update x vector entries
                prod *= *xptr++;  //product of the elements in vector 'x'
            }

            /*
            //x debug
            xptr = (C*)x;
            std::cout << "################" << std::endl;
            std::cout << "i: " << i << std::endl;
            for(int m = 0; m < 4; m++){
          for(int l = 0; l < 8; l++){
            std::cout << (double)xptr[m*8+l] << " ";
          }
          std::cout << std::endl;
            }
            std::cout << std::endl;
            //x debug
            */

            my_p += prodSign * prod;
            prodSign *= -1;
            i++;
        }

#pragma omp critical
        {
            p += my_p;
        }
    }

    delete [] mat_t;
    return (4*(nov&1)-2) * p;
}


#endif //SUPERMAN_REBORN_PARALLELPERMANDENSE_H
