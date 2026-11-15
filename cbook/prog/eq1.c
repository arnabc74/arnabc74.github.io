#include <stdio.h>
#include <math.h>

#define TOL 1e-9
#define EQ(a,b) (fabs((a)-(b)) < TOL)
int main() {
  double a,b,c,p,q,r,det;
  
  printf("This program solves two equations in two unknowns:\n");
  printf("\t a x + b y = c\n");
  printf("\t p x + q y = r\n\n");
  printf("Please supply a,b,c,p,q,r: ");
  scanf("%lf%lf%lf%lf%lf%lf",&a,&b,&c,&p,&q,&r);

  det = a*q-b*p;
  if(EQ(det,0)) {
    printf("The system does not have unique solution.\n");
    return 1;
  }

  printf("The system has unique solution: x = %lf, y =  %lf.\n",
         (c*q-b*r)/det, (a*r-c*p)/det);
  return 0;
}
