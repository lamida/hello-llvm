#include <stdio.h>

int returnNumber() {
  int a = 10;
  int b = 12;
  return a + b;
}

int add(int a, int b) { return a + b; }

int main() {
  int x = 10;
  if (x > 10) {
    printf("x is larger than 10\n");
  } else {
    printf("x is smaller or equal than 10\n");
  }

  printf("Print number is %d", returnNumber());

  int a = 10;
  int b = 13;

  printf("Let's add %d and %d = %d\n", a, b, add(a, b));
}