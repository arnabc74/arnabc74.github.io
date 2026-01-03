#include <stdio.h>

int main() {
  int m, n, p, i, j, k;
  double a[10][10], b[10][10];

  printf("Number of rows: "); scanf("%d",&m);
  printf("Number of columns: "); scanf("%d",&n);

  printf("Supply the matrix row by row:\n");
  for(i=0;i<m;i++) {
    for(j=0;j<n;j++) {
      scanf("%lf",&a[i][j]);
    }
  }

  for(i=0;i<n;i++) 
    for(j=0;j<m;j++) 
        b[i][j] = a[j][i];
  
  printf("The transpose is\n");
  for(i=0;i<n;i++) {
    for(j=0;j<m;j++) {
      printf("%lf ",b[i][j]);
    }
    printf("\n");
  }
}
