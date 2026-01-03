#include <stdio.h>

int main() {
  int a,b,c,p,q,r,det;
  
  printf("This program solves two equations in two unknowns:\n");
  printf("\t a x + b y = c\n");
  printf("\t p x + q y = r\n\n");
  printf("Please supply a,b,c,p,q,r: ");
  scanf("%d%d%d%d%d%d",&a,&b,&c,&p,&q,&r);

  det = a*q-b*p;
  if(det==0) {
    printf("The system does not have unique solution.\n");
    return 1;
  }

  printf("The system has unique solution: x = %d, y =  %d.\n",
         (c*q-b*r)/det, (a*r-c*p)/det);
  return 0;
}
