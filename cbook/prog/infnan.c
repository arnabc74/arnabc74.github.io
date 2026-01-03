#include <stdio.h>

int main() {
  double x;
  x = 1/0.0;
  printf("inf+inf is %f.\n",x+x);
  printf("inf-inf is %f.\n",x-x);
  printf("inf/inf is %f.\n",x/x);
  printf("-2*inf is %f.\n",-2*x);
  return 0;
}
