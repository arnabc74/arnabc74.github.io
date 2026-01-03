#include <stdio.h>
#include <math.h>

#define TOL 1e-9
#define EQ(a,b) (fabs((a)-(b)) < TOL)
int main() {
  double a,b,c,p,q,r,det, det1, det2;
  
  printf("This program solves two equations in two unknowns:\n");
  printf("\t a x + b y = c\n");
  printf("\t p x + q y = r\n\n");
  printf("Please supply a,b,c,p,q,r: ");
  scanf("%lf%lf%lf%lf%lf%lf",&a,&b,&c,&p,&q,&r);
  det = a*q-b*p;
  det1 = c*q-b*r;
  det2 = a*r-c*p;
  if(EQ(det,0)) {
    if(EQ(det1,0) && EQ(det2,0)) {
      printf("The system has infinitely many solutions.\n");
      return 1;
    }
    printf("The system has no solution.\n");
    return 2;
  }

  
  printf("The system has unique solution: x = %lf, y =  %lf.\n",
         det1/det, det2/det);
  return 0;
}
