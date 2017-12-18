#include <stdio.h>
#include <stdlib.h>

int f(int x) {
    switch (x) {
        case 0:
            return 22;
        case 1:
            return 33;
        case 2:
            return 44;
        default:
            return 99;
  }
}

int g(int x) {
    int y = -1;
    __asm__ __volatile__ (
        "movl %[x], %[y]\n\t"
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




