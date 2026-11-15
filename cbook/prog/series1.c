sum = 0;
isConvergent = 0;
for(k=1;k<=1e10;k++) {
   sum += 1.0/(k*k);
   /*Test partial sums*/
}

if(isConvergent==1) {                            `\includegraphics{arrow.pdf}`
   printf("The sum = %lf.\n",sum);               `\includegraphics{arrow.pdf}`
}                                                `\includegraphics{arrow.pdf}`
else {                                           `\includegraphics{arrow.pdf}`
   printf("No convergence within 1e10 steps.\n");`\includegraphics{arrow.pdf}`
}                                                `\includegraphics{arrow.pdf}`
