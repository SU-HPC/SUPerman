//
// Created by deniz on 4/13/24.
//

#ifndef SUPERMAN_REBORN_PERMANENT_H
#define SUPERMAN_REBORN_PERMANENT_H

#include "omp.h"
#include "Matrix.h"
#include "Settings.h"
#include <algorithm>
#include "Result.h"


template <class C, class S>
class Permanent
{
public:
    Permanent(Matrix<S>* matrix, Settings settings)
    :   m_Matrix(matrix),
        m_Settings(settings) {}

    Permanent(const Permanent& other) = delete;
    Permanent& operator=(const Permanent& other) = delete;
    Permanent(Permanent&& other) = delete;
    Permanent& operator=(Permanent&& other) = delete;

    virtual ~Permanent() {}

    Result computePermanent();
    virtual double permanentFunction() = 0;

protected:
    Matrix<S>* m_Matrix;
    Settings m_Settings;
};


template <class C, class S>
Result Permanent<C, S>::computePermanent()
{

    double start = omp_get_wtime();
    double permanent = this->permanentFunction();
    double end = omp_get_wtime();

    Result result(end - start, permanent);

    return result;
}


#endif //SUPERMAN_REBORN_PERMANENT_H
