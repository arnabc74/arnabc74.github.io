#include <stdio.h>
#include <math.h>

double f(double x) {
  return exp(-x*x);
}

int main() {
  int i, n;
  double a, b, area, totalArea, left, right, h;
  
  printf("a = ");
  scanf("%lf",&a);
  printf("b = ");
  scanf("%lf",&b);
  
  printf("n = ");
  scanf("%d",&n);

  h = (b-a)/n;
  totalArea = 0;
  for(i=0;i<=n;i++) {
    left = a+i*h;
    right = left+h;
    area = h*(f(left)+f(right))/2;
    totalArea += area;
  }

  printf("The required area is %.3lf.\n", totalArea);
  return 0;
}
