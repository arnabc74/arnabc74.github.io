#include <stdio.h>
#include <ctype.h>


int main() {
  char pan[11];
  int i;
  
  printf("PAN: ");
  scanf("%s", pan);
  for(i=0;i<10;i++)
    pan[i] = toupper(pan[i]);
  printf("After capitalising: %s.\n",pan);
  return 0;
}
