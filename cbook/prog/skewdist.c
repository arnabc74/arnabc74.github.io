#include <stdio.h>
#include <math.h>

#define EQ(x,y) (fabs((x)-(y))<1e-8)

struct Vector {
  double x,y,z;
};

struct Line {
  struct Vector point, dirn;
};

double dot(struct Vector a, struct Vector b) {
  return a.x*b.x + a.y*b.y + a.z*b.z;
}
double norm(struct Vector a) {
  return sqrt(dot(a,a));
}
struct Vector cross(struct Vector a, struct Vector b) {
  struct Vector ans;
  ans.x = a.y*b.z - a.z*b.y;
  ans.y = a.z*b.x - a.x*b.z;
  ans.z = a.x*b.y - a.y*b.x;
 
  return ans;
}

struct Vector minus(struct Vector a, struct Vector b) {
  struct Vector ans;
  ans.x = a.x-b.x;
  ans.y = a.y-b.y;
  ans.z = a.z-b.z;

  return ans;
}

struct Vector unit(struct Vector a) {
  struct Vector ans;
  double normA;
  normA = norm(a);
  ans.x = a.x/normA;
  ans.y = a.y/normA;
  ans.z = a.z/normA;
  
  return ans;
}


int isParallel(struct Vector a, struct Vector b) {
  struct Vector ua, ub;
  ua = unit(a); ub = unit(b); 
  if(EQ(ua.x,ub.x)
     && EQ(ua.y,ub.y)
     && EQ(ua.z,ub.z)) return 1; 
  if(EQ(ua.x,-ub.x)
     && EQ(ua.y,-ub.y)
     && EQ(ua.z,-ub.z)) return 1;
  
  return 0;
}

struct Vector getVector() {
  struct Vector v;
  scanf("%lf%lf%lf",&v.x, &v.y, &v.z);
  return v;
}


int main() {
  struct Line l1, l2;
  double distance;
  
  printf("This program finds the distance between ");
  printf("two lines in 3D.\n");

  printf("Please supply the lines in ");
  printf("the point-direction format:\n\n");

  printf("\nFor line 1:\n");
  printf("Point: ");
  l1.point = getVector();
  printf("Direction: ");
  l1.dirn = getVector();

  printf("\nFor line 2:\n");
  printf("Point: ");
  l2.point = getVector();
  printf("Direction: ");
  l2.dirn = getVector();

  if(isParallel(l1.dirn, l2.dirn)) {
    distance = norm(cross(l1.dirn,
                          minus(l1.point, l2.point)))
      / norm(l1.dirn);
  }
  else {
    struct Vector uCrossV = cross(l1.dirn, l2.dirn); 
    distance = fabs(dot(minus(l1.point, l2.point),
                        uCrossV)/ norm(uCrossV));
  }

  printf("The required distance = %lf\n", distance);
  return 0;
}
