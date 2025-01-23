//
// Created by delbek on 1/21/25.
//

#ifndef SUPERMAN_DM_H
#define SUPERMAN_DM_H


void match(int *col_ptrs, int *col_ids, int *match, int *row_match, int n, int m,
           int *visited, int *stack, int *colptrs, int *lookahead, int *unmatched);
int scc(int *ptrs, int *ids, int *cmatch, int n,
          int *cptrs, int *perm,
        int *lowl, int *spos, int *prev, int *tedges);
bool dm_helper(int *xadj, int *adj, int nov, int *rmatch, int *cmatch,
               int *perm, int *cptrs, int *lowl, int *spos, int *prev, int *tedges, int *lookahead,
               int *compids);
bool dm(int *&xadj, int *&adj, int &nov, int &nnz);


#endif //SUPERMAN_DM_H
