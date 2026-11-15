#include<stdio.h>

extern int value;
extern void f();

int main() {
  f();
  value = 55;
  f();
}
