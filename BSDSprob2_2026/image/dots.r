x = 1:100
png('dots1.png')
bareplot(x,1/x,ylim=c(-2,2),pch=20,ty='b')
abline(h=1,lty=2)
points(x,1+(-1)^x/x,pch=20,col='red',ty='b')
points(x,-0.2-x/50,pch=20,col='blue',ty='b')
points(x,x*(x-60)/1000,pch=20,col='green',ty='b')
abline(h=0,v=0,lwd=3)
dev.off()

png('dots2.png')
bareplot(x,(-1)^x*(1-1/x),ylim=c(-2,2),pch=20,ty='b')
abline(h=c(-1,1),lty=2)
abline(h=0,v=0,lwd=3)
dev.off()

png('dots3.png')
y = ifelse(x%%2==0, x/50,1/x) 
bareplot(x,y,ylim=c(-2,2),pch=20,ty='b')
abline(h=0,v=0,lwd=3)
dev.off()

png('dots4.png')
y = (x%%3==0)*x/50+(x%%3==1)*1/x + (x%%3==2)*x*(60-x)/1000  
bareplot(x,y,ylim=c(-2,2),pch=20,ty='b')
abline(h=0,v=0,lwd=3)
dev.off()
