
#include <stdio.h>
#include <iostream>
#include "../../include/DenseMatrix.hpp"
#include "../../include/SparseMatrix.hpp"


int main(int argc, char ** argv) {

    DenseMatrix A(16,6,16);
    A.fill(1,2);
    DenseMatrix C_expected(16,16,16);
    DenseMatrix C_actual(16,16,16);
    DenseMatrix B_dense(6,16,6);


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
    printf("A: R(%d x %d)\n", A.rows, A.cols);
    std::cout << A << std::endl << std::endl;

    printf("=================================\n");
    printf("B_dense: R(%d x %d)\n", B_dense.rows, B_dense.cols);
    std::cout << B_dense << std::endl << std::endl;

    auto B = to_bcsc(B_dense, 3, 16);

    printf("=================================\n");
    printf("B: R(%d x %d), %d nnzs\n", B->rows, B->cols, B->nnzs);
    std::cout << *B << std::endl << std::endl;

    gemm(A, B_dense, C_expected);
    printf("=================================\n");
    printf("C_expected: R(%d x %d)\n", C_expected.rows, C_expected.cols);
    std::cout << C_expected << std::endl << std::endl;

    //scalability_full_10_nnzs(A.values, B.values, C_actual.values);
    //assert_equals(C_expected, C_actual);

}
