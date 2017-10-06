
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

struct blocksparse make_random_blocksparse(int rows, int cols, int pattern) {
}

struct colmajor blocksparse_to_colmajor(struct blocksparse input) {
  
}


