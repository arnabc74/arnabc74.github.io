#include <stdio.h>
#include <stdlib.h>

struct Vector {
  double x,y,z;
};

struct Vector askForVector1(char *name) {
  struct Vector newVector;
  fprintf(stderr,"Please supply vector %s (x, y, z): ",name);
  scanf("%lf%lf%lf",&newVector.x,&newVector.y, &newVector.z);

  return newVector;
}

struct Vector *pAskForVector2(char *name) {
  struct Vector *pNewVector;
  pNewVector = calloc(1,sizeof(struct Vector));
  fprintf(stderr,"Please supply vector %s (x, y, z): ",name);
  scanf("%lf%lf%lf",&(pNewVector->x),&(pNewVector->y), &(pNewVector->z));

  return pNewVector;
}

void askForVector3(char *name, struct Vector *pNewVector) {
  fprintf(stderr,"Please supply vector %s (x, y, z): ",name);
  scanf("%lf%lf%lf",&(pNewVector->x),&(pNewVector->y), &(pNewVector->z));
}

int main() {
  struct Vector a, *pb, *pc;

  a = askForVector1("a");
  printf("a = (%lf, %lf, %lf).\n", a.x, a.y, a.z);

  pb = pAskForVector2("b");
  printf("b = (%lf, %lf, %lf).\n", pb->x, pb->y, pb->z);

  pc = calloc(1,sizeof(struct Vector));
  askForVector3("c",pc);
  printf("a = (%lf, %lf, %lf).\n", pc->x, pc->y, pc->z);
  
  return 0;
}
