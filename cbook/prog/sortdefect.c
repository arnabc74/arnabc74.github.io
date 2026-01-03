#include <stdio.h>

int main() {
  int x[1000], i, n, found;


  printf("How many numbers? ");
  scanf("%d",&n);
  printf("Supply the numbers:\n");
  for(i=0;i<n;i++)
    scanf("%d",&x[i]);


  found = 0;
  for(i=0;i<n-1;i++) {
    if(x[i] > x[i+1]) {
        found = 1;
        break;
    }
  }

  if(found==1) {
    printf("\nThe array is not sorted in ascending order.\n");
    printf("Here x[%d] > x[%d].\n",i, i+1);
  }
  else {
    printf("\nThe array is sorted in ascending order.\n");
  }
  return 0;
}
