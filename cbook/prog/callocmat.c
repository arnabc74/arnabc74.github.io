#include <stdio.h>
#include <stdlib.h>

int main() {
  int **a, nrow, ncol, i;

  printf("Number of rows: "); scanf("%d",&nrow); 
  printf("Number of columns: "); scanf("%d",&ncol); 

  a = calloc(nrow,sizeof(int*));

  for(i=0;i<nrow;i++) 
      a[i] = calloc(ncol,sizeof(int));

  printf("Allocated memory for a %d x %d int  matrix.\n", nrow, ncol);
  
  return 0;
}
