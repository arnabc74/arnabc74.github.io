#include <stdio.h>

int main() {
  int i;
  
  for(i=0;i<3;i++) {
    printf("i = %d\n",i);
    {
      static int i = 6;
      i+=10;
      printf("Inside: i = %d\n",i);
    }
  }
  return 0;
}
