x1 = seq(0,2,0.1); y1 = 5*x1*x1/24
x2 = seq(2,3,0.1); y2 = x2/3+1/6
x3 = seq(3,5,0.1); y3 = (-5*x3*x3+26*x3-5)/24

png("densplot.png")
plot(c(x1,x2,x3),c(y1,y2,y3),ty='l',xlab="u", ylab="g(u)",lwd=3,col="red",bty='n')
dev.off()
