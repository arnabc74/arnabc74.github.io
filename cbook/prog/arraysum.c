#include<stdio.h>

void main() {
  int x[]={3,5,2,-89,5,4,3,8,0,34};
  int i, sum;

  sum = 0;
  for(i=0;i<10;i++) 
    sum = sum + x[i];
  
  printf("Sum = %d\n",sum);
}
