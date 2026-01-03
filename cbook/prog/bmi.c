#include <stdio.h>

int main() {
  float bmi, height, weight;
  
  printf("This program computes BMI ");
  printf("based on height and weight.\n\n");

  for(;;) {
    printf("Height in metres (negative to quit): ");
    scanf("%f",&height);
    if(height < 0) break;
    printf("Weight in kg: ");
    scanf("%f",&weight);

    printf("BMI = %f.\n",weight/(height*height));
  }
  printf("Goodbye.\n");
  return 0;
}
