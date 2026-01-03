#include <stdio.h>
#include <ctype.h>

void stringCap(char *str) {
  int i;

  for(i=0; str[i]; i++) str[i] = toupper(str[i]);
}

int main() {
  char s[101];
  
  printf("Please supply a string: ");
  scanf("%100[^\n]", s); 

  stringCap(s);

  printf("Output: %s\n",s);
  
  return 0;
}
