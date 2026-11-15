#include <stdio.h>

void drawDottedLine(int n) {
	int i;
	printf("|");
	for(i=0;i<n;i++) printf(".");
	printf("|");
}

int main() {
  drawDottedLine(10);
  return 0;
}
