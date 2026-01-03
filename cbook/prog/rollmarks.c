#include <stdio.h>

int main() {
  int roll, nambar;
  
  printf("Roll number: ");
  scanf("%d", &roll); 
  printf("Marks for roll no. %d is: ",roll);
  scanf("%d", &nambar); 

  printf("\nThe student with roll no. %d has obtained %d.\n",
         roll, nambar);

  return 0;
}
