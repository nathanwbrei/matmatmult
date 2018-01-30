#include <iostream>
#include <assert.h>

#include "../../include/DenseMatrix.hpp"
#include "../../include/SparseMatrix.hpp"

using namespace std;


void assertEqual(double expected, double actual) {
    bool equal = fabs(expected-actual) < epsilon;
    if (!equal) {
        cout << "Mismatch: Expected " << expected << ", got " << actual << endl;
    }
    assert(equal);
}

// Test successful loading of MTX file
void test_load_mtx() {

    const char * filename = "src/cpptests/8x6.mtx";
    DenseMatrix m(filename);

    //cout << m << endl;

    assert(m.rows == 8);
    assert(m.cols == 6);

    assertEqual(222.0, m.get(0,0));
    assertEqual(7.0, m.get(1,2));
    assertEqual(14.0, m.get(5,0));
    assertEqual(0.0, m.get(0,4));
}

// Test converting a small MTX file to CSC
void test_convert_csc() {

    const char * filename = "src/cpptests/8x6.mtx";
    DenseMatrix dm(filename);
    unique_ptr<SparseMatrix> sm = to_csc(dm);

    // cout << dm << endl << endl;
    // cout << *sm << endl;

    assert(sm->rows == 8);
    assert(sm->cols == 6);
    assert(sm->nnzs == 13);

    assertEqual(222.0, sm->get(0,0));
    assertEqual(7.0, sm->get(1,2));
    assertEqual(14.0, sm->get(5,0));
    assertEqual(0.0, sm->get(0,4));


    assertEqual(222.0, sm->values[0]);
    assertEqual(7.0, sm->values[8]);
    assertEqual(14.0, sm->values[2]);
}

// Test converting a small MTX file to CSC
void test_convert_bcsc() {

    const char * filename = "src/cpptests/8x6.mtx";
    DenseMatrix dm(filename);
    unique_ptr<SparseMatrix> sm = to_bcsc(dm,4,2);

    // cout << dm << endl << endl;
    // cout << *sm << endl;

    assert(sm->rows == 8);
    assert(sm->cols == 6);
    assert(sm->nnzs == 13);

    assertEqual(222.0, sm->values[0]);
    assertEqual(9.0, sm->values[1]);
    assertEqual(14.0, sm->values[2]);
    assertEqual(15.0, sm->values[3]);
    assertEqual(16.0, sm->values[4]);
    assertEqual(17.0, sm->values[5]);
    assertEqual(18.0, sm->values[6]);
    assertEqual(19.0, sm->values[7]);
    assertEqual(7.0, sm->values[8]);
    assertEqual(20.0, sm->values[9]);
    assertEqual(21.0, sm->values[10]);
    assertEqual(22.0, sm->values[11]);
    assertEqual(1.0, sm->values[12]);
}

int main(int argc, char ** argv) {
    test_load_mtx();
    test_convert_csc();
    test_convert_bcsc();
}

