#include <stdio.h>

struct Shape {
  int type; /*1=square, 2=circle*/
  double side;
  double radius;
};

double area(struct Shape s) {
  switch(s.type) {
  case 1:
    return s.side * s.side;
  case 2:
    return 3.14 * s.radius * s.radius;
  default:
    fprintf(stderr,"Unknown shape.\n");
    return 0;
  }
}


int main() {
  struct Shape s;

  s.type = 1;
  s.side = 2;
  printf("Area of a square with side 2 is %lf.\n", area(s));

  s.type = 2;
  s.radius = 2;
  printf("Area of a circle with radius 2 is %lf.\n", area(s));
  
  return 0;
}
