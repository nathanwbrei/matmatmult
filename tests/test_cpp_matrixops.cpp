
#include <stdio.h>
#include "../include/matrixops.hpp"


int main(int argc, char ** argv) {

    DenseMatrix A(16,6,16);
    DenseMatrix C_expected(16,16,16);
    DenseMatrix C_actual(16,16,16);
    SparseMatrix B(6,16);
    DenseMatrix B_dense(6,16,6);

    fflush(stdout);
    fill(A, 1, 2);

    printf("=================================\n");
    printf("A: R(%d x %d)\n", A.rows, A.cols);
    A.show();
    fflush(stdout);

    B_dense.set(1,1,1);
    B_dense.set(2,0,2);
    B_dense.set(0,3,3);
    B_dense.set(5,1,4);
    B_dense.set(3,12,5);
    B_dense.set(1,9,6);
    B_dense.set(5,15,7);
    B_dense.set(1,0,8);
    B_dense.set(5,10,9);
    B_dense.set(3,1,10);

    printf("=================================\n");
    printf("B_dense: R(%d x %d)\n", B_dense.rows, B_dense.cols);
    B_dense.show();
    fflush(stdout);

    to_block_csc(B_dense, B, 3, 16);

    printf("=================================\n");
    printf("B: R(%d x %d), %d nnzs\n", B.rows, B.cols, B.nnz);
    B.show();
    fflush(stdout);

    gemm(A, B_dense, C_expected);
    printf("=================================\n");
    printf("C_expected: R(%d x %d)\n", C_expected.rows, C_expected.cols);
    C_expected.show();
    fflush(stdout);

    //scalability_full_10_nnzs(A.values, B.values, C_actual.values);
    //assert_equals(C_expected, C_actual);

}
