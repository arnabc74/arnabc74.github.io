#include <stdio.h>

int main() {
  FILE* f;
  int n;
  
  f = fopen("dui.txt","a");`\includegraphics{arrow.pdf}`
  
  printf("Supply an integer: ");
  scanf("%d",&n); 
  fprintf(f,"The integer is %d\n",n);

  fclose(f);
  
  return 0;
}
