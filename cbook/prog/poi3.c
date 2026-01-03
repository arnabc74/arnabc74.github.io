#include <stdio.h>

int main() {
  int a;

  printf("size of int = %ld\n",sizeof(int));
  printf("%ld\n", (long)&a);
  printf("%ld\n",(long)((&a)+1));

  return 0;
}
