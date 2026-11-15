#include <stdio.h>
#include <ctype.h>

void main() {
  char c;
  printf("Supply a character: ");
  scanf("%c",&c); 
  if( isgraph(c) && !isalnum(c) ) {
    printf("'%c' is a special character.\n",c);
  }
  else {
    printf("'%c' is not a special character.\n",c);
  }
}
