#include <stdio.h>
#include <stdlib.h>

struct Card {
  int body;
  struct Card *next;
};

int main() {
  struct Card *head, *tail;
  int i;
  
  for(i=0;i<10;i++) {
    tail = calloc(1,sizeof(struct Card));
    if(i==0) head = tail;
    tail->body = i;
    tail = tail->next;
  }

  for(tail = head; tail!=0; tail = tail->next) {
    printf("body = %d ",tail->body);
  }
  
  return 0;
}
