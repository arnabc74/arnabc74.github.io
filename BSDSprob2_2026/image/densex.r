png("densex2.png")
par(mfrow=c(2,2))
x = runif(500)^0.25
y = runif(500)^0.25

bareplot(1-x,y,pch=20,asp=1,xlim=c(0,1),ylim=c(0,1),main="(A)")
rect(0,0,1,1)

x = runif(500)^0.25
y = runif(500)^0.25

bareplot(x,y,pch=20,asp=1,xlim=c(0,1),ylim=c(0,1),main="(B)")
rect(0,0,1,1)

x = runif(500)^0.25
y = runif(500)^0.25

bareplot(x,1-y,pch=20,asp=1,xlim=c(0,1),ylim=c(0,1),main="(C)")
rect(0,0,1,1)

x = runif(500)^0.25
y = runif(500)^0.25

bareplot(1-x,1-y,pch=20,asp=1,xlim=c(0,1),ylim=c(0,1),main="(D)")
rect(0,0,1,1)
dev.off()

x = seq(0,1,len=51)
y = seq(0,1,len=51)
z = outer(x,y,function(x,y) x*x*y*y)
sink('densex1.obj')
surfObj(x,y,z)
sink()
