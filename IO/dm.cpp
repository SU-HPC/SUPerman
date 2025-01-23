//
// Created by delbek on 1/21/25.
//

#include <cstring>
#include <cstdlib>
#include "dm.h"


void match(int *col_ptrs, int *col_ids, int *match, int *row_match, int n, int m,
           int *visited, int *stack, int *colptrs, int *lookahead, int *unmatched)
{

    int i, j, row, col, stack_col, temp, stack_last, stop = 0, pcount = 1, stack_end_ptr, nunmatched = 0, nextunmatched = 0, current_col, inc = 1;
    int ptr, eptr;

    memset(visited, 0, sizeof(int) * m);
    memcpy(lookahead, col_ptrs, sizeof(int) * n);

    for (i = 0; i < n; i++)
    {
        if (match[i] == -1 && col_ptrs[i] != col_ptrs[i + 1])
        {
            unmatched[nunmatched++] = i;
        }
    }

    while (!stop)
    {
        stop = 1;
        stack_end_ptr = n;
        if (inc)
        {
            for (i = 0; i < nunmatched; i++)
            {
                current_col = unmatched[i];
                stack[0] = current_col;
                stack_last = 0;
                colptrs[current_col] = col_ptrs[current_col];

                while (stack_last > -1)
                {
                    stack_col = stack[stack_last];

                    eptr = col_ptrs[stack_col + 1];
                    for (ptr = lookahead[stack_col]; ptr < eptr && row_match[col_ids[ptr]] != -1; ptr++)
                    {
                    }
                    lookahead[stack_col] = ptr + 1;

                    if (ptr >= eptr)
                    {
                        for (ptr = colptrs[stack_col]; ptr < eptr; ptr++)
                        {
                            temp = visited[col_ids[ptr]];
                            if (temp != pcount && temp != -1)
                            {
                                break;
                            }
                        }
                        colptrs[stack_col] = ptr + 1;

                        if (ptr == eptr)
                        {
                            if (stop)
                            {
                                stack[--stack_end_ptr] = stack_col;
                            }
                            --stack_last;
                            continue;
                        }

                        row = col_ids[ptr];
                        visited[row] = pcount;
                        col = row_match[row];
                        stack[++stack_last] = col;
                        colptrs[col] = col_ptrs[col];
                    }
                    else
                    {
                        row = col_ids[ptr];
                        visited[row] = pcount;
                        while (row != -1)
                        {
                            col = stack[stack_last--];
                            temp = match[col];
                            match[col] = row;
                            row_match[row] = col;
                            row = temp;
                        }
                        stop = 0;
                        break;
                    }
                }

                if (match[current_col] == -1)
                {
                    if (stop)
                    {
                        for (j = stack_end_ptr + 1; j < n; j++)
                        {
                            visited[match[stack[j]]] = -1;
                        }
                        stack_end_ptr = n;
                    }
                    else
                    {
                        unmatched[nextunmatched++] = current_col;
                    }
                }
            }
        }
        else
        {
            for (i = 0; i < nunmatched; i++)
            {
                current_col = unmatched[i];
                stack[0] = current_col;
                stack_last = 0;
                colptrs[current_col] = col_ptrs[current_col + 1] - 1;

                while (stack_last > -1)
                {
                    stack_col = stack[stack_last];

                    eptr = col_ptrs[stack_col + 1];
                    for (ptr = lookahead[stack_col]; ptr < eptr && row_match[col_ids[ptr]] != -1; ptr++)
                    {
                    }
                    lookahead[stack_col] = ptr + 1;

                    if (ptr >= eptr)
                    {
                        eptr = col_ptrs[stack_col] - 1;
                        for (ptr = colptrs[stack_col]; ptr > eptr; ptr--)
                        {
                            temp = visited[col_ids[ptr]];
                            if (temp != pcount && temp != -1)
                            {
                                break;
                            }
                        }
                        colptrs[stack_col] = ptr - 1;

                        if (ptr == eptr)
                        {
                            if (stop)
                            {
                                stack[--stack_end_ptr] = stack_col;
                            }
                            --stack_last;
                            continue;
                        }

                        row = col_ids[ptr];
                        visited[row] = pcount;
                        col = row_match[row];
                        stack[++stack_last] = col;
                        colptrs[col] = col_ptrs[col + 1] - 1;
                    }
                    else
                    {
                        row = col_ids[ptr];
                        visited[row] = pcount;
                        while (row != -1)
                        {
                            col = stack[stack_last--];
                            temp = match[col];
                            match[col] = row;
                            row_match[row] = col;
                            row = temp;
                        }
                        stop = 0;
                        break;
                    }
                }

                if (match[current_col] == -1)
                {
                    if (stop)
                    {
                        for (j = stack_end_ptr + 1; j < n; j++)
                        {
                            visited[match[stack[j]]] = -1;
                        }
                        stack_end_ptr = n;
                    }
                    else
                    {
                        unmatched[nextunmatched++] = current_col;
                    }
                }
            }
        }
        pcount++;
        nunmatched = nextunmatched;
        nextunmatched = 0;
        inc = !inc;
    }
}

/*
 * A: matrix, n is the dimension
 * Input:
 *    ptrs, ids and nov - sparse matrix data
 *    cmatch: column view of (perfect) matching
 * Output:
 *    num: number of components
 *    cptrs: component pointers (redundant but if necessary)
 *    perm: component ids (redundant but if necessary)
 * Work:
 *    lowl: smallest stack position of any vertex to which a path from node i exists.
 *    spos: stack position of a vertex
 *    prev: the vertex at the end of the path
 *    tedges: number of edges that needs to be searched
 */
int scc(int *ptrs, int *ids, int *cmatch, int n,
          int *cptrs, int *perm,
          int *lowl, int *spos, int *prev, int *tedges)
{

    int i, iv, iw, j, i2, lcnt, ist, stp, icnt, num, control, tnm;
    int ptr;

    control = icnt = num = 0;
    tnm = 2 * n - 1;

    for (i = 0; i < n; i++)
    {
        spos[i] = -1;
    }
    memcpy(tedges, ptrs, sizeof(int) * n);

    for (i = 0; i < n; i++)
    {
        if (spos[i] != -1)
            continue;

        iv = i;
        ist = 1;

        /* put the node to the stack */
        lowl[iv] = spos[iv] = 0;
        cptrs[n - 1] = iv;

        /* the body of this loop either puts a new node to the stack or backtrack */
        for (j = 0; j < tnm; j++)
        {
            ptr = tedges[iv];

            /* if there exists an edge to visit */
            if (ptr < ptrs[iv + 1])
            {
                i2 = ptrs[iv + 1];
                control = 0;

                /* search the edges leaving iv until one enters a new node or all edges are exhausted */
                for (; ptr < i2; ptr++)
                {
                    iw = cmatch[ids[ptr]];
                    if (iw < n)
                    {
                        /* check if node iw has not been on stack already */
                        if (spos[iw] == -1)
                        {
                            /* put a new node to the stack */
                            tedges[iv] = ptr + 1;
                            prev[iw] = iv;
                            iv = iw;

                            lowl[iv] = spos[iv] = ist = ++ist;
                            cptrs[n - ist] = iv;
                            control = 1;
                            break;
                        }

                        /* update lowl[iw] if necessary */
                        if (lowl[iw] < lowl[iv])
                        {
                            lowl[iv] = lowl[iw];
                        }
                    }
                }

                if (control == 1)
                {
                    control = 0;
                    continue;
                }
            }

            /* is node iv the root of a block */
            if (lowl[iv] >= spos[iv])
            {
                /* order the nodes in the block */
                lcnt = icnt;

                /* peel block off the top of the stack starting at the top
                 * and working down to the root of the block */
                for (stp = n - ist; stp < n; stp++)
                {
                    iw = cptrs[stp];
                    lowl[iw] = n;
                    spos[iw] = icnt++;
                    if (iw == iv)
                    {
                        break;
                    }
                }

                ist = (n - 1) - stp;
                cptrs[num++] = lcnt;

                /* are there any nodes left on the stack */
                if (ist == 0)
                {
                    /* if all the nodes have been ordered */
                    if (icnt == n)
                    {
                        control = 1;
                    }
                    break;
                }
            }

            /* backtrack to previous node on a path */
            iw = iv;
            iv = prev[iv];

            /* update the value of lowl(iv) if necessary */
            if (lowl[iw] < lowl[iv])
            {
                lowl[iv] = lowl[iw];
            }
        }
        if (control == 1)
        {
            break;
        }
    }

    /* put permutation in the required form */
    for (i = 0; i < n; i++)
    {
        perm[spos[i]] = i;
    }
    cptrs[num] = n;

    return num;
}

bool dm_helper(int *xadj, int *adj, int nov, int *rmatch, int *cmatch,
               int *perm, int *cptrs, int *lowl, int *spos, int *prev, int *tedges, int *lookahead,
               int *compids /* the outputs */)
{

    for (int i = 0; i < nov; i++)
    {
        rmatch[i] = cmatch[i] = -1;
    }
    match(xadj, adj, rmatch, cmatch, nov, nov, compids, lowl, tedges, lookahead, prev);

    int mcount = 0; // match count
#ifdef DEBUG
    printf("Matching (r,c): ");
#endif
    for (int i = 0; i < nov; i++)
    {
#ifdef DEBUG
        printf("(%d %d) ", i, rmatch[i]);
#endif
        if (rmatch[i] >= 0)
        {
            mcount++;
            if (cmatch[rmatch[i]] != i)
            {
#ifdef DEBUG
                printf("Weird matching\n");
#endif
                return false;
            }
        }
    }
#ifdef DEBUG
    printf("\n");

    printf("Max match cardinality is %d\n", mcount);
#endif
    if (mcount != nov)
    { // the maximum matching is not perfect
#ifdef DEBUG
        printf("Matrix is not full rank - Perman is 0\n");
#endif
        return false;
    }

    int num = scc(xadj, adj, cmatch, nov, cptrs, perm, lowl, spos, prev, tedges);
#ifdef DEBUG
    printf("Number of fine DM components is %d\n", num);
#endif
    for (int i = 0; i < num; i++)
    {
#ifdef DEBUG
        printf("%d: ", cptrs[i]);
#endif
        for (int j = cptrs[i]; j < cptrs[i + 1]; j++)
        {
            compids[perm[j]] = i;
#ifdef DEBUG
            printf("%d: ", perm[j]);
#endif
        }
#ifdef DEBUG
        printf("\n");
#endif
    }

    return true;
}

bool dm(int *&xadj, int *&adj, int &nov, int &nnz)
{
    int *rmatch = (int *)malloc(sizeof(int) * nov);
    int *cmatch = (int *)malloc(sizeof(int) * nov);
    int *perm = (int *)malloc(sizeof(int) * nov);
    int *cptrs = (int *)malloc(sizeof(int) * nov);
    int *lowl = (int *)malloc(sizeof(int) * nov);
    int *spos = (int *)malloc(sizeof(int) * nov);
    int *prev = (int *)malloc(sizeof(int) * nov);
    int *tedges = (int *)malloc(sizeof(int) * nov);
    int *lookahead = (int *)malloc(sizeof(int) * nov);
    int *compids = (int *)malloc(sizeof(int) * nov);

    bool res = dm_helper(xadj, adj, nov, rmatch, cmatch, perm, cptrs, lowl, spos, prev, tedges, lookahead, compids);

    int *copy_xadj = (int *)malloc(sizeof(int) * (nov + 1));
    int *copy_adj = (int *)malloc(sizeof(int) * nnz);

    copy_xadj[0] = 0;
    int nnzcount = 0;
    for (int i = 0; i < nov; i++)
    {
        for (int ptr = xadj[i]; ptr < xadj[i + 1]; ptr++)
        {
            int j = adj[ptr];
            if (compids[i] != compids[cmatch[j]])
            {
#ifdef DEBUG
                printf("Matrix entry %d, %d is deleted\n", i, j);
#endif
            }
            else
            {
                copy_adj[nnzcount++] = j;
            }
        }
        copy_xadj[i + 1] = nnzcount;
    }

    free(xadj);
    xadj = copy_xadj;
    nnz = xadj[nov];

    free(adj);
    adj = copy_adj;
#ifdef DEBUG
    printf("After DM the new nnz count is %d\n", nnz);
#endif
    free(rmatch);
    free(cmatch);
    free(perm);
    free(cptrs);
    free(lowl);
    free(spos);
    free(tedges);
    free(prev);
    free(lookahead);
    free(compids);

    return res;
}
