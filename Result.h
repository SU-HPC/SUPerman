//
// Created by deniz on 5/24/24.
//

#ifndef SUPERMAN_REBORN_RESULT_H
#define SUPERMAN_REBORN_RESULT_H


struct Result
{
    Result(double time, double permanent)
    :   time(time),
        permanent(permanent) {}

    double time;
    double permanent;
};


#endif //SUPERMAN_REBORN_RESULT_H
