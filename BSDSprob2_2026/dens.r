png('image/histdot1.png')
x = rnorm(10000)
frq=hist(x,br=20,prob=T,plot=F)
hist(x,br=20,prob=T,ylim=range(0,c(dnorm(0),frq$dens)))
curve(dnorm(x),xlim=c(-4,4),add=T,lwd=3)
rug(x)
par(opar)
dev.off()


png('image/histdot2.png')
x = rnorm(1000)+sample(c(0,4),1000,rep=T)
frq=hist(x,br=20,prob=T,plot=F)
xx = seq(-4,8,0.1)
yy = (dnorm(xx)+dnorm(xx-4))/2
hist(x,br=20,prob=T,ylim=range(0,c(yy,frq$dens)))
lines(xx,yy,lwd=3)
rug(x)
par(opar)
dev.off()

