#include<stdio.h>
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

void insert(struct Card **ppWhere, struct Card *pWhat) {
  struct Card *pFollower;

  pFollower = *ppWhere;

  *ppWhere = pWhat;

  pWhat->pNext = pFollower;
}


int main() {
  int i;
  struct Card *pHead, **ppNow, *pNew;
  char name[50];
  
  pHead = 0;
  for(ppNow = &pHead;;ppNow = &((*ppNow)->pNext)) {
    printf("Name: [q to end]: ");
    scanf("%s",name);
    if(strcmp(name,"q")==0) break;
    pNew = calloc(1,sizeof(struct Card));
    sprintf(pNew->body,"%s",name);
    insert(ppNow,pNew);
  }

  dump(pHead);
  return 0;
}

