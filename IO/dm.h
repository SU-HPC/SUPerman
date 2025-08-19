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

#ifndef SUPERMAN_DM_H
#define SUPERMAN_DM_H

#include <vector>
#include "Matrix.h"
#include <queue>


void match(int *col_ptrs, int *col_ids, int *match, int *row_match, int n, int m,
           int *visited, int *stack, int *colptrs, int *lookahead, int *unmatched);
int scc(int *ptrs, int *ids, int *cmatch, int n,
          int *cptrs, int *perm,
        int *lowl, int *spos, int *prev, int *tedges);
bool dm_helper(int *xadj, int *adj, int nov, int *rmatch, int *cmatch,
               int *perm, int *cptrs, int *lowl, int *spos, int *prev, int *tedges, int *lookahead,
               int *compids);
bool dm(int *&xadj, int *&adj, int &nov, int &nnz);

template <class S>
inline void findCCs(Matrix<S>* matrix, std::vector<std::vector<unsigned>>& rowComponents, std::vector<std::vector<unsigned>>& colComponents, unsigned& biggestComponentSize)
{
	biggestComponentSize = 0;
	std::vector<bool> visited(2 * matrix->nov, false);
	for (unsigned v = 0; v < 2 * matrix->nov; ++v)
	{
		if (visited[v]) continue;

		std::vector<unsigned> rowVerts;
		std::vector<unsigned> colVerts;
		std::queue<unsigned> q;
		visited[v] = true;
		q.push(v);

		while (!q.empty())
		{
			unsigned node = q.front();
			q.pop();

			if (node < matrix->nov)
			{
				// row vertex
				rowVerts.push_back(node);
				for (unsigned c = 0; c < matrix->nov; ++c)
				{
					if (matrix->mat[node * matrix->nov + c] != 0)
					{
						unsigned colNode = matrix->nov + c;
						if (!visited[colNode])
						{
							visited[colNode] = true;
							q.push(colNode);
						}
					}
				}
			}
			else
			{
				// column vertex
				unsigned colIndex = node - matrix->nov;
				colVerts.push_back(colIndex);
				for (unsigned r = 0; r < matrix->nov; ++r)
				{
					if (matrix->mat[r * matrix->nov + colIndex] != 0)
					{
						if (!visited[r])
						{
							visited[r] = true;
							q.push(r);
						}
					}
				}
			}
		}

		if (rowVerts.size() == colVerts.size())
		{
			biggestComponentSize = std::max(biggestComponentSize, unsigned(rowVerts.size()));
		}

		rowComponents.emplace_back(rowVerts);
		colComponents.emplace_back(colVerts);
	}
}


#endif //SUPERMAN_DM_H
