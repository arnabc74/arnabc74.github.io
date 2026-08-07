svg('fplotraw.svg')
x = seq(0,10,0.01)
plot(x,df(x,df1=1,df2=1),ylim=c(0,1.25),ty='l',col='black',lwd=3)
abline(h=0,v=0)
lines(x,df(x,df1=3,df2=4),col='blue',lwd=3)
lines(x,df(x,df1=30,df2=4),col='green',lwd=3)
lines(x,df(x,df1=3,df2=40),col='red',lwd=3)
dev.off()

