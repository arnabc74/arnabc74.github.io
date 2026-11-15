#include <stdio.h>

int main() {
  int a, b, i;
  
  printf("Supply two integers: ");
  scanf("%d%d", &a,&b); 

  for(i=a;i<=b;i++) {
    if(7%i!=0) printf("%d ",i);
  }
  
  return 0;
}
