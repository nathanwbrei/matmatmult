
#include <math.h>
#include <assert.h>

#include "sparse.hpp"
#include "dense.hpp"


double epsilon = 0.00001;

void to_dense(const Matrix & original, DenseMatrix & dense) {
  for (int ci=0; ci<original.cols; ci++) {
    for (int ri=0; ri<original.rows; ri++) {
      dense.set(ri, ci, original.get(ri,ci));
    }
  }
}


void to_csc(const Matrix & original, SparseMatrix & csc) {
  csc.clear();
  for (int ci=0; ci<original.cols; ci++) {
    for (int ri=0; ri<original.rows; ri++) {
      double x = original.get(ri,ci);
      if (fabs(x) > epsilon) {
        csc.set(ri, ci, x);
      }
    }
  }
}


void to_block_csc(const Matrix & original, SparseMatrix & bcsc, int br, int bc) {
  int Br = original.rows/br;
  int Bc = original.cols/bc;
  bcsc.clear();

  for (int Bci=0; Bci<Bc; Bci++) {
    for (int Bri=0; Bri<Br; Bri++) {
      for (int bci=0; bci<bc; bci++) {
        for (int bri=0; bri<br; bri++) {
          double x = original.get(Bri*br+bri,Bci*bc+bci);
          if (fabs(x) > epsilon) {
            bcsc.set(Bri*br+bri, Bci*bc+bci, x);
          }
        }
      }
    }
  }
}


void assert_equals(const Matrix & expected, const Matrix & actual) {

  bool equal = true;
  if (expected.rows != actual.rows) {
    equal = false;
    printf("Expected %d rows, actually %d rows\n", expected.rows, actual.rows);
  }
  if (expected.cols != actual.cols) {
    equal = false;
    printf("Expected %d cols, actually %d cols\n", expected.cols, actual.cols);
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
    printf("\n\n------ EXPECTED -----=-\n");
    expected.show();
    printf("\n\n------ ACTUAL -----=-\n");
    actual.show();
  }
  assert(equal);
}


void fill(Matrix & mat, double start_val, double increment) {
  for (int ci=0; ci<mat.cols; ci++) {
    for (int ri=0; ri<mat.rows; ri++) {
      mat.set(ri,ci,start_val);
      start_val += increment;
    }
  }
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
}

