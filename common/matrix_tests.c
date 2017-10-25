
#include<stdio.h>
#include<time.h>
#include "../common/timing.h"
#include "../common/colmajor.h"


void test_sparse() {

  struct colmajor A;
  A.rows = 4;
  A.cols = 4;
  A.values = (double[]) {1.,0.,0.,0.,0.,2.,0.,0.,0.,0.,3.,0.,0.,0.,0.,4.};

  struct sparse_csc actual = dense2sparse(&A);

  struct sparse_csc expected;
  expected.values = (double[]) {1.,2.,3.,4.};

  assert_equals(expected, actual);

}

int main(int argc, char ** argv) {
  //run_tests();
  struct colmajor A;
  A.rows = 4;
  A.cols = 4;
  A.values = (double[]) {1.,0.,0.,0.,0.,2.,0.,0.,0.,0.,3.,0.,0.,0.,0.,4.};

  struct colmajor B;
  B.rows = 4;
  B.cols = 1;
  B.values = (double[]) {7.,8.,9.,10.};

  struct colmajor C_expected;
  C_expected.rows = 4;
  C_expected.cols = 1;
  C_expected.values = (double[]) {7.,16.,27.,40.};

  struct colmajor C = zeros(4,1);

  printf("======== A ========\n");
  print_matrix(&A);
  printf("======== B ========\n");
  print_matrix(&B);
  printf("======== C ========\n");
  print_matrix(&C);
  printf("======== C after ========\n");
  ddmm(&A, &B, &C);
  print_matrix(&C);

  assert_equals(C_expected, C);

  return 0;
}

