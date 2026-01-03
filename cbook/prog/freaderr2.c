#include <stdio.h>

int main() {
  FILE *f;
  int a,b,c,d;
  
  f = fopen("char.txt","r");

  if(f==0) {
    printf("Sorry, problem opening file char.txt.\n");
    return 1;
  }
  fscanf(f,"%d%d%d%d",&a,&b,&c,&d);
  printf("The numbers are %d %d %d %d\n",a,b,c,d);

  fclose(f);
  
  return 0;
}
