#include "colmajor.h"

// Compressed sparse column representation of a matrix
struct sparse_csc {
  int rows;
  int cols;
  int nnz;
  double * values;  // Size = nnz
  int * row_idx;    // Size = nnz
  int * col_idx;    // Size = cols
  bool is_virtual;  // Are indices present 
};


struct sparse_csc dense2sparse(struct colmajor * input) {

  int nnz = 0;
  int rows = input->rows;
  int cols = input->cols;
  double eps = 0.0000001;

  // Compute nnz
  for (int j=0; j<cols; j++) {
    for (int i=0; i<rows; i++) {
      if (fabs(input->values[j*rows+i]) < eps) {
        nnz += 1;
      }
    }
  }
  // Allocate sparse
  struct sparse_vcsc output;
  output.nnz = nnz;
  output.rows = rows;
  output.cols = cols;
  output.values = (double *) malloc(nnz * sizeof(double));
  output.row_idx = (double *) malloc(nnz * sizeof(double));
  output.col_idx = (double *) malloc(cols * sizeof(double)); // TODO: +1?

  // Fill 
  int pos = 0;
  for (int j=0; j<cols; j++) {
    for (int i=0; i<rows; i++) {

      v = input->values[j*rows+i];
      if (v < eps) {
        output->values[pos] = v;
        output->row_idx[pos] = i;
        pos += 1;
      }
    }
    output->col_idx[j] = pos;  // TODO: Check this
  }
  return output;
}


struct sparse_csc fill_virtual(int nnz, double start_val, double increment) {

  struct sparse_vcsc output;
  output.rows = 0;
  output.cols = 0;
  output.nnz = nnz;
  output.is_virtual = true;
  output.values = (double *) malloc(nnz * sizeof(double));
  output.row_idx = NULL;
  output.col_idx = NULL;

  for (int i=0; i<nnz; i++) {
    output.values[i] = start_val;
    start_val += increment;
  }
  return output;
}

void dsgemm(struct colmajor * A, struct sparse_csc * B, struct colmajor * C) {
}

void sdgemm(struct sparse_csc * A, struct colmajor * B, struct colmajor * C) {
}



