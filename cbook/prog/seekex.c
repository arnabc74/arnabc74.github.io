#include <stdio.h>

int main() {
  int x;
  FILE *f = fopen("data.txt","r");

  fseek(f,7,SEEK_SET);
  fscanf(f,"%d",&x);
  printf("x = %d\n",x);
  return 0;
}
