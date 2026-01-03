#include <stdio.h>

int main() {
  int x;

  printf("x = ");
  scanf("%d",&x); 
  if(x != 0) {
    if( (1+100*x)/(5*x*x) < 3 ) {
      printf("Yes!\n");
    }
    else {
      printf("No!\n");
    }
  }
  else {
    printf("No!\n");
  }

  return 0;
}
