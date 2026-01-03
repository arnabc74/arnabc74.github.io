#include<stdio.h>

void main() {
  int x[]={4,6,7,2,5,6,7,9,5,6};
  int y[10], i;
  
  for(i=0;i<10;i++)
    y[i] = 2*x[i];

  for(i=0;i<10;i++) 
    printf("%d\n",y[i]);
}
