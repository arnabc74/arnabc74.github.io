#include <stdio.h>

void f(int n);
void g(int n);

void f(int n) {
	if(n<=0) return;
	printf("f says: %d\n",n);
	g(n-1);
}

void g(int n) {
	if(n<=0) return;
	printf("g says: %d\n",n);
	f(n-1);
}

int main() {
  f(4);
  return 0;
}
