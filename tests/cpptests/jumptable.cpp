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

        // ".text\n\t"
        "movl TABLE(,%[x],4), %[y]\n\t"
        "jmp FINISHED\n\t"

        // ".section .rodata\n\t"
        "TABLE:\n\t"
        ".long 22\n\t"
        ".long 1\n\t"
        ".long 44\n\t"
        ".long 99\n\t"

        "FINISHED:\n\t"
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




