#include <stdio.h>

int main() {
  char str[101];
  int i;
  
  printf("Please supply a string: ");
  scanf("%100[^\n]",str); 
  for(i=0;str[i]!='\0';i++) {`\includegraphics{arrow.pdf}`
    if(str[i]=='a') str[i] = 'A';
  }
  printf("The final string is: \"%s\"\n",str);
  return 0;
}
