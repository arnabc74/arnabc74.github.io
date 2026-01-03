#include <stdio.h>

struct Shape2 {
  int type; /*1=square, 2=circle*/
  union {
    double side;
    double radius;
  } size;
};

double area(struct Shape2 s) {
  switch(s.type) {
  case 1:
    return s.size.side * s.size.side;
  case 2:
    return 3.14 * s.size.radius * s.size.radius;
  default:
    fprintf(stderr,"Unknown shape.\n");
    break;
  }
    return 0;
}


int main() {
  struct Shape2 s;

  s.type = 1;
  s.size.side = 2;
  printf("Area of a square with side 2 is %lf.\n", area(s));

  s.type = 2;
  s.size.radius = 2;
  printf("Area of a circle with radius 2 is %lf.\n", area(s));
  
  return 0;
}
