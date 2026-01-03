#include <stdio.h>

int main() {
  int i, j, n, nSpace, nStar;
  
  printf("Number of lines = ");
  scanf("%d",&n);
  for(i=0;i<n;i++) {
    nSpace = n-i-1;
    nStar = 2*i+1;
    for(j=0;j<nSpace;j++) {
      printf(" ");
    }
    for(j=0;j<nStar;j++) {
      printf("*");
    }
    printf("\n");
  }
  return 0;
}
