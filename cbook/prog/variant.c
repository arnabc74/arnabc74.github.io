#include <stdio.h>

int main() {
  int n, i;
  
  printf("Number of lines: ");
  scanf("%d", &n);

  for(i=0;i<n;i++) {
    printf("Hello %d\n",i);
  }
  
  return 0;
}
