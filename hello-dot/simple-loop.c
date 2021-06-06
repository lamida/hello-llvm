#include <stdio.h>

// Simple program from ScaRR paper to test the CFG.
// See section 4
// https://arxiv.org/abs/1807.08003

void sA() {
    printf("sA");
}

void my_terminate() {
    printf("Exiting...");
}

int main() {
    sA();
    for (int i = 0; i < 10; i++) {
        printf("n2");
    }
    printf("n3");
    my_terminate();
}


