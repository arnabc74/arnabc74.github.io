#include <stdio.h>

int main() {
  int i;

  printf("Please supply an integer in hexadecimal: ");
  scanf("%x",&i); 
  printf("The number in decimal is %d\n",i);
  
  return 0;
}
