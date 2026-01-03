#include <stdio.h>

double a[100][101];
int n;

void input() {
  int i, j;
  
  printf("Number of equations = ");
  scanf("%d",&n);
  printf("Please supply the augmented matrix row by row:\n");
  for(i=0;i<n;i++) 
    for(j=0;j<n+1;j++) 
      scanf("%lf",&a[i][j]);
}

int main() {

  input();
  
  return 0;
}
