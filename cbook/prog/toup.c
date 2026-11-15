#include <stdio.h>
#include <ctype.h>

int main() {
  char c;

  printf("Supply a character: ");
  scanf("%c",&c); 
  printf("After toupper: %c",toupper(c));
  return 0;
}
