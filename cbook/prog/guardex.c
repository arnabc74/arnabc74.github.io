#include <stdio.h>
#include <string.h>

int main() {
  char name[100];
  int len,i;
  
  for(i=0;i<10;i++) name[i] = 'a'+i;
  name[5] = name[7] = '\0';
  len = strlen(name);
  printf("Length of \"%s\" is %d.\n",name, len);
  return 0;
}
