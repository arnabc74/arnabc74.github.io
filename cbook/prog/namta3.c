for(i=1;i<=m;i++) {
  printf("%7d |",i);
  for(j=1,k=i; j<=n; j++, k+=i) {`\
    printf("%7d",k);
  }
  printf("\n");
}
