#include <stdio.h>
#include <stdlib.h>


void table(int x, int& y) {
  switch (x) {
  case 0:
    y += 22; break;
  case 1:
    y += 1; break;
  case 2:
    y += 44; break;
  default:
    y += 99; break;
  }
}

int expected() {
  int xs[6] = {0,3,2,3,1,2};
  int y = 0;

  for (int i=0; i<6; i++) {
    table(xs[i], y);
  }
  return y;
}


int actual_looped() {
  int xs_underlying [6] = {0,3,2,3,1,2};
  int * xs = xs_underlying;
  int y;

  // rdi: Pointer to xs
  // rcx: Iteration variable over xs
  // edx: Table entry

  __asm__ __volatile__ (

      "movl $0, %[y]\n\t"
      "movq %[xs], %%rdi\n\t"
      "movq $0, %%rcx\n\t"
      "LOOP_TOP_%=:\n\t"

        "movl (%%rdi,%%rcx,4), %%edx\n\t"
        "jmpq *TABLE_%=(,%%edx,8)\n\t"

        "TABLE_%=:\n\t"
        ".quad CASE_0_%=\n\t"
        ".quad CASE_1_%=\n\t"
        ".quad CASE_2_%=\n\t"
        ".quad CASE_3_%=\n\t"

        "CASE_0_%=:\n\t"
        "addl $22, %[y]\n\t"
        "jmp END_SWITCH_%=\n\t"

        "CASE_1_%=:\n\t"
        "addl $1, %[y]\n\t"
        "jmp END_SWITCH_%=\n\t"

        "CASE_2_%=:\n\t"
        "addl $44, %[y]\n\t"
        "jmp END_SWITCH_%=\n\t"

        "CASE_3_%=:\n\t"
        "addl $99, %[y]\n\t"

        "END_SWITCH_%=:\n\t"

      "addq $1, %%rcx\n\t"
      "cmpq $6, %%rcx\n\t"
      "jl LOOP_TOP_%=\n\t"

      : [y] "=r" (y)
      : [xs] "m" (xs)
      : "rcx", "rdi", "rdx");

    return y;
}

int main(int argc, char** argv) {
  printf("expected = %d\n", expected());
  printf("actual_looped = %d\n", actual_looped());
  return 0;
}




