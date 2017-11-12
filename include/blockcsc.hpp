#include "colmajor.h"
#include <assert.h>

/* Represents a blockwise sparse matrix format where each block contains one
   of a predefined set of sparsity patterns.
 * Using a dense format (for now) to represent block patterns, block offsets,
 * and the patterns themselves. The SpGEMMs access the values 'virtually', avoiding index lookups,
 * so we aren't particularly concerned about memory use or performance.
 */

class BlockCSC {

public:
  int Br;  // Rows of blocks
  int br;  // Rows in block
  int Bc;  // Cols of blocks
  int bc;  // Cols in block

  int * block_patterns;   // [rB * cB]
  int * block_offsets;    // [rB * cB]

  int n_patterns;
  int * patterns;         // n_patterns * rb * cb

  int n_values;         // max [rb*rB*cb*cB]
  double * values;


  BlockCSC(int n_values, double * values) {
    this->n_values = n_values;
    this->values = values;
  }

  BlockCSC(int Br, int Bc, int * block_patterns,
           int br, int bc, int n_patterns, int * patterns,
           double * values) {
    // TODO: Figure out initializer list, again
    // TODO: What is the best ctor sig?
    // TODO: Calculate nnzs, offsets for each pattern
  }

  // TODO: Change this to operator[]
  double get(int row, int col) {
    int Bri = row / br;    // Inter-block row index
    int bri = row % br;    // Intra-block row index
    int Bci = col / bc;    // Inter-block column index
    int bci = col % bc;    // Intra-block column index

    int pattern = block_patterns[Br*Bci + Bri];
    int B_offset = block_offsets[Br*Bci + Bri];
    int b_offset = patterns[pattern*br*bc + br*bci + bri];

    if (b_offset == -1) {
      throw runtime_error{"No such entry exists in matrix!"};
    }
    return values[B_offset + b_offset];
  }

  void toDense(struct colmajor * result) {

    int rows = Br*br;
    int cols = Bc*bc;

    assert(result->rows == rows);
    assert(result->cols == cols);
    reset(result);

    for (int ci=0; ci<cols; ci++) {
      for (int ri=0; ri<rows; ri++) {
        result->values[ci*rows + ri] = get(ri, ci);
      }
    }
  }
};



