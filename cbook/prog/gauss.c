#include <stdio.h>
#include <math.h>

#define ISZERO(what) (fabs(what)<1e-9)

double a[100][101];
int n;
int rank;

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

int gauss() {
  int i,p, found;
  for(p=0;p<n;p++) {
    printf("In row %d\n",p);
    if(ISZERO(a[p][p])) {
      printf("Found zero.\n");
      found = 0;              `\includegraphics{arrow.pdf}`
      for(i=p+1;i<n;i++) {    `\includegraphics{arrow.pdf}`
        if(!ISZERO(a[i][p])) {`\includegraphics{arrow.pdf}`
          found = 1;          `\includegraphics{arrow.pdf}`
          break;              `\includegraphics{arrow.pdf}`
        }                     `\includegraphics{arrow.pdf}`
      }                       `\includegraphics{arrow.pdf}`
      if(found==0) return 1;  `\includegraphics{arrow.pdf}`
      printf("Swapping.\n");  `\includegraphics{arrow.pdf}`
      swap(i,p);              `\includegraphics{arrow.pdf}`
    }

    printf("Now nonzero.\n");
    divide(p,a[p][p]);
    for(i=0;i<n;i++) {
      if(i==p) continue;
      add(p,i,-a[i][p]);
    }
  }
  return found;
}


void output() {
  int i;
  printf("The unique solution is:\n");
  for(i=0;i<n;i++)
    printf("x%d = %lf\n",i,a[i][n]);
}

int main() {
  int res;
  
  input();
  if(!gauss())
    output();
  else
    printf("No unique solution exists!\n");
  return 0;
}

