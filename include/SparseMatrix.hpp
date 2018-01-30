
#pragma once

#include "Matrix.hpp"

struct SparseMatrix : public Matrix {

//  int rows;
//  int cols;
  int nnzs;
  int size;
  double * values;
  int * row_idx;
  int * col_idx;

  SparseMatrix(int rows, int cols, int size) : size(size) {
    nnzs = 0;
    this->rows = rows;
    this->cols = cols;
    values = new double[size];
    row_idx = new int[size];
    col_idx = new int[size];
  }

  ~SparseMatrix() {
    delete [] values;
    delete [] row_idx;
    delete [] col_idx;
  }

  virtual double get(int row, int col) const {
    for (int x=0; x<nnzs; x++) {
      if (row_idx[x] == row && col_idx[x] == col) {
        return values[x];
      }
    }
    return 0.0;
  }

  virtual void set(int row, int col, double val) {
    bool found = false;
    for (int x=0; x<nnzs; x++) {
      if (row_idx[x] == row && col_idx[x] == col) {
        found = true;
        values[x] = val;
      }
    }
    if (!found) {
      values[nnzs] = val;
      row_idx[nnzs] = row;
      col_idx[nnzs] = col;
      nnzs += 1;
    }
  }
};


ostream& operator<<(ostream & os, const SparseMatrix & m) {
  for (int i=0; i<m.nnzs; i++) {
    os << m.values[i] << " ";
  }
  return os;
}  


unique_ptr<SparseMatrix> to_csc(const Matrix & m) {

  auto result = unique_ptr<SparseMatrix>(new SparseMatrix(m.rows, m.cols, m.rows*m.cols));

  for (int ci=0; ci<m.cols; ci++) {
    for (int ri=0; ri<m.rows; ri++) {
      double x = m.get(ri,ci);
      if (fabs(x) > epsilon) {
        result->set(ri, ci, x);
      }
    }
  }
  return result;
}


unique_ptr<SparseMatrix> to_bcsc(const Matrix & m, int br, int bc) {
  int Br = m.rows/br;
  int Bc = m.cols/bc;
  auto result = unique_ptr<SparseMatrix>(new SparseMatrix(m.rows, m.cols, m.rows*m.cols));

  for (int Bci=0; Bci<Bc; Bci++) {
    for (int Bri=0; Bri<Br; Bri++) {
      for (int bci=0; bci<bc; bci++) {
        for (int bri=0; bri<br; bri++) {
          double x = m.get(Bri*br+bri, Bci*bc+bci);
          if (fabs(x) > epsilon) {
            result->set(Bri*br+bri, Bci*bc+bci, x);
          }
        }
      }
    }
  }
  return result;
}





