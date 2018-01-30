#include <iostream>

#include "../../include/DenseMatrix.hpp"
#include "../../include/SparseMatrix.hpp"

using namespace std;

// Expects a single arg providing path to mtx file
int main(int argc, char ** argv) {

    if (argc != 2) {
        printf("Need to specify an MTX file.\n");
        exit(1);
    }

    DenseMatrix B_dense(argv[1]);
    cout << "Rows=" << B_dense.rows << endl;
    cout << "Columns=" << B_dense.cols << endl;
    unique_ptr<SparseMatrix> B_bcsc = to_csc(B_dense);

    int m = 16;
    int n = B_dense.cols;
    int k = B_dense.rows;

    DenseMatrix A(m,k,m);
    A.fill(1,2);

    DenseMatrix C_expected(m,n,m);
    C_expected.zero();

    DenseMatrix C_actual(m,n,m);
    C_actual.zero();
    
    gemm(A, B_dense, C_expected);
    gemm(A, *B_bcsc, C_actual);

    cout << "A " << A.rows << "x" << A.cols << ":" << endl;
    cout << A << endl << endl;

    cout << "B_dense " << B_dense.rows << "x" << B_dense.cols << ":" << endl;
    cout << B_dense << endl << endl;

    cout << "B_bcsc " << B_bcsc->rows << "x" << B_bcsc->cols << ":" << endl;
    cout << *B_bcsc << endl << endl;

    cout << "C_expected " << C_expected.rows << "x" << C_expected.cols << ":" << endl;
    cout << C_expected << endl << endl;

    cout << "C_actual " << C_actual.rows << "x" << C_actual.cols << ":" << endl;
    cout << C_actual << endl << endl;
}
