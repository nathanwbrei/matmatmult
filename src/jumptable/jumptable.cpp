#include <stdio.h>
#include <stdlib.h>

int f(int x) {
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

int g(int x) {
    int y = -1;
    __asm__ __volatile__ (

        "cmp $0, %[x]\n\t"
        "jl DEFAULT_%=\n\t"

        "cmp $2, %[x]\n\t"
        "jg DEFAULT_%=\n\t"

        "jmp *SWITCH_%=(,%[x],8)\n\t"

      "SWITCH_%=:\n\t"
        ".quad CASE_0_%=\n\t"
        ".quad CASE_1_%=\n\t"
        ".quad CASE_2_%=\n\t"

      "CASE_0_%=:\n\t"
        "movl $22, %[y]\n\t"
        "jmp END_SWITCH_%=\n\t"

      "CASE_1_%=:\n\t"
        "movl $1, %[y]\n\t"
        "jmp END_SWITCH_%=\n\t"

      "CASE_2_%=:\n\t"
        "movl $44, %[y]\n\t"
        "jmp END_SWITCH_%=\n\t"

      "DEFAULT_%=:\n\t"
        "movl $99, %[y]\n\t"

      "END_SWITCH_%=:\n\t"
        : [y] "=r" (y)
        : [x] "r" (x));

    return y;
}


int main(int argc, char** argv) {
    int x = atoi(argv[1]);
    printf("f(%d) = %d\n", x, f(x));
    printf("g(%d) = %d\n", x, g(x));
    return 0;
}




