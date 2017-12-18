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

      "movl $0, %[x]\n\t"
      "movq $RETURN_0_%=, %%r10\n\t"
      "jmp *TABLE_%=(,%[x],8)\n\t"
      "RETURN_0_%=:\n\t"

      "movl $3, %[x]\n\t"
      "movq $RETURN_1_%=, %%r10\n\t"
      "jmp *TABLE_%=(,%[x],8)\n\t"
      "RETURN_1_%=:\n\t"

      "movl $2, %[x]\n\t"
      "movq $RETURN_2_%=, %%r10\n\t"
      "jmp *TABLE_%=(,%[x],8)\n\t"
      "RETURN_2_%=:\n\t"

      "movl $3, %[x]\n\t"
      "movq $RETURN_3_%=, %%r10\n\t"
      "jmp *TABLE_%=(,%[x],8)\n\t"
      "RETURN_3_%=:\n\t"

      "movl $1, %[x]\n\t"
      "movq $RETURN_4_%=, %%r10\n\t"
      "jmp *TABLE_%=(,%[x],8)\n\t"
      "RETURN_4_%=:\n\t"

      "movl $2, %[x]\n\t"
      "movq $RETURN_5_%=, %%r10\n\t"
      "jmp *TABLE_%=(,%[x],8)\n\t"
      "RETURN_5_%=:\n\t"

      "jmp END_SWITCH_%=\n\t"


      "TABLE_%=:\n\t"
        ".quad CASE_0_%=\n\t"
        ".quad CASE_1_%=\n\t"
        ".quad CASE_2_%=\n\t"
        ".quad CASE_3_%=\n\t"

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




