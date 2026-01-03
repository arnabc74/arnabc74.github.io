#include <stdio.h>

int main() {
  int val;
  unsigned int mask;

  printf("Please supply an integer: ");
  scanf("%d",&val); 
  for(mask=1<<31;mask>0; mask >>= 1) {
    if((val & mask) != 0)
      printf("1 ");
    else
      printf("0 ");
  }
  return 0;
}
