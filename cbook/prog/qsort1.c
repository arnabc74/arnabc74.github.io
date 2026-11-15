#include <stdio.h>

int a[] = {7,9,2,0,5,2,1,7,5,8,4};
int n = 11;

void dump(int start, int end, int left, int right) {
  int i;
  for(i=0;i<n;i++) {
    if(i==start) printf(" [");
    if(i==left) printf(" |");
    printf("%d ",a[i]);
    if(i==right) printf("| ");
    if(i==end-1) printf(": ");
    if(i==end) printf("]");
  }
  printf("\n");
}

void quicksort(int start, int end) {
  int i, pivot, tmp, left, right;
  printf("---\nIn [%d,%d]----\n", start,end);
  /*Handle the trivial cases*/
  if(start>=end) {
    printf("Empty or singleton.\n");
    return;
  }
  if(start==end-1) {
    printf("Doubleton.\n");
    if(a[start] > a[end]) {
      printf("Swapping\n");
      tmp = a[start];
      a[start] = a[end];
      a[end] = tmp;
    }
    return;
  }
  /*Handle the nontrivial case with pivoting.*/
  left = start; right = end-1;
  pivot = a[end];
  printf("Pivot is %d\n", pivot);
  while(left<=right) {
    printf("left=%d, right=%d.\n",left,right);
    dump(start, end, left,right);
      
    printf("Candidate is %d\n",a[left]);
    if(a[left] < pivot) {
      printf("Candidate < pivot.\n");
      left++;
    }
    else {
      printf("Candidate >= pivot.\n");
      tmp = a[right];
      a[right] = a[left];
      a[left] = tmp;
      right--;
    }
  }
  dump(start, end, left,right);
  printf("Bringing pivot to proper position.\n");
  tmp = a[left];
  a[left] = pivot;
  a[end] = tmp;
  dump(start, end, -1,-1);
  quicksort(start,right);
  quicksort(left+1,end);
}

void main() {
  quicksort(0,n-1);
  printf("Finally:\n\n");
  dump(0,n-1,-1,-1);
}
