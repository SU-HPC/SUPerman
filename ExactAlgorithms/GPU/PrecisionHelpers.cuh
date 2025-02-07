//
// Created by delbek on 8/27/24.
//

#ifndef SUPERMAN_PRECISIONHELPERS_CUH
#define SUPERMAN_PRECISIONHELPERS_CUH

#include "cuda_runtime.h"


template<class C>
__device__ __inline__ void kahanAdd(C& sum, C& error, C rhs)
{
    C y = rhs - error;
    C t = sum + y;
    error = (t - sum) - y;
    sum = t;
}


#endif //SUPERMAN_PRECISIONHELPERS_CUH
