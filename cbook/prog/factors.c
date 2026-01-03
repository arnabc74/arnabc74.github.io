#include <stdio.h>

int main() {
  int n,i;

  printf("Please supply a positive integer: ");
  scanf("%d",&n);

  printf("The factors are: ");
  for(i=1;i<=n;i++) {
    if(n%i==0) {
      printf("%d ",i);
    }
  }
  printf("\n");

  return 0;
}

