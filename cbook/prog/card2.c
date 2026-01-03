#include<stdio.h>
#include<string.h>
#include<stdlib.h>

struct Card {
  char body[50];
  struct Card *next;
};

int main() {
  int i;
  struct Card *head, *now;
  char name[50];
  
  head = 0;
  for(i=0;;i++) {
    printf("Name: [q to end]: ");
    scanf("%s",name); 
    if(strcmp(name,"q")==0) break;
    if(i==0) {
      head = now = calloc(1,sizeof(struct Card));
    }
    else {
      now->next = calloc(1,sizeof(struct Card));
      now = now->next;
    }
    sprintf(now->body,"%s",name);
    now->next = 0;
  }

  return 0;
}
