#include<stdio.h>

void main() {
  int x[]={1,12,34,3,-4};
  int i;
  for(i=0;i<5;i++) {
    printf("%d",x[i]);
    if(i<4)
      printf(", ");
    else
      printf(" ");
  }
} 
