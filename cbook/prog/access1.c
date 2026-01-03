#include <stdio.h>
#include <math.h>

int main() {
  int x[10], i, val;

  printf("Index = ");
  scanf("%d",&i); 
  printf("Value = "); 
  scanf("%d",&val); 
  
  x[i] = val;

  printf("x[%d] = %d.\n",i,x[i]);
               
  return 0;
}
