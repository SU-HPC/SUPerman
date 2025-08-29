/*
 * This file is part of the SUperman repository: https://github.com/SU-HPC/SUPerman
 * Author(s): Deniz Elbek, Fatih Taşyaran, Bora Uçar, and Kamer Kaya.
 *
 * Please see the papers:
 * 
 * @article{Elbek2025SUperman,
 *   title   = {SUperman: Efficient Permanent Computation on GPUs},
 *   author  = {Elbek, Deniz and Taşyaran, Fatih and Uçar, Bora and Kaya, Kamer},
 *   journal = {arXiv preprint arXiv:2502.16577},
 *   year    = {2025},
 *   doi     = {10.48550/arXiv.2502.16577},
 *   url     = {https://arxiv.org/abs/2502.16577}
 * }
 *
 * @article{Elbek2025FullyAutomated,
 *   title   = {Fully-Automated Code Generation for Efficient Computation of Sparse Matrix Permanents on GPUs},
 *   author  = {Elbek, Deniz and Kaya, Kamer},
 *   journal = {arXiv preprint arXiv:2501.15126},
 *   year    = {2025},
 *   doi     = {10.48550/arXiv.2501.15126},
 *   url     = {https://arxiv.org/abs/2501.15126}
 * }
 */

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
#include <iomanip>
#include <limits>

inline int readPipe(const std::string& pipe, int rank)
{
    std::string path = pipe + "_p2c_" + std::to_string(rank) + ".msg";

    for (;;)
    {
        int fd = open(path.c_str(), O_RDONLY);
        if (fd >= 0)
        {
            int val = 0;
            ssize_t got = 0;
            char* p = reinterpret_cast<char*>(&val);
            size_t n = sizeof(int);
            while (n > 0)
            {
                ssize_t k = read(fd, p + got, n);
                if (k <= 0) {close(fd); unlink(path.c_str()); throw std::runtime_error("CHILD: read() failed!\n");}
                got += k; n -= size_t(k);
            }
            close(fd);
            unlink(path.c_str());
            return val;
        }
        if (errno != ENOENT)
        {
            throw std::runtime_error("CHILD: open(mailbox) failed!\n");
        }
        usleep(2000);
    }
}

inline void writePipe(const std::string& pipe, int value, int rank)
{
    std::string dst = pipe + "_c2p_" + std::to_string(rank) + ".msg";
    std::string tmp = dst + ".tmp." + std::to_string(getpid());

    while (access(dst.c_str(), F_OK) == 0)
    {
        usleep(2000);
    }

    int fd = open(tmp.c_str(), O_WRONLY | O_CREAT | O_TRUNC, 0666);
    if (fd == -1)
    {
        throw std::runtime_error("CHILD: open(tmp) failed for writing!\n");
    }

    const char* p = reinterpret_cast<const char*>(&value);
    size_t n = sizeof(int);
    while (n > 0)
    {
        ssize_t k = write(fd, p, n);
        if (k <= 0)
        {
            int err = errno; close(fd); unlink(tmp.c_str());
            throw std::runtime_error(std::string("CHILD: write() failed: ") + std::strerror(err) + "\n");
        }
        p += k; n -= size_t(k);
    }

    if (fsync(fd) != 0)
    {
        int err = errno; close(fd); unlink(tmp.c_str());
        throw std::runtime_error(std::string("CHILD: fsync() failed: ") + std::strerror(err) + "\n");
    }
    close(fd);

    while (access(dst.c_str(), F_OK) == 0)
    {
        usleep(2000);
    }
    if (rename(tmp.c_str(), dst.c_str()) != 0)
    {
        int err = errno; unlink(tmp.c_str());
        throw std::runtime_error(std::string("CHILD: rename() failed: ") + std::strerror(err) + "\n");
    }
}

struct ScalingCompact
{
    ~ScalingCompact()
    {
        delete[] rowScale;
        delete[] colScale;
    }

    double* rowScale;
    double* colScale;
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

inline void recompilationStatus(const std::string& pipe, int value, int rank)
{
    writePipe(pipe, value, rank);
}

inline void print(const std::stringstream& str, int rank, int pid, int pidAllowed)
{
    if (rank == 0 && (pid == pidAllowed || pidAllowed == -1))
    {
        std::cout << str.str() << std::flush;
    }
}

inline void printProgressBar(double percent, int rank, int pid)
{
    if (printing)
    {
        const int barWidth = 50;
        int filledLength = static_cast<int>(barWidth * (percent / 100.0));
    
        std::stringstream stream;
        stream << "[";
        for (int i = 0; i < barWidth; ++i)
        {
            if (i < filledLength)
            {
                stream << "#";
            }
            else
            {
                stream << "-";
            }
        }
        stream << "] " << std::fixed << std::setprecision(3) << percent << '%' << std::endl;
        print(stream, rank, pid, -1);
    }
}

template <class T>
constexpr int effectivePrecision(T) noexcept 
{
    return std::numeric_limits<T>::max_digits10;
}


#endif //SUPERMAN_HELPERS_H
