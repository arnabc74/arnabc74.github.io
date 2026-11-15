#include <stdio.h>

int main() {
  int totCount, goodCount;
  float bmi, height, weight;
  
  printf("This program counts number of people ");
  printf("having optimal BMI.\n\n");

  totCount = goodCount = 0;
  for(;;) {
    printf("Height in metres (negative to quit): ");
    scanf("%f",&height);
    if(height < 0) break;
    printf("Weight in kg: ");
    scanf("%f",&weight);
    totCount++;
    bmi = weight/(height*height);
    if(18.5 > bmi || bmi > 24.9) continue;`\includegraphics{arrow.pdf}`
    goodCount++;                          `\includegraphics{arrow.pdf}`
  }
  printf("%d out of %d found to have BMI in ",
         goodCount, totCount);
  printf("the optimal range.\n");
  return 0;
}
