#include <stdio.h>

int main() {
  int m, n, p, i, j, k;
  double sum, a[10][10], b[10][10], c[10][10];

  printf("This program computes the matrix product A*B, where\n");
  printf("A is m x p and B is p x n.\n");
  
  printf("m= "); scanf("%d",&m);
  printf("p= "); scanf("%d",&p);
  printf("n= "); scanf("%d",&n);

  printf("Supply A row by row:\n");
  for(i=0;i<m;i++) {
    for(j=0;j<n;j++) {
      scanf("%lf",&a[i][j]);
    }
  }
  
  printf("Supply B row by row:\n");
  for(i=0;i<m;i++) {
    for(j=0;j<n;j++) {
      scanf("%lf",&b[i][j]); df(b[i][j]);
    }e();
  }

  for(i=0;i<m;i++) {
    for(j=0;j<n;j++) {
      sum = 0;
      for(k=0;k<p;k++) {
        sum += a[i][k] * b[k][j];
      }
      c[i][j] = sum;
    }
  }
  
  printf("The sum is\n");
  for(i=0;i<m;i++) {
    for(j=0;j<n;j++) {
      printf("%lf ",c[i][j]);
    }
    printf("\n");
  }
  

  
  return 0;
}
