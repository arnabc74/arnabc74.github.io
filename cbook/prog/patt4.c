#include<stdio.h>

void main() {
  int i, j, n;

  printf("n = ");
  scanf("%d",&n);
  for(i=1;i<=n;i++) {
    /*Print the i-th line, ie, draw i *s.*/
    for(j=1;j<=i;j++) {
      printf("*");
    }
  }
}
