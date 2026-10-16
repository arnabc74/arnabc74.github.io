#include <stdio.h>
#include <stdlib.h>

struct Point {
  double x, y;
};

struct Point askForPoint1(char *name) {
	struct Point newPoint;

	fprintf(stderr,"Please supply point %s (first x, then y): ",name);
	scanf("%lf%lf",&newPoint.x,&newPoint.y);   

	return newPoint;
}

struct Point *askForPoint2(char *name) {
	struct Point *newPoint;

	newPoint = calloc(1,sizeof(newPoint));

	if(newPoint==0) return 0;

	fprintf(stderr,"Please supply point %s (first x, then y): ",name);
	scanf("%lf%lf",&newPoint->x,&newPoint->y);  df(newPoint->x); df(newPoint->y); 

	return newPoint;
}

void askForPoint3(char *name, struct Point *newPoint) {
	fprintf(stderr,"Please supply point %s (first x, then y): ",name);
	scanf("%lf%lf",&(newPoint->x),&(newPoint->y));  df(newPoint->x); df(newPoint->y); 
}

int main() {
  struct Point a, *b, c;
  
  a = askForPoint1("A");
  b = askForPoint2("B");
  askForPoint3("C", &c);

  printf("A = (%lf, %lf), B = (%lf, %lf), C = (%lf, %lf)\n",
         a.x, a.y, b->x, b->y, c.x, c.y);
  
  return 0;
}
