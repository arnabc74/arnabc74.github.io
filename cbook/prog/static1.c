#include <stdio.h>

void f() {
  static int x = 45;`\includegraphics{arrow.pdf}`
  printf("x = %d.\n",x);
  x += 10;
}

void main() {
  f();
  f();
  f();
}
