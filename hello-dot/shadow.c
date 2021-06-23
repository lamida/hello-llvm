#include <stdio.h>

void a(int x) {
    printf("%d\n", x);
    return;
}

int main() {
    a(10);
    printf("irrelevant");
    a(6);
    return 0;
}
