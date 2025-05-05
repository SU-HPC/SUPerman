//
// Created by deniz on 5/24/24.
//

#ifndef SUPERMAN_RESULT_H
#define SUPERMAN_RESULT_H


struct Result
{
    Result(double time = 0, double permanent = 0)
    :   time(time),
        permanent(permanent) {}

    inline Result& operator+=(const Result& rightResult)
    {
        time += rightResult.time;
        permanent += rightResult.permanent;
        return *this;
    }

    double time;
    double permanent;
};

inline Result operator+(const Result& left, const Result& right)
{
    Result ret;
    ret.time = (left.time + right.time);
    ret.permanent = (left.permanent + right.permanent);
    return ret;
}


#endif //SUPERMAN_RESULT_H
