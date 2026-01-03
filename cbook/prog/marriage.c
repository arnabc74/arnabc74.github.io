#include <stdio.h>

int main() {
  char bar[100], kone[100];
  
  printf("barer nam: ");
  scanf("%99[^\n]",bar); 
  printf("koner nam: ");
  scanf("%99[^\n]",kone); 
  
  printf("%s and %s are now married.\n",bar,kone);

  return 0;
}

