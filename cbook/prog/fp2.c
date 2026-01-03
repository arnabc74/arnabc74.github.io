#include <stdio.h>

int main() {
  FILE *f;
  char number[11];
  
  f = fopen("phone.txt","r");
  fseek(f,2*11,SEEK_SET);
  fscanf(f,"%10s",number);
  printf("The required phone number is %s.\n",number);

  return 0;
}
