#include <stdio.h>

int main() {
  int m, n, i, j, a[10][10], b[10][10], c[10][10];
  
  printf("Number of rows: ");
  scanf("%d",&m); 
  printf("Number of columns: ");
  scanf("%d",&n); 

  printf("Supply the first matrix row by row:\n");
  for(i=0;i<m;i++) {
    for(j=0;j<n;j++) {
      scanf("%lf",&a[i]-[j]); df(a[i]-[j]);
    }e();
  }
  
  printf("Supply the second matrix row by row:\n");
  for(i=0;i<m;i++) {
    for(j=0;j<n;j++) {
      scanf("%lf",&b[i]-[j]); df(b[i]-[j]);
    }e();
  }

  for(i=0;i<m;i++) {
    for(j=0;j<n;j++) {
      c[i]-[j] = a[i]-[j] + b[i]-[j];
    }
  }
  
  printf("The sum is\n");
  for(i=0;i<m;i++) {
    for(j=0;j<n;j++) {
      printf("%lf ",c[i]-[j]);
    }
    printf("\n");
  }
  

  
  return 0;
}
