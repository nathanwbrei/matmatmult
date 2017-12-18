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


int main(int argc, char** argv) {
    int x = atoi(argv[1]);
    printf("f(%d) = %d\n", x, f(x));
}




