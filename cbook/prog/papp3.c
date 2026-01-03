#include <stdio.h>

void f(int *px, double y, double *pz) {
  *px = 56;
  y = 34.3;
  *pz = -45.7;
}

int main() {
  int a=3;
  double b=2.0, c=3.14;
  
  printf("before: a = %d, b = %lf, c = %lf\n", a, b, c);
  f(&a, b, &c);
  printf("after: a = %d, b = %lf, c = %lf\n", a, b, c);

  return 0;
}
