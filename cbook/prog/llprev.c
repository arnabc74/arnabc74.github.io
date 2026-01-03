#include <stdio.h>
#include<stdlib.h>
#include<string.h>

struct Card {
  char body[50];
  struct Card *pNext;
};

struct Card *findPrev(struct Card *pHead, char *name) {
  struct Card *pNow;
  for(pNow=pHead;pNow!=0;pNow = pNow->pNext) {
    if(pNow->pNext && !strcmp(pNow->pNext->body,name)) break;
  }
  return pNow;
}


int main() {
  int i;
  struct Card *pHead, *pNow, *pPrev;
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

  printf("Name to find: ");
  scanf("%s",name);

  printf("Before calling!\n");fflush(stdout);
  pPrev = findPrev(pHead,name);
  if(pPrev) 
    printf("Found: %s\n",pPrev->body);
  
  else
    fprintf(stderr,"Nobody found before that name.\n");
  
  return 0;
}

