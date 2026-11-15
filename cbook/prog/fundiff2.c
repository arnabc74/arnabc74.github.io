#include <stdio.h>

void diff(int *values, int n, int *ans) {
  int i;
  
  for(i=0;i<n-1;i++) 
    ans[i] = values[i+1]-values[i];
}

int main() {
  int i, a[15] = {57,12,90,52,8,64,45,73,65,85,54,30,96,80,95};
  int result[14];
  
  diff(a, 15, result);
  
  for(i=0;i<14;i++)
    printf("%d ", result[i]);
  printf("\n");
  
  return 0;
}
