sum = 0;
isConvergent = 0;
for(k=1;k<=1e10;k++) {
   sum += 1.0/(k*k);
   /*Test partial sums*/
   if(k%50==0) {            `\includegraphics{arrow.pdf}`
     /*Check change in sum*/`\includegraphics{arrow.pdf}`
   }                        `\includegraphics{arrow.pdf}`
}

if(isConvergent==1) {
   printf("The sum = %lf.\n",sum);
}
else {
   printf("No convergence within 1e10 steps.\n");
} 

