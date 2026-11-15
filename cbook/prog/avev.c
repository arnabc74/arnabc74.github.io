#include<stdio.h>

int main() {
  int i, n, sum;

  printf("n = ");
  scanf("%d", &n);

  sum = 0;
  for(i=1;i<=n;i++) {
    sum += 2*i;
  }
  printf("sum of first %d even numbers = %d\n",n,sum);
  
  return 0;
}   
