#include <stdio.h>

long fib(long n) {
    if (n < 2) {
        return n;
    }
    return fib(n-1) + fib(n-2);
}

void main() {
    printf("fib(5) = %ld\n", fib(5));
}
