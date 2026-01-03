#include <stdio.h>

int main() {
  FILE* f;

  f = fopen("baje.txt","w");
  fclose(f);
  fprintf(f,"This is a line.");
  return 0;
}
