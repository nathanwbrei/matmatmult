
#pragma once

#include <iostream>
#include <iomanip>
#include <math.h>
#include <assert.h>

const double epsilon = 1e-10;
using namespace std;

struct Matrix {

  int rows, cols;

  virtual double get(int row, int col) const = 0;
  virtual void set(int row, int col, double val) = 0;

};

ostream & operator<<(ostream & os, const Matrix & m) {

  for (int ri = 0; ri < m.rows; ri++) {
    for (int ci = 0; ci < m.cols; ci++) {
      os << std::fixed << std::setw(10) << std::setprecision(2);
      os << m.get(ri,ci) << " ";
    }
    os << std::endl;
  }
  return os;
}



void assert_equals(const Matrix & expected, const Matrix & actual) {

  bool equal = true;
  if (expected.rows != actual.rows) {
    equal = false;
    cout << "Row mismatch! Expected " << expected.rows << ", got " << actual.rows << endl;
  }
  if (expected.cols != actual.cols) {
    equal = false;
    cout << "Column mismatch! Expected " << expected.cols << ", got " << actual.cols << endl;
  }
  for (int ri = 0; ri < expected.rows; ri++) {
    for (int ci = 0; ci < expected.cols; ci++) {
      double a = expected.get(ri,ci);
      double b = actual.get(ri,ci);
      if (fabs(a-b) > epsilon) {
        equal = false;
        //printf("Mismatch %f != %f at row %d, col %d\n", a,b,row,col);
      }
    }
  }
  if (!equal) {
    cout << endl << endl << "EXPECTED:" << endl << expected;
    cout << endl << endl << "ACTUAL:" << endl << actual << endl;
  }
  assert(equal);
}


void gemm(const Matrix & A, const Matrix & B, Matrix & C) {

  int m = C.rows;
  int n = C.cols;
  int k = A.cols;

  for (int ni=0; ni<n; ni++) {
    for (int ki=0; ki<k; ki++) {
      for (int mi=0; mi<m; mi++) {

        double c = C.get(mi,ni);
        double ab = A.get(mi,ki) * B.get(ki,ni);
        C.set(mi, ni, c+ab);
      }
    }
  }
};


