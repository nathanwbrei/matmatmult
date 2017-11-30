#include "matrix.hpp"

struct SparseMatrix : public Matrix {

  int nnz;
  double * values;
  int * row_idx;
  int * col_idx;

  SparseMatrix(int rows, int cols) {
    this->rows = rows;
    this->cols = cols;
    values = new double[rows*cols];
    row_idx = new int[rows*cols];
    col_idx = new int[rows*cols];
    nnz = 0;
  }

  ~SparseMatrix() {
    delete [] values;
    delete [] row_idx;
    delete [] col_idx;
  }

  virtual double get(int row, int col) const {
    for (int x=0; x<nnz; x++) {
      if (row_idx[x] == row && col_idx[x] == col) {
        return values[x];
      }
    }
    return 0.0;
  }

  virtual void set(int row, int col, double val) {
    bool found = false;
    for (int x=0; x<nnz; x++) {
      if (row_idx[x] == row && col_idx[x] == col) {
        found = true;
        values[x] = val;
      }
    }
    if (!found) {
      values[nnz] = val;
      row_idx[nnz] = row;
      col_idx[nnz] = col;
      nnz += 1;
    }
  }

  virtual void clear() {
    nnz = 0;
  }

};


