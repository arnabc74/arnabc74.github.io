#include <stdio.h>

int main() {
  int n,i;

  printf("Please supply a positive integer: ");
  scanf("%d",&n);

  for(i=1;i<=n;i++) {
      printf("%d",i);
      if(i%2==0 && i!=n)
        printf(", ");
      else
        printf(" ");
  }
  printf("\n");

  return 0;
}

