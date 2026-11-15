#include <stdio.h>

int main() {
  double x[1000], ma[1000-20], sum;
  int i, j;
  
  /*Input*/
  printf("Supply the 1000 entries of the original array:\n");
  for(i=0;i<1000;i++)
    scanf("%lf",&x[i]);

  /*Computation*/
  for(i=0;i<1000-20;i++) {
    sum = 0;
    for(j=0;j<21;j++)
      sum += x[i+j];
    ma[i] = sum/21;
  }

  /*Output*/
  printf("The moving averages are:\n");
  for(i=0;i<1000-20;i++) {
    printf("%lf ",ma[i]);
  }
  
  return 0;
}
