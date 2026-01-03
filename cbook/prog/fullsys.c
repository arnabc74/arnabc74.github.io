#include <stdio.h>
#include <math.h>

#define TOL 1e-9
#define EQ(a,b) (fabs((a)-(b)) < TOL)

double a, b, c, p, q, r, det, det1, det2;

void input() {
  printf("This program solves two equations in two unknowns:\n");
  printf("\t a x + b y = c\n");
  printf("\t p x + q y = r\n\n");
  printf("Please supply a,b,c,p,q,r: ");
  scanf("%lf%lf%lf%lf%lf%lf",&a,&b,&c,&p,&q,&r);
}

void unique() {
  printf("The system has unique solution: x = %lf, y = %lf.\n",
         det1/det, det2/det);
}

void many() {
  printf("Infinitely many solutions.\n");
  /*Infinitely many solns.*/
  printf("General solution is (x,y), where ");

  if(!EQ(a,0)) {
    printf("x = %lf-%lf*y, and y is arbitrary.\n",c/a,b/a);
  }
  else if(!EQ(b,0)) {
    printf("x is arbitrary, and y is %lf.\n",c/b);
  }
  else if(!EQ(p,0)) {
    printf("x = %lf-%lf*y, and y is arbitrary.\n",r/p,q/p);
  }
  else if(!EQ(q,0)) {
    printf("x is arbitrary, and y is %lf.\n",r/q);
  }
  else {
    printf("x and y are both arbitrary.\n");
  }
}

void none() {
  printf("The system has no solution.\n"); 
}


int main() {
  input();
  det = a*q-b*p;
  if(!EQ(det,0)) {
    unique();
  }
  else {
    det1 = c*q-b*r;
    det2 = a*r-c*p;

    if( EQ(det1,0) &&  EQ(det2,0) ) 
      many();
    else
      none();
  }
  return 0;
}
