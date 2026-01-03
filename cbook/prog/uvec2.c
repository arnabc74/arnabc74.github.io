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

struct Vector *pUnitVector2(struct Vector a) {
  struct Vector *pAns = calloc(1,sizeof(struct Vector));
  double normA = norm(a);

  if(EQ(normA,0)) return 0;

  pAns->x = a.x/normA;
  pAns->y = a.y/normA;
  pAns->z = a.z/normA;

  return ans;
}

int main() {
  struct Vector v, *pu;
  
  printf("Please supply a vector (x,y,z):\n");
  printf("x = "); scanf("%lf",&v.x); 
  printf("y = "); scanf("%lf",&v.y); 
  printf("z = "); scanf("%lf",&v.z); 

  pu = pUnitVector2(v);
  if(pu)
    printf("The unit vector along the vector is (%lf, %lf, %lf).\n",
         pu->x, pu->y, pu->z);
  else
    fprintf(stderr,"Error: The vector has norm 0.\n");

  return 0;
}
