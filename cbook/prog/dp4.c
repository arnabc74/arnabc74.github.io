#include <stdio.h>
#include <stdlib.h>

struct Point {
  double x, y;
};

struct Point *getPoint() {
  struct Point *p;

  p = calloc(1,sizeof(struct Point));
  printf("Please supply a point: ");
  scanf("%lf%lf",&p->x, &p->y);

  return p;
}

int main() {
  struct Point *a; 

  a = getPoint();
  printf("a = (%lf, %lf)\n", a->x, a->y);
  
  return 0;
}
