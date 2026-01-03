#include <stdio.h>

int main() {
  int i,j,n;

  printf("Size of matrix = ");
  scanf("%d",&n); 
  for(i=0;i<n;i++) {
    for(j=0;j<n;j++)
      printf("%lf ", 1.0/(2+i+j));
    printf("\n");
  }
  
  return 0;
}
