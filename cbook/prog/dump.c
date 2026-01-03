void dump() {
  int i, j;
  
  for(i=0;i<n;i++) {
    for(j=0;j<=n;j++) { 
      printf("%lf ",a[i]-[j]);
      if(j==n-1) printf(" | ");
    }
  printf("\n");
  }
}
