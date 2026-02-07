# SUperman: Highly Efficient Permanent Computation Library

SUPerman is a state-of-the-art, complete software suite built for the efficient computation of matrix permanents. It supports a diverse range of matrix types, including real, complex, binary, sparse, and dense matrices, with specialized handling tailored to each type to maximize performance.

If you use this library in your research, please cite:

```bibtex
@article{Elbek2026SUperman,
  title   = {SUperman: Efficient permanent computation on GPUs},
  author  = {Elbek, Deniz and Ta{\c{s}}yaran, Fatih and U{\c{c}}ar, Bora and Kaya, Kamer},
  journal = {Computer Physics Communications},
  volume  = {321},
  pages   = {110027},
  year    = {2026},
  doi     = {10.1016/j.cpc.2026.110027}
}
```

If you use the ideas behind our state-of-the-art sparse matrix permanent code generation method in your research, please cite:

```bibtex
@article{Elbek2025CodeGeneration,
  title   = {Fully-Automated Code Generation for Efficient Computation of Sparse Matrix Permanents on GPUs},
  author  = {Elbek, Deniz and Kaya, Kamer},
  journal = {arXiv preprint arXiv:2501.15126},
  year    = {2025},
  doi     = {10.48550/arXiv.2501.15126},
}
```

---

### Hard Requirements

| **Requirement** | **Minimum Version** |
| --------------- |---------------------|
| C++             | `17`                |
| GCC             | `10.5`              |
| CMake           | `3.24`              |
| Linux OS        |  -                  |

### Soft Requirements

| **Requirement** | **Minimum Version** |
| --------------- | ------------------- |
| CUDA            | `12.3`              |
| GPU Compute Cap.| `70`                |
| OpenMPI         | `4.1.4`             |
| GMP             | `6.2.1`             |

---

## Step-by-Step Guide

1. Open the run_superman.sh file, modify it as needed for your matrices, and save the changes. 
- For a detailed description on how run_superman.sh works: [READ MORE](md/run_superman.md)
- For using SUPerman in combination with Slurm: [READ MORE](md/using_superman_with_slurm.md)

2. Make the run_superman.sh executable by running the following command:

```bash 
chmod +x run_superman.sh
```

3. Execute the run_superman.sh file from directly within the source directory:
```bash
./run_superman.sh
```

---

## WARNING

1. Each source directory (i.e, a SUPerman clone) must be devoted to one SUPerman execution at a time.
2. SUPerman can deterministically compute the permanent of matrices up to size 63x63, provided sufficient computational resources are available.