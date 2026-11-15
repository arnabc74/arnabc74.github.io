#include <stdio.h>

int main() {
  int m, i, j;
  double a[10][10];

  printf("Number of rows: "); scanf("%d",&m);

  printf("Supply the matrix row by row:\n");
  for(i=0;i<m;i++) {
    for(j=0;j<m;j++) {
      scanf("%lf",&a[i][j]);
    }
  }

  for(i=0;i<m;i++) 
    for(j=0;j<i;j++) 
        a[i][j] = a[j][i];
  
  printf("The transpose is\n");
  for(i=0;i<m;i++) {
    for(j=0;j<m;j++) {
      printf("%lf ",a[i][j]);
    }
    printf("\n");
  }
}
