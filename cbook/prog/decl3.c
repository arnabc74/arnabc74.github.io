#include <stdio.h>

double square(double x);`\includegraphics{arrow.pdf}`

int main() {
  double val;

  printf("Supply a value: ");
  scanf("%lf",&val);
  printf("Square of %f is %f.\n",val,square(val));
  return 0;
}

double square(double x) {
  return x*x;
}

