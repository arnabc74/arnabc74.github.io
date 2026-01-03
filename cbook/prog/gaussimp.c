#include <stdio.h>
#include <math.h>

#define ISZERO(what) (fabs(what)<1e-9)

double a[100][101];
int n;
int rank;

void dump() {
  int i, j;
  
  for(i=0;i<n;i++) {
    for(j=0;j<=n;j++) { 
      printf("%lf ",a[i][j]);
      if(j==n-1) printf(" | ");
    }
  printf("\n");
  }
}

void input() {
  int i, j;
  
  printf("n = ");
  scanf("%d",&n);
  printf("The augmented matrix (row by row):\n");
  for(i=0;i<n;i++)
    for(j=0;j<=n;j++)
      scanf("%lf",&a[i][j]);
}

void swap(int r, int s) {
  int j;
  double tmp;
  
  for(j=0;j<=n;j++) {
    tmp = a[r][j];
    a[r][j] = a[s][j];
    a[s][j] = tmp;
  }
}

void divide(int r, double factor) {
  int j;
  
  for(j=0;j<=n;j++) {
    a[r][j] /= factor;
  }
}

void add(int r, int s, double factor) {
  int j;
  
  for(j=0;j<=n;j++) {
    a[s][j] += factor*a[r][j];
  }
}

void gauss() {
  int i,p;
  for(p=0;p<n;p++) {
    divide(p,a[p][p]);
    printf("After dividing:\n");
    dump();
    for(i=0;i<n;i++) {
      if(i==p) continue;
      add(p,i,-a[i][p]);
    }
    printf("After adding:\n");
    dump();
  }
}

int main() {
  input();
  dump();
  gauss();

  return 0;
}

