while(1) {
  delete(&(head->next));
  head->next = calloc(1,sizeof(struct Card));
  printf("%p\n",head->next);
  fflush(stdout);
  if(head->next==0) {
    fprintf(stderr,"No more memory!\n");
    return 1;
  }
  sprintf(head->body,"New");
}
