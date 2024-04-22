//
// Created by deniz on 4/13/24.
//

#include "IO.h"
#include <iostream>
#include "AlgorithmRecommender.h"


// will be determined at runtime
#define S double
#define C double
#define filename "/home/users/deniz/matrices/Ragusa18.mtx"


int main()
{
    Settings settings(Double, Double);
    Matrix<S>* mat = IO::readMatrix<S>(filename, settings);

    Permanent<C, S>* permanent = AlgorithmRecommender<C, S>::recommendAlgorithm(mat, &settings);
    Result result = permanent->computePermanent();

    std::cout << "Permanent: " << result.permanent << " - Computed in: " << result.time << " seconds." << std::endl;

    delete permanent;
    delete mat;

    return 0;
}
