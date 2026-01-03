#include <stdio.h>
#include <string.h>

int main() {
  char first[100], last[100];

  while(1) {
    printf("First name: ");
    scanf("%99s",first); 

    if(strcmp("end",first)==0) break;
    printf("Last name: ");
    scanf("%99s",last); 
    printf("Complete name is %s %s.\n\n",first, last);
  }

  printf("Goodbye!\n");
  return 0;
}
