#include <stdio.h>

int main() {
  int x;

  printf("x = ");
  scanf("%d",&x); 
  if( (1+100*x)/(5*x*x) < 3 && x != 0) {
    printf("Yes!\n");
  }
  else {
    printf("No!\n");
  }

  return 0;
}
