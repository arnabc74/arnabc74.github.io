#include <stdio.h>

int main() {
  int x[1000], n, i, first, countNeg;

  printf("How many numbers? ");
  scanf("%d",&n);
  printf("Supply the numbers:\n");
  for(i=0;i<n;i++)
    scanf("%d",&x[i]);

  countNeg = 0;
  first = 1;
  for(i=0;i<n;i++) {
    if(x[i] < 0) {
      if(first==1) {
        printf("Negative numbers at position(s): ");
        first = 0;
      }
      printf("%d ",i);
      countNeg++;
    }
  }

  printf("\nThere are %d negative values ", countNeg);
  printf("in the array.\n");
  
  return 0;
}
