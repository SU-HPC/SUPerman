//
// Created by deniz on 6/6/24.
//

#ifndef SUPERMAN_HELPERS_H
#define SUPERMAN_HELPERS_H

#include "Matrix.h"
#include <string>
#include <cstdlib>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <cstring>
#include <sys/wait.h>


#define PIPE_NAME "/tmp/wrapper_pipe"

inline int readPipe(int rank)
{
    std::string pipeName = std::string(PIPE_NAME) + '_' + std::to_string(rank);
    int fd = open(pipeName.c_str(), O_RDONLY);
    if (fd == -1)
    {
        throw std::runtime_error("CHILD: Failed to open pipe for reading!\n");
    }

    int val;
    if (read(fd, &val, sizeof(int)) != sizeof(int))
    {
        throw std::runtime_error("CHILD: Failed to read integer from pipe!\n");
    }

    close(fd);
    return val;
}

inline void writePipe(int value, int rank)
{
    std::string pipeName = std::string(PIPE_NAME) + '_' + std::to_string(rank);
    int fd = open(pipeName.c_str(), O_WRONLY);
    if (fd == -1)
    {
        throw std::runtime_error("CHILD: Failed to open pipe for writing!\n");
    }

    if (write(fd, &value, sizeof(int)) != sizeof(int))
    {
        throw std::runtime_error("CHILD: Failed to write integer to pipe!\n");
    }

    close(fd);
}

struct ScalingCompact
{
    ~ScalingCompact()
    {
        delete[] rowScale;
        delete[] colScale;
    }

    __float128 *rowScale;
    __float128 *colScale;
};

template <class S>
inline int getRowNNZ(Matrix<S>* matrix, int vertex)
{
    S* mat = matrix->mat;

    int row = vertex * matrix->nov;
    int nnz = 0;
    for (int j = 0; j < matrix->nov; ++j)
    {
        if (mat[row + j] != 0)
        {
            ++nnz;
        }
    }
    return nnz;
}

template <class S>
inline int getColNNZ(Matrix<S>* matrix, int vertex)
{
    S* mat = matrix->mat;

    int nnz = 0;
    for (int i = 0; i < matrix->nov; ++i)
    {
        if (mat[i * matrix->nov + vertex] != 0)
        {
            ++nnz;
        }
    }
    return nnz;
}

template <class S>
inline int getMinDegree(Matrix<S>* matrix)
{
    int minDegree = matrix->nov;
    for (int i = 0; i < matrix->nov; ++i)
    {
        int rowDegree = getRowNNZ(matrix, i);
        int colDegree = getColNNZ(matrix, i);
        if (rowDegree < minDegree) minDegree = rowDegree;
        if (colDegree < minDegree) minDegree = colDegree;
    }
    return minDegree;
}

template <class S>
inline int getNNZ(Matrix<S>* matrix)
{
    S* mat = matrix->mat;

    int entry = matrix->nov * matrix->nov;
    int nnz = 0;
    for(int i = 0; i < entry; ++i)
    {
        if (mat[i] != 0)
        {
            ++nnz;
        }
    }

    return nnz;
}

template <class S>
inline bool isRankDeficient(Matrix<S>* matrix)
{
    for (int i = 0; i < matrix->nov; ++i)
    {
        if (getRowNNZ(matrix, i) == 0) return true;
        if (getColNNZ(matrix, i) == 0) return true;
    }
    return false;
}

inline void recompilationStatus(int value, int rank)
{
    writePipe(value, rank);
}

inline void print(const std::stringstream& str, int rank, int pid, int pidAllowed)
{
    if (rank == 0 && (pid == pidAllowed || pidAllowed == -1))
    {
        std::cout << str.str();
    }
}


#endif //SUPERMAN_HELPERS_H
