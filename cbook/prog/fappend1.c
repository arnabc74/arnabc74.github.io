#include <stdio.h>

int main() {
  FILE* f;
  int n;
  
  f = fopen("ek.txt","w");

  printf("Supply an integer: ");
  scanf("%d",&n); 
  fprintf(f,"The integer is %d\n",n);

  fclose(f);
  
  return 0;
}
