//
// Created by delbek on 8/27/24.
//

#ifndef SUPERMAN_PRECISIONHELPERS_CUH
#define SUPERMAN_PRECISIONHELPERS_CUH


__device__ void kahanAdd(double& value, double& error, double rhs)
{
    double y = rhs - error;
    double t = value + y;
    error = (t - value) - y;
    value = t;
}

__device__ void qdSum1(double2& a, double b)
{
    double s = a.y + b;
    double v = s - a.y;
    double t = (a.y - (s - v)) + (b - v);
    double e = t + a.x;

    a.y = s + e;
    a.x = e - (a.y - s);
}

__device__ void qdSum2(double2& a, double b)
{
    double t1, t2, t3, t4, t5, e;

    t1 = a.y;

    t2 = t1 - a.y;

    t3 = (a.y - (t1 - t2)) - t2;

    t4 = a.x + b;

    t2 = t4 - a.x;

    t5 = (a.x - (t4 - t2)) + (b - t2);

    t3 = t3 + t4;

    t4 = t1 + t3;

    t3 = t3 + (t1 - t4);

    t3 = t3 + t5;

    a.y = e = t4 + t3;

    a.x = t3 + (e - t4);
}

__device__ void qqSum(double2& a, double2& b)
{
    double t1, t2, t3, t4, t5, e;

    t1 = a.y + b.y;

    t2 = t1 - a.y;

    t3 = (a.y - (t1 - t2)) + (b.y - t2);

    t4 = a.x + b.x;

    t2 = t4 - a.x;

    t5 = (a.x - (t4 - t2)) + (b.x - t2);

    t3 = t3 + t4;

    t4 = t1 + t3;

    t3 = t3 + (t1 - t4);

    t3 = t3 + t5;

    a.y = e = t4 + t3;

    a.x = t3 + (e - t4);
}

__device__ void qdMultiply(double2& x, double y)
{
    double e;

    double2 t;

    t.y = __dmul_rn (x.y, 0);     /* prevent FMA-merging */

    t.x = __fma_rn (x.y, 0, -t.y);

    t.x = __fma_rn (x.x, y, t.x); /* remove this for even higher performance */

    t.x = __fma_rn (x.y, y, t.x);

    t.x = __fma_rn (x.x, 0, t.x);

    x.y = e = t.y + t.x;

    x.x = (t.y - e) + t.x;
}


#endif //SUPERMAN_PRECISIONHELPERS_CUH
