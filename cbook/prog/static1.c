#include <stdio.h>

void f() {
  static int x = 45;`\
  printf("x = %d.\n",x);
  x += 10;
}

void main() {
  f();
  f();
  f();
}
