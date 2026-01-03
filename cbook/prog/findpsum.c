#include <stdio.h>


int findPartialSum(int *values, int start, int end) {
  int i, sum;
  
  sum = 0;
  for(i=start;i<=end;i++)
    sum += values[i];
  
  return sum;
}


int main() {
  int a[]={23,45,63,2, -1, 54, 23, 29, 86, 90, 36};

  printf("Partial sum of all entries from 2 to 8 is %d.\n",findPartialSum(a,2,8));
  
  return 0;
}
