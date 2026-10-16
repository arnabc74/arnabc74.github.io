#include <stdio.h>
#include <stdlib.h>

struct Card {
  char body[500000000];
  struct Card *next;
};

void delete(struct Card **where) {
  struct Card *toDelete, *nextInLine;
  
  toDelete = *where;
  nextInLine = toDelete->next;
  *where =  nextInLine;
}



int main() {
  struct Card *head;
  long i;
  
  head = calloc(1,sizeof(struct Card));
  if(head==0) {
    fprintf(stderr,"No more memory!\n");
    return 1;
  }
  
  sprintf(head->body,"Start");
  head->next = calloc(1,sizeof(struct Card)); 
  if(head->next==0) {
    fprintf(stderr,"No more memory!\n");
    return 1;
  }
  sprintf(head->body,"Old");
  
  delete(&(head->next));                     `\
  head->next = calloc(1,sizeof(struct Card));`\
  printf("%p\n",head->next);                 `\
  fflush(stdout);                            `\
  if(head->next==0) {                        `\
    fprintf(stderr,"No more memory!\n");     `\
    return 1;                                `\
  }                                          `\
  sprintf(head->body,"New");                 `\
  return 0;
}
