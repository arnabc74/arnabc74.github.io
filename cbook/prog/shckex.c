#include <stdio.h>

int f(int n) {
  printf("Inside f: %d\n",n); return n+4;
}


int main() {
  int x = -1;
  if(x>0 || f(x)==3) printf("OK\n"); 

  return 0;
}
