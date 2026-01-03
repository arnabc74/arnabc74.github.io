#include <stdio.h>

int main() {
  char val;
  printf("Supply some integer from 0 to 255: "); 
  scanf("%d",&val);
  val |= 1<<6;
  printf("The new value is %d\n",val);

  return 0;
}
