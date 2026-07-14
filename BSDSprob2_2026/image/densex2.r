x = runif(1000)
png("denshistex%d.png")
opar = par(mfrow=c(2,2))
hist(x,prob=T,xlab="",main='(A)')
hist(x*x,prob=T,xlab="",main='(B)')
hist(sqrt(x),prob=T,xlab="",main='(C)')
hist(x*x/2,prob=T,xlab="",main='(D)')
par(opar)

x = rnorm(1000)
opar = par(mfrow=c(2,2))
hist(x,prob=T,xlab="",xaxt='n',main='(A)')
hist(exp(x),prob=T,xlab="",xaxt='n',main='(B)')
hist(-exp(x),prob=T,xlab="",xaxt='n',main='(C)')
hist(runif(1000),prob=T,xlab="",xaxt='n',main='(D)')
par(opar)

x = runif(500)^2
y = runif(500)
opar = par(mfrow=c(2,2))
plot(x,y,xlab="X",ylab="Y",main='(A)',pch=20)
plot(y,x,xlab="X",ylab="Y",main='(B)',pch=20)
plot(x,y^2,xlab="X",ylab="Y",main='(C)',pch=20)
plot(x,x+y,xlab="X",ylab="Y",main='(D)',pch=20)
par(opar)


dev.off()
