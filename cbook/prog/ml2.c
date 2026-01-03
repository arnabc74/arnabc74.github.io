#include <stdio.h>
#include <stdlib.h>

struct Card {
  char body[500000000];
  struct Card *next;
};

int main() {
  struct Card *head;
  
  while(1) {
    head = calloc(1,sizeof(struct Card));
    printf("%ld\n",(long)head);
    if(head==0) {
      fprintf(stderr,"No more memory!\n");
      break;
    }
  }
  return 0;
}
