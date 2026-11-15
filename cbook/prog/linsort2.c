#include <stdio.h>

int main() {
  int i, j, n, minPos, maxPos, a[50], tmp,
    min, max, dir;

  printf("How many numbers: ");
  scanf("%d",&n); 
  printf("Supply the numbers: ");
  for(i=0;i<n;i++) {
    scanf("%d",&a[i]);
  }
  printf("Ascending(1) or descending(2)? ");
  scanf("%d",&dir);

  if(dir==1) {
    for(i=0;i<n-1;i++) {
      /*Find minPos such that a[minPos] is minm 
        among a[i]...a[n-1] */
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
  }
  else {
    for(i=0;i<n-1;i++) {
      /*Find maxPos such that a[maxPos] is maxm 
        among a[i]...a[n-1] */
      max = a[i]; maxPos = i; 
      for(j=i+1;j<n;j++) {
        if(a[j] > max) {
          max = a[j];
          maxPos = j;
        }
      }
      
	
      /*Swap a[maxPos] and a[i]*/
      tmp = a[maxPos];
      a[maxPos] = a[i];
      a[i] = tmp;
    }
  }

  if(dir==1) 
    printf("\nThe numbers in ascending order: ");
  else
    printf("\nThe numbers in descending order: ");

  for(i=0;i<n;i++) {
    printf("%d ",a[i]);
  }

  return 0;
}
