#include <stdio.h>

int main() {
  int x;
  printf("x is ");
  scanf("%d",&x);
  if(x > 0)
    printf("positive.\n");
  else
    printf("not positive.\n");
  return 0;
}
