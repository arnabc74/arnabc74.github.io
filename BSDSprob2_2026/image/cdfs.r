f = function(i,p) {
    x = c(-1.5,0,1/i,1.5)
    y = c(0,0,1,1)
    bareplot(x,y,ty='l',lwd=3,col='red')
    abline(h=0,v=0)
}

process("cdfs",f,30)
