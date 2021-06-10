#include <stdio.h>

int main() {
    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 5; j++) {
            for (int k = 0; k < 100; k++) {
                printf("I am inside loop %d, %d, %d\n", i, j, k);
            }
        }
    }
}
