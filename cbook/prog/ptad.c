#include<stdio.h>

void main() {
  int x;
  
  x = 56;

  printf("value = %d\n",*(&x));
} 
