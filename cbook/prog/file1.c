#include<stdio.h>

void main() {
  FILE* f;
  
  f = fopen("ek.txt","w");
  fclose(f);
}
