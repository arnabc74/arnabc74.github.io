rw = function(x,col=rep(1,length(x)+1)) {
    y = c(0,cumsum(2*x-1))
    plot(0:length(x),y,ty='b',xlab='time',ylab='',asp=1,lwd=2,col=col)
    abline(h=0)
    grid()
}
rw(sample(0:1,10,rep=T))
rw(c(0,1,1,1,0,1))


arw = function(x) {
    y = c(0,cumsum(2*x-1))
    tm = 0:length(x)
    X = Y = c()
    for(i in 2:length(y)) {
        Y = c(Y,seq(y[i-1],y[i],len=15))
        X = c(X,seq(tm[i-1],tm[i],len=15))
    }
    return(list(x=X,y=Y))
}
x=c(0,1,1,1,0,1)
tmp = arw(x)
