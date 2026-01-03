#include <stdio.h>

int main() {
  int m, n, lineLength, i, j, k;
  
  printf("This program prints the m x n  multiplication table of the first m and n numbers.\n\n");

  printf("Please supply m: ");
  scanf("%d",&m); 

  printf("Please supply n: ");
  scanf("%d",&n); 

  printf("The multiplication table is:\n");

  printf("        |");
  for(j=1;j<=n;j++) { 
    printf("%7d",j);
  }
  printf("\n");
    
  lineLength = 7*n+9;
  for(k=0;k<lineLength;k++)
    printf("-");
  printf("\n");

  for(i=1;i<=m;i++) {
    printf("%7d |",i);
    for(j=1;j<=n;j++) printf("%7d",i*j);
    printf("\n");
  }
  
  return 0;
}
