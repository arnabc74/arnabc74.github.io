#include <stdio.h>

int main() {
  int n;

  printf("Please supply an integer: ");
  scanf("%d",&n);

  if(n%13==0) {
    printf("%d is divisible by 13.\n",n);
  }
  else {
    printf("%d is not divisible by 13.\n",n);
  }
  return 0;
}
