#include <stdio.h>
#include <ctype.h>

int main() {
  char c;
  printf("Supply a character: ");
  scanf("%c",&c);

  printf("'%c' is ",c);
  if(isalpha(c)) {
    printf("a letter, ");
  }
  else {
    printf("not a letter, ");
  }
  
  if(isdigit(c)) {
    printf("a digit, ");
  }
  else {
    printf("not a digit, ");
  }

  if(ispunct(c)) {
    printf("a punctuation, ");
  }
  else {
    printf("not a punctuation, ");
  }
    
  if(isspace(c)) {
    printf("a white-space character.\n");
  }
  else {
    printf("not a white-space character.\n");
  }
  return 0;
}
