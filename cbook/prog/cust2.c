#include<stdio.h>
#include<string.h>

void main() {
  char first[100], last[100], phone[20];

  FILE* f;
      
  f = fopen("customers.txt","a");

  for(;;) {
    printf("First name [\"done\" to end]: ");
    scanf("%s",first);
    if(strcmp(first,"done")==0) break;
    printf("Last name: ");
    scanf("%s",last);
    printf("Phone number: ");
    scanf("%s",phone);
    fprintf(f,"Name: %s %s\nPhone: %s\n",first, last, phone); 
  }
  fclose(f);
}   
