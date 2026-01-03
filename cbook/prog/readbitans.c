#include <stdio.h>

int main() {
  int val;

  printf("Supply some integer: "); 
  scanf("%d",&val);
  printf("the 10th bit from the right is ");
  if((val & (1<<9))==0) {
    printf("0.\n");
  }
  else {
    printf("1.\n");
  }
  return 0;
}
