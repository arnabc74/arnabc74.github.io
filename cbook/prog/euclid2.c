#include <stdio.h>


int main() {
  int a, b, c, r, oldB, bkpA, bkpB;

  printf("This program computes gcd(a,b).\n\n");

  printf("a = "); scanf("%d",&a);
  printf("b = "); scanf("%d",&b);

  bkpA = a;
  bkpB = b;

  r = 1; /*Anything nonzero*/
  while(r > 0) {
    r = a % b;
    oldB =b;
    b = r;
    a = oldB;
  } 

  printf("GCD(%d, %d) = %d.\n", bkpA, bkpB, oldB);
  return 0;
}
