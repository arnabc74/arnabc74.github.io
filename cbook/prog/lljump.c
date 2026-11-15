#include <stdio.h>
#include<stdlib.h>
#include<string.h>

struct Card {
  char body[50];
  struct Card *pNext;
};


int jumpDump(struct Card *pHead, int n) {
  struct Card *pNow;
  int i;
  
  for(pNow=pHead, i=0;i<n-1;i++,pNow = pNow->pNext) {
    if(!pNow) return 0;
  }
  if(pNow) {
    printf("%s\n",pNow->body);
    return 1;
  }
  else {
    return 0;
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

  if(!jumpDump(pHead,3)) fprintf(stderr,"Not enough elements!\n");
  return 0;
}

