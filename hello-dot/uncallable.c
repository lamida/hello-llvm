#include <stdio.h>

int add(int a, int b) {
    return a + b;
}

int sub(int a, int b) {
    return a - b;
}

int mult(int a, int b) {
    return a * b;
}

int main() {
    int x = 1;
    if (x == 1) {
        printf("%d\n", add(2, 4));
    } else {
        printf("%d\n", sub(2, 4));
    }
}