#include <stdio.h>
#include <math.h>

double wave(double A, double w, double x, double theta) {
  return A*sin(w*x+theta);
}

int main() {
  double frequency, time, phase;

  printf("Please supply frequency, time and phase: ");
  scanf("%lf%lf%lf",&frequency, &time, &phase);  
  printf("Answer = %lf.\n",wave(1.0,frequency,time,phase));
}
