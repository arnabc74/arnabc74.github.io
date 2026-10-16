#include <stdio.h>

int main() {
  FILE* f;
  
  f = fopen("ek.txt","w");
  fprintf(f,"This is a line.");`\
  fclose(f);
  
  return 0;
}
