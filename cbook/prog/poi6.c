#include <stdio.h>

int main() {
  int x[3]={34,29,-78};

  printf("Supply an integer: ");
  scanf("%d",x+2); 

  printf("%d %d %d", x[0], x[1], x[2]);
  
  return 0;
}
