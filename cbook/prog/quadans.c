#include <stdio.h>

double f(double x) {
	return x*x;
}

int main() {
  double a,b, h, sum;
  int i, n;
  printf("This program finds the area bounded ");
  printf("by the graph of y=x^2, x-axis\n");
  printf("and the lines x=a and x=b for a < b.\n\n");
  printf("Supply a, b: ");
  scanf("%lf%lf",&a,&b);
  if(a>=b) {
    printf("Sorry, we need a < b.\n");
    return 1;
  }
  printf("Supply n: ");
  scanf("%d",&n); 
  h = (b-a)/n;
  sum = 0;
  for(i=1;i<=n;i++) {
	sum += f(i*h);
  }

  printf("The area is %lf.\n", h*sum);

  return 0;
}
