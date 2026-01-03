#include <stdio.h>

int main() {
  int n, i, j;

  printf("Number of lines: ");
  scanf("%d",&n);
  
  for(i=1;i<=n;i++) {
    /*Draw i-th line, 
      i.e., n-i spaces, then i *'s and then \n */
    for(j=0;j<n-i;j++) printf(" ");
    for(j=0;j<i;j++) printf("*");
    printf("\n");
  }
  return 0;
}
