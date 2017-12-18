#include <stdio.h>
#include <stdlib.h>

int table(int x) {
  switch (x) {
  case 0:
    return 22;
  case 1:
    return 1;
  case 2:
    return 44;
  default:
    return 99;
  }
}

int expected() {
  int xs[6] = {0,3,2,3,1,2};
  int y = 0;

  for (int i=0; i<6; i++) {
    y += table(xs[i]);
  }
  return y;
}

int actual_unrolled() {
  int x;
  int y;
  __asm__ __volatile__ (

      "movl $0, %[y]\n\t"

      "movq $RETURN_0_%=, %%r10\n\t"
      "jmp CASE_0_%=\n\t"
      "RETURN_0_%=:\n\t"

      "movq $RETURN_1_%=, %%r10\n\t"
      "jmp CASE_3_%=\n\t"
      "RETURN_1_%=:\n\t"

      "movq $RETURN_2_%=, %%r10\n\t"
      "jmp CASE_2_%=\n\t"
      "RETURN_2_%=:\n\t"

      "movq $RETURN_3_%=, %%r10\n\t"
      "jmp CASE_3_%=\n\t"
      "RETURN_3_%=:\n\t"

      "movq $RETURN_4_%=, %%r10\n\t"
      "jmp CASE_1_%=\n\t"
      "RETURN_4_%=:\n\t"

      "movq $RETURN_5_%=, %%r10\n\t"
      "jmp CASE_2_%=\n\t"
      "RETURN_5_%=:\n\t"

      "jmp END_SWITCH_%=\n\t"

      "CASE_0_%=:\n\t"
        "addl $22, %[y]\n\t"
        "jmp *%%r10\n\t"

      "CASE_1_%=:\n\t"
        "addl $1, %[y]\n\t"
        "jmp *%%r10\n\t"

      "CASE_2_%=:\n\t"
        "addl $44, %[y]\n\t"
        "jmp *%%r10\n\t"

      "CASE_3_%=:\n\t"
        "addl $99, %[y]\n\t"
        "jmp *%%r10\n\t"

      "END_SWITCH_%=:\n\t"
      : [y] "=r" (y), [x] "=r" (x));

    return y;
}


int main(int argc, char** argv) {
    printf("expected = %d\n", expected());
    printf("actual_unrolled = %d\n", actual_unrolled());
    return 0;
}




