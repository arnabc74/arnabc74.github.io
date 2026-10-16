sum = 0;
isConvergent = 0;
for(k=1;k<=1e10;k++) {
   sum += 1.0/(k*k);
   /*Test partial sums*/
}

if(isConvergent==1) {                            `\
   printf("The sum = %lf.\n",sum);               `\
}                                                `\
else {                                           `\
   printf("No convergence within 1e10 steps.\n");`\
}                                                `\
