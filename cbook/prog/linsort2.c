#include <stdio.h>
#include <math.h>

int main() {
  int i, j, n, maxPos, a[50], tmp, max;


  printf("How many numbers: ");
  scanf("%d",&n);  
  printf("Supply the numbers: ");
  for(i=0;i<n;i++) {
    scanf("%d",&a[i]); di(a[i]);
  }
  
  for(i=0;i<n-1;i++) {
    /*Find k such that a[k] is maxm among a[i]...a[n-1] */
    max = a[i]; maxPos = i; 
    for(j=i;j<n;j++) {
      if(a[j] > max) {
        max = a[j];
        maxPos = j;
      }
    }
	
    /*Swap a[maxPos] an a[i]*/
    tmp = a[maxPos];
    a[maxPos] = a[i];
    a[i] = tmp;
  }

  printf("\nThe numbers in descending order: ");
  for(i=0;i<n;i++) {
    printf("%d ",a[i]);
  }
  return 0;
}
