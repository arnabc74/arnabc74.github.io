#include <stdio.h>
#include <math.h>

double f(double x) {
	return exp(-x*x);
}

int main() {
  double h, sum;
  int i, n;
  printf("Supply n: ");
  scanf("%d",&n); 
  h = 1.0/n;
  sum = 0;
  for(i=1;i<=n;i++) {
	sum += f(i*h);
  }

  printf("The area is %lf.\n", h*sum);

  return 0;
}
