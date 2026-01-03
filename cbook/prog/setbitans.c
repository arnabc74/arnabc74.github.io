#include <stdio.h>

int main() {
  int val;
  printf("Supply some integer: "); 
  scanf("%d",&val);
  val |= 1<<12;
  printf("The new value is %d\n",val);

  return 0;
}
