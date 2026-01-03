#include <stdio.h>

int main() {
  int n,i;

  printf("Please supply a positive integer: ");
  scanf("%d",&n);

  printf("The factors are: 1");
  for(i=2;i<n;i++) {
    if(n%i==0) {
      printf(", %d",i);
    }
  }
  printf(" and %d.\n",n);

  return 0;
}

