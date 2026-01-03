#include <stdio.h>
#include <math.h>

int main() {
  double x, ans;

  printf("Please supply a number: ");
  scanf("%lf",&x); 
  if(x>=0) {
    ans = sqrt(x);
    printf("The square roots of %lf are %lf and %lf.\n",x, -ans, ans);  
  }
  else {
    ans = sqrt(-x);
    printf("The square roots of %lf are %lfi and %lfi.\n",x, -ans, ans);  
  }

  return 0;
}
