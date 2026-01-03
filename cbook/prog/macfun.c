#include <stdio.h>

#define MULT(x,y) x*y

int mult(int x, int y) { return x*y; }

int main() {
  printf("MULT(2,3+4) = %d\n",MULT(2,3+4));
  printf("mult(2,3+4) = %d\n",mult(2,3+4));
  return 0;
}
