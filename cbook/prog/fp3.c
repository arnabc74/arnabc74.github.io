#include <stdio.h>

int main() {
  FILE *f;
  int end;
  
  f = fopen("phone.txt","r");
  fseek(f,0,SEEK_END);
  end = ftell(f);
  printf("The end is at %d.\n",end);

  return 0;
}
