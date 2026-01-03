#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>

char *stringCap2(char *str) {
  int i, n;
  char *cap;

  n = strlen(str);
  cap = calloc(n+1,sizeof(char));
  for(i=0; str[i]; i++) cap[i] = toupper(str[i]);
  cap[n] = '\0';

  return cap;
}

int main() {
  char originalString[101], *newString;
  
  printf("Please supply a string: ");
  scanf("%100[^\n]", originalString);

  newString = stringCap2(originalString);

  printf("Output: %s\n",newString);
  
  return 0;
}
