#include <stdio.h>

int main() {
  int i, j, n, nSpace1, nSpace2;
  
  printf("Number of lines = ");
  scanf("%d",&n);
  for(i=0;i<n;i++) {
    nSpace1 = i;
    nSpace2 = 2*n-2-2*i;
    for(j=0;j<nSpace1;j++) {
      printf(" ");
    }
    printf("*");
    for(j=0;j<nSpace2;j++) {
      printf(" ");
    }
    printf("*\n");
  }
  return 0;
}
