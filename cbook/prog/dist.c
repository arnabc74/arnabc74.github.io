#include <stdio.h>
#include <math.h>

struct Point {
  double x, y;
};

double distance(struct Point p1, struct Point p2) { 
  double dx, dy;
  dx = p1.x-p2.x; dy = p1.y-p2.y;
  return sqrt(dx*dx+dy*dy);
}

int main() {
  struct Point p, q;

  printf("Supply the coordinates of P: ");
  scanf("%lf%lf",&p.x, &p.y);  

  printf("Supply the coordinates of Q: ");
  scanf("%lf%lf",&q.x, &q.y);  

  printf("Distance between P and Q is %lf.\n",distance(p,q));
  return 0;
}
