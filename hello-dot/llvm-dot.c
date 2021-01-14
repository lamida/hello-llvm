#include <stdio.h>

void b1() {
  printf("b1 is called\n");
}

void b2() {
  printf("b2 is called\n");
}

void c() {
  printf("c is called\n");
}

void e() {
  printf("e is called\n");
}

void d() {
  printf("d is called\n");
  e();
}

int main() {
  int a = 1;
  if (a == 1) {
    b1();
  } else {
    b2();
  }
  c();
  d();
}
