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

struct Vector *pUnitVector3(struct Vector *pVec)
{
  struct Vector *pAns = calloc(1,sizeof(struct Vector));
  double normA = norm(*pVec);`\includegraphics{arrow.pdf}`
  if(EQ(normA,0)) {
    fprintf(stderr,"Error: The vector has norm 0.\n");
    return 0;
  }
  else {
    pAns->x = pVec->x/normA;`\includegraphics{arrow.pdf}`
    pAns->y = pVec->y/normA;`\includegraphics{arrow.pdf}`
    pAns->z = pVec->z/normA;`\includegraphics{arrow.pdf}`
  }

  return pAns;
}

int main() {
  struct Vector v, *pu;
  
  printf("Please supply a vector (x,y,z):\n");
  printf("x = "); scanf("%lf",&v.x);  
  printf("y = "); scanf("%lf",&v.y);  
  printf("z = "); scanf("%lf",&v.z);  

  pu = pUnitVector3(&v);`\includegraphics{arrow.pdf}`
  if(pu)
    printf("The unit vector along the vector is (%lf, %lf, %lf).\n",
         pu->x, pu->y, pu->z);
  
  return 0;
}
