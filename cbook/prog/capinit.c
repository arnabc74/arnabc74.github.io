#include <stdio.h>
#include <ctype.h>


int main() {
  char name[40];
  printf("Name: ");
  scanf("%s", name);
  name[0] = toupper(name[0]);
  printf("After capitalising the first letter: %s.\n",name);
  return 0;
}
