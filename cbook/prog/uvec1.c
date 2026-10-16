#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define EQ(x,y) (fabs((x)-(y))<1e-8)

struct Vector {
  double x, y, z;
};

double dot(struct Vector a, struct Vector b) {
	return a.x*b.x + a.y*b.y + a.z*b.z;
}
double norm(struct Vector a) {
	return sqrt(dot(a,a));
}

struct Vector unitVector(struct Vector a) {
  struct Vector ans;
  double normA = norm(a);
  if(EQ(normA,0)) {
    fprintf(stderr,"Error: The vector has norm 0.\n");
  }
  else {
    ans.x = a.x/normA;
    ans.y = a.y/normA;
    ans.z = a.z/normA;
  }

  return ans;
}

int main() {
  struct Vector v, u;
  
  printf("Please supply a vector (x,y,z):\n");
  printf("x = "); scanf("%lf",&v.x);  
  printf("y = "); scanf("%lf",&v.y);  
  printf("z = "); scanf("%lf",&v.z);  

  u = unitVector(v);
  printf("The unit vector along the vector is (%lf, %lf, %lf).\n",
         u.x, u.y, u.z);
  
  return 0;
}
