#include <stdio.h>
#include <stdlib.h>

int main() {
  int **a, row, col, i, j, hasSpace;

  printf("Number of rows: "); scanf("%d",&row);
  printf("Number of columns: "); scanf("%d",&col);

  hasSpace = 1;
  
  a = calloc(row,sizeof(int*));

  if(a) {
    for(i=0;i<row;i++) { 
      a[i] = calloc(col,sizeof(int));
      if(a[i]) continue;
      hasSpace = 0;
      for(j=0;j<i;j++) {`\includegraphics{arrow.pdf}`
        free(a[j]);     `\includegraphics{arrow.pdf}`
        a[j] = 0;       `\includegraphics{arrow.pdf}`
      }                 `\includegraphics{arrow.pdf}`
      free(a);
      a = 0;
      break;
    }
  }
  else {
    hasSpace = 0;
  }
  
  if(hasSpace==0) {
      fprintf(stderr,"Not enough space.\n");
      return 1;
  }

  return 0;
}
