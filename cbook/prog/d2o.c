#include <stdio.h>

int main() {
  int i;

  printf("Please supply a nonnegative integer: ");
  scanf("%d",&i);
  printf("The number in octal is %o\n",i);
  return 0;
}
