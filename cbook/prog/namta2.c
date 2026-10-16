for(i=1;i<=m;i++) {
  printf("%7d |",i);
  k=i;`\
  for(j=1; j<=n; j++) {
    printf("%7d",k);
    k+=i;`\
  }
  printf("\n");
}
