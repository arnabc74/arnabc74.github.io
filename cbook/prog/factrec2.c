#include <stdio.h>

int factorial(int n) {
  int ans;
  
  if(n==0) {
    ans = 1;
  }
  else {
    ans = n*factorial(n-1);
  }
  printf("%d! = %d\n",n,ans);`\includegraphics{arrow.pdf}`
  return ans;

}

int main() {
  int n;
  printf("n = ");
  scanf("%d",&n); 
  printf("\n\nFinal answer: %d! = %d\n",n,factorial(n));`\includegraphics{arrow.pdf}`
  return 0;
}
