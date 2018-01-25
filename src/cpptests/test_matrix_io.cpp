
#include <stdio.h>
#include "../../include/matrixops.hpp"
#include "../../include/matrix_io.hpp"

// Expects a single arg providing path to mtx file
int main(int argc, char ** argv) {

    if (argc != 2) {
        printf("Need to specify an MTX file.\n");
        exit(1);
    }

    unique_ptr<SparseMatrix> B = from_mtx(argv[1]);
    int m = 16;
    int n = B->cols;
    int k = B->rows;
    DenseMatrix A(m,k,m);
    DenseMatrix C(m,n,m);
    
    fill(A, 1, 2);
    gemm(A, *B, C);

    printf("=================================\n");
    printf("A: R(%d x %d)\n", A.rows, A.cols);
    A.show();

    printf("=================================\n");
    printf("B: R(%d x %d), %d nnzs\n", B->rows, B->cols, B->nnz);
    B->show();

    printf("=================================\n");
    printf("C: R(%d x %d)\n", C.rows, C.cols);
    C.show();

}
