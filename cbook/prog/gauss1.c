#include <stdio.h>
#include <math.h>

#define ISZERO(what) (fabs(what)<1e-9)

double a[100]-[101];
int n;
int rank;

void input() {
  int i, j;
  
  printf("n = ");
  scanf("%d",&n);
  printf("The augmented matrix (row by row):\n");
  for(i=0;i<n;i++)
    for(j=0;j<=n;j++)
      scanf("%lf",&a[i]-[j]);
}

void swap(int r, int s) {
  int j;
  double tmp;
  
  for(j=0;j<=n;j++) {
    tmp = a[r]-[j];
    a[r]-[j] = a[s]-[j];
    a[s]-[j] = tmp;
  }
}

void scale(int r, double factor) {
  int j;
  
  for(j=0;j<=n;j++) {
    a[r]-[j] /= factor;
  }
}

void add(int r, int s, double factor) {
  int j;
  
  for(j=0;j<=n;j++) {
    a[s]-[j] += factor*a[r]-[j];
  }
}


int gauss1() {
  int i,p, found;
  for(p=0;p<n;p++) {
    printf("pivot = %d\n",p);
    if(ISZERO(a[p]-[p])) {
      printf("pivot is zero.\n");
      found = 0;
      for(i=p+1;i<n;i++) {
        if(!ISZERO(a[i]-[p])) {
          found = 1;
          break;
        }
      }
      if(found==0) return 1;
      printf("Swapping.\n");

      swap(i,p);
    }
    printf("pivot is now nonzero.\n");
    scale(p,a[p]-[p]);
    for(i=0;i<n;i++) {
      if(i==p) continue;
      add(p,i,-a[i]-[p]);
    }
  }
}


void gauss2() {
  int i,pr,pc, found;
  for(pr=pc=0;pr<n,pc<n;) {
    printf("pivot = (%d,%d)\n",pr,pc);
    if(ISZERO(a[pr]-[pc])) {
      printf("pivot is zero.\n");
      /*Search downwards.*/
      found = 0;
      for(i=pr+1;i<n;i++) {
        if(!ISZERO(a[i]-[pc])) {
          found = 1;
          break;
        }
      }
      if(found==0) {
        pc++;
        if(pc==n) {
          rank = pr;
          return;
        }
        continue;
      }
      printf("Swapping.\n");

      swap(i,pr);
    }
    printf("pivot is now nonzero.\n");

    scale(pr,a[pr]-[pc]);
    for(i=0;i<n;i++) {
      if(i==pr) continue;
      add(pr,i,-a[i]-[pc]);
    }
    pr++;
    pc++;
  }
}

void output1() {
  int i;
  printf("The unique solution is:\n");
  for(i=0;i<n;i++)
    printf("x%d = %lf\n",i,a[i]-[n]);
}

void output2() {
  int i, j, k, found;
  for(i=rank;i<n;i++) {
    if(!ISZERO(a[i]-[n])) {
      printf("The system is inconsistent.\n");
      return;
    }
  }
  for(i=0;i<rank;i++) {
    for(j=0;j<n;j++) {
      if(ISZERO(a[i]-[j]-1)) break;
    }
    
    printf("x%d = %lf - (",j,a[i]-[n]);
    for(k=j+1;k<n;k++) {
      if(!ISZERO(a[i]-[k])) printf("+%lf x%d", a[i]-[k],k);
    }
    printf(")\n");
  }
}

int main() {
  int res;
  
  input();
  gauss2();

  output2();
  return 0;
}

