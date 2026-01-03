#include <stdio.h>

int main() {
  int x[100], diff[99], n, i;
  
  printf("Length of array: ");
  scanf("%d",&n); 
  printf("Supply the array: ");
  for(i=0;i<n;i++) {
    scanf("%d",&x[i]); 
  }
  
  for(i=1;i<n;i++) {
    diff[i-1] = x[i]-x[i-1];
  }

  printf("\nAfter differencing: ");
  for(i=0;i<n-1;i++) printf("%d ",diff[i]);

  return 0;
}
