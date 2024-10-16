install.packages(c('gplots','plot3D','mvtnorm'))
library(gplots)
library(plot3D)
library(mvtnorm)
dat = rmvnorm(100000,c(0,0),sigma=matrix(c(2,1,1,2),2,2))
plot(dat[,1],dat[,2])

frq = hist2d(dat,nbins=50)
hist3D(z=frq$count)

xbar = numeric(100000)
for(i in 1:100000) {
  dat = rnorm(100,mean=10,sd=2)
  xbar[i] = mean(dat)
}
hist(xbar,prob=T)
curve(dnorm(x,mean=10,sd=0.2),add=T,lwd=3,col='red')
curve(dchisq(x,df=1),xlim=c(0,5))
curve(dchisq(x,df=2),add=T,col='red',lwd=3)
curve(dchisq(x,df=3),add=T,col='blue',lwd=3)
curve(dchisq(x,df=10),xlim=c(0,50),col='black',lwd=5)

val = numeric(10000)
for(i in 1:10000) {
    x = rnorm(10)
    val[i] = sum(x*x)
}
hist(val,prob=T)
curve(dchisq(x,df=10),add=T,col='black',lwd=5)

val = numeric(10000)
for(i in 1:10000) {
    x = rnorm(10)
    val[i] = 9*var(x) #9 because var in R uses n-1
}
hist(val,prob=T)
curve(dchisq(x,df=9),add=T,col='black',lwd=5)
