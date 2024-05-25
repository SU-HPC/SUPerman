//
// Created by deniz on 5/25/24.
//

#ifndef MPI_WRAPPER_H
#define MPI_WRAPPER_H

typedef struct ompi_communicator_t *MPI_Comm;
typedef struct ompi_datatype_t *MPI_Datatype;
typedef struct ompi_op_t *MPI_Op;

extern "C"
{
void initMPI(int *argc, char ***argv);
void finalizeMPI();
void mpiBarrier(MPI_Comm comm);
void mpiReduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op, int root, MPI_Comm comm);

MPI_Comm getMPI_COMM_WORLD();
MPI_Datatype getMPI_DOUBLE();
MPI_Datatype getMPI_INT();
MPI_Op getMPI_SUM();
}

#endif // MPI_WRAPPER_H
