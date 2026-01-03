#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char *stringDelim(char *str) {
  int i, n;
  char *result;

  n = strlen(str);
  result = calloc(n+3,sizeof(char));
  sprintf(result, "[%s]",str);

  return result;
}

int main() {
  char originalString[101], *newString;
  
  printf("Please supply a string: ");
  scanf("%100[^\n]", originalString); 

  newString = stringDelim(originalString);

  printf("Output: %s\n",newString);
  
  return 0;
}
