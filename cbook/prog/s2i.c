#include <stdio.h>

int main() {
  char str[] = "Rs 234";
  int amt;
  
  sscanf(str,"Rs%d",&amt);

  printf("GST = Rs. %.2f\n",amt*0.10);
  return 0;
}
