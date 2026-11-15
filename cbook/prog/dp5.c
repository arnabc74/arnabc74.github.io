#include <stdio.h>
#include <math.h>

double *allTrig(double x) {
  double ans[3];

  ans[0] = sin(x); ans[1] = cos(x); ans[2] = tan(x);

  return ans;
}

int main() {
  double x, *result;
  
  printf("Supply x: ");
  scanf("%lf", &x);

  result = allTrig(x);
  printf("sin(x) = %lf, cos(x) = %lf, tan(x) = %lf.\n",
         result[0], result[1], result[2]);
  return 0;
}
