#include<stdio.h>

int main() {
  int i, n;
  double  x, sum;

  printf("n = ");
  scanf("%d", &n);
  printf("Supply %d numbers:\n", n);
  sum = 0;
  for(i=0;i<n;i++) {
    scanf("%lf",&x);
    sum +=x;
  }
  printf("average = %lf\n",sum/n);
  
  return 0;
}   
