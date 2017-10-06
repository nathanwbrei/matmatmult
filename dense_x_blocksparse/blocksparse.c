#include<stdlib.h>


struct blocksparse {
  int rows;          // Number of 3x3 blocks
  int cols;
  int pattern;       // 3x3 sparsity bitmask (in row-major order, for now)
  int blocksize;     // max=9, allows for padding
  double * values;   // Size = rows*cols*blocksize
};

struct colmajor {
  int rows;
  int cols;
  double * values; // Size = rows*cols
};

struct blocksparse make_random_blocksparse(int rows, int cols, int pattern, int blocksize) {

  struct blocksparse result;
  result.rows = rows;
  result.cols = cols;
  result.pattern = pattern;
  result.blocksize = blocksize;
  double * values = (double *) malloc(blocksize*rows*cols*sizeof(double));
  result.values = values;

  // Figure out nnz by counting number of 1's in pattern bitmask
  int nnz = 0;
  for (int k=0; k<9; k++) {
    nnz += pattern & 1;
    pattern = pattern >> 1;
  }

  // For each block (blockwise column-major)
  for (int j=0; j<cols; j++) {
    for (int i=0; i<rows; i++) {
      for (int k=0; k<nnz; k++) {
        values[k] = 1.0;    // Maybe make this random?
      }
      for (int k=nnz; k<blocksize; k++) {
        values[k] = 1./0;   // These are only used for padding, so let's poison them
      }
      values += blocksize;  // Move on to the next block
    }
  }
  return result;
}

struct colmajor blocksparse_to_colmajor(struct blocksparse input) {
  struct colmajor result;
  result.rows = 3*input.rows;
  result.cols = 3*input.cols;
  result.values = (double *) malloc(result.rows * result.cols * sizeof(double));


  return result;
}


