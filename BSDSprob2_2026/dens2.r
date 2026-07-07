png('image/gaumixscat.png')
dat = matrix(rnorm(2000),ncol=2)
A = matrix(c(1,0,0,2),2)
B = matrix(c(1,0.8,1,0.2),2)
n = rbinom(1,1000,0.5)
x = rbind(dat[1:n,]%*%A,c(5,5)+dat[(n+1):1000,]%*%B)
plot(x[,1],-x[,2],pch=20,xlab='',ylab='')
dev.off()

library(mclust)
f = function(x,y) {
    30*(dmvnorm(matrix(c(x,y),1),mean=c(0,0), sigma=t(A)%*%A) + dmvnorm(matrix(c(x,y),1),mean=c(5,5), sigma=t(B)%*%B))
}

xx = seq(-4,10,0.1)
yy = seq(-7,10,0.1)
zz = outer(xx,yy,Vectorize(f))
sink('gaumix.obj')
surfObj(xx,yy,zz)
sink()

