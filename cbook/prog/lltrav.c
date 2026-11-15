#include <stdio.h>
#include<stdlib.h>
#include<string.h>

struct Card {
  char body[50];
  struct Card *pNext;
};


void dump(struct Card *pHead) {
  struct Card *pNow;

  for(pNow=pHead;pNow!=0;pNow = pNow->pNext) {
    printf("%s\n",pNow->body);
  }
}


int main() {
  int i;
  struct Card *pHead, *pNow;
  char name[50];
  
  pHead = 0;
  for(i=0;;i++) {
    printf("Name: [q to end]: ");
    scanf("%s",name);
    if(strcmp(name,"q")==0) break;
    if(i==0) {
      pHead = pNow = calloc(1,sizeof(struct Card));
    }
    else {
      pNow->pNext = calloc(1,sizeof(struct Card));
      pNow = pNow->pNext;
    }
    sprintf(pNow->body,"%s",name);
    pNow->pNext = 0;
  }

  dump(pHead);
  return 0;
}

