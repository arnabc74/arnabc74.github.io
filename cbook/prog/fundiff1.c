#include <stdio.h>
#include <stdlib.h>

int *diff(int *values, int n) {
  int i, *y;
  
  y = calloc(n-1,sizeof(int));
  if(y==0) return 0;
  
  for(i=0;i<n-1;i++) 
    y[i] = values[i+1]-values[i];

  return y;
}

int main() {
  int i, a[15] = {57,12,90,52,8,64,45,73,65,85,54,30,96,80,95};
  int *result;
  
  result = diff(a,15);
  
  for(i=0;i<14;i++)
    printf("%d ", result[i]);
  printf("\n");
  
  return 0;
}
