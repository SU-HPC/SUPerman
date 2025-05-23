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
void mpiCommRank(MPI_Comm comm, int* rank);
void mpiCommSize(MPI_Comm comm, int* size);
void finalizeMPI();
void mpiBarrier(MPI_Comm comm);
void mpiReduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op, int root, MPI_Comm comm);
void mpiAllReduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm);
void mpiAllGather(const void* sendbuf, int sendCount, MPI_Datatype sendType, void* recvbuf, int recvCount, MPI_Datatype recvType, MPI_Comm comm);
void mpiAllGatherV(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, const int *recvcounts, const int *displs, MPI_Datatype recvtype, MPI_Comm comm);

MPI_Comm getMPI_COMM_WORLD();
MPI_Datatype getMPI_DOUBLE();
MPI_Datatype getMPI_INT();
MPI_Op getMPI_SUM();
}

#endif // MPI_WRAPPER_H
