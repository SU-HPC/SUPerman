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

    double time;
    double permanent;
};


#endif //SUPERMAN_RESULT_H
