#include <stdio.h>

int main() {
  int val;

  printf("Supply some nonnegative integer: "); 
  scanf("%d",&val);
  if((val & (1<<2))==0) {
    printf("the 3rd bit from the right is 0.\n");
  }
  else {
    printf("the 3rd bit from the right is 1.\n");
  }
  return 0;
}
