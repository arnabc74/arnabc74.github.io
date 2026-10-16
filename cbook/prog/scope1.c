#include <stdio.h>

int x = 10;

void f(int y) {
  int z;
  printf("w = %d\n", w);`\
  printf("x = %d\n", x);
  printf("y = %d\n", y);
  printf("z = %d\n", z);
}

void g() {
  printf("w = %d\n", w);`\
  printf("x = %d\n", x);
  printf("y = %d\n", y);`\
  printf("z = %d\n", z);`\
}

  

int main() {
  int w;

  w = 56;

  printf("w = %d\n", w);
  printf("x = %d\n", x);
  printf("y = %d\n", y);`\
  printf("z = %d\n", z);`\
  return 0;
}
