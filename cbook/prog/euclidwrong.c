#include <stdio.h>

int main() {
  int a, b, bhajak, bhajya, bhagshes;
  printf("Supply two positive integers: ");
  scanf("%d%d",&a,&b); di(a), 
  if(a < b) {
    bhajak = a;
    bhajya = b;
  }
  else {
    bhajak = b;
    bhajya = a;
  }
  
  do {
    bhagshes = bhajya % bhajak;
    bhajya = bhajak;
    bhajak = bhagshes;
  } while(bhagshes > 0);

  printf("GCD = %d\n",bhajak);
  return 0;
}
