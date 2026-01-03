#include <stdio.h>

int main() {
  int i, j, n, minPos, a[50], tmp, min;

  printf("How many numbers: ");
  scanf("%d",&n); 
  printf("Supply the numbers: ");
  for(i=0;i<n;i++) {
    scanf("%d",&a[i]); 
  }
 
  for(i=0;i<n-1;i++) {
    /*Find minPos such that a[minPos] is minm among a[i]...a[n-1] */
    min = a[i]; minPos = i; 
    for(j=i+1;j<n;j++) {
      if(a[j] < min) {
        min = a[j];
        minPos = j;
      }
    }
	
    /*Swap a[minPos] and a[i]*/
    tmp = a[minPos];
    a[minPos] = a[i];
    a[i] = tmp;
  }

  printf("\nThe numbers in ascending order: ");
  for(i=0;i<n;i++) {
    printf("%d ",a[i]);
  }

  return 0;
}
