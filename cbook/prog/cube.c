#include<stdio.h>
#include<math.h>

#define TOL 1e-9
#define EQ(a,b) (fabs((a)-(b)) < TOL)

int main() {
  double length, width, height;

  printf("Length = "); scanf("%lf",&length);
  printf("Width = "); scanf("%lf",&width);
  printf("Height = "); scanf("%lf",&height);

  if(EQ(length,width)) {
    if(EQ(width,height)) 
      printf("Cube.\n");
    else
      printf("Cuboid with square cross-section.\n");
  }
  else if(EQ(length,height) || EQ(width,height)) {
    printf("Cuboid with square cross-section.\n");
  }
  else {
    printf("Cuboid with no square cross-section.\n");
  }

  return 0;
}
