#include <stdio.h>

void fun(int p, int x) {
  p = 5;
  x = 67;
  printf("In fun: p = %d, x = %d\n", p, x);
}

int main() {
  int x;

  x = 7;
  fun(3,x);
  printf("In main: x = %d\n", x);
  return 0;
}


