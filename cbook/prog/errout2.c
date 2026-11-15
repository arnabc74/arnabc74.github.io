#include <stdio.h>

int main() {
  int x, y;

  printf("x = "); scanf("%d",&x); 
  printf("y = "); scanf("%d",&y); 

  if(y!=0) {
    printf("x/y = %lf.\n",x/(double)y);
  }
  else {
    printf("Error: Cannot divide by zero!\n");
  }
  return 0;
}
