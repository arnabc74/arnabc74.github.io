#include <stdio.h>

int findSum(int *values, int n) {
  int i, sum;
  sum = 0;
  for(i=0;i<n;i++) 
    sum += values[i];

  return sum;
}

int main() {
  int a[15] = {57,12,90,52,8,64,45,73,65,85,54,30,96,80,95};
  int result;
  
  result = findSum(a,15);
  printf("total = %d\n", result);
  return 0;
}
