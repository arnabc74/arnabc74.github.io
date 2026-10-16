sum = oldSum = 0;
for(k=1;k<=1e10;k++) {
   sum += 1.0/(k*k);
   /*Test convergence*/
   if(k%50==0) {
         /*Compare with old sum*/
      if(sum - oldSum < 1e-8) {
         isConvergent = 1;
         break;
      }
      else {         `\
         oldSum = sum`\
      }              `\
   }
}
if(convergence) {
   printf("The sum = %lf.\n",sum);
}
else {
   printf("Divergence.\n");
} 
