x = seq(1,2,len=11)
y = seq(3,4,len=11)

fu = function(x,y) (2*x+y)^2
fv = function(x,y) (x-y)^3

fx = function(x,y) x
fy = function(x,y) y

showGrid = function(x,y,fu,fv) {
    u=outer(x,y,fu)
    v=outer(x,y,fv)

    bareplot(as.vector(u),as.vector(v),asp=1,pch=20)
    for(i in 1:nrow(u)) lines(u[i,],v[i,],col='red')
    
    for(i in 1:ncol(u)) lines(u[,i],v[,i],col='blue')
    points(u[1],v[1],pch=20)
}

svg('jaco%draw.svg')
showGrid(x,y,fx,fy)
showGrid(x,y,fu,fv)
dev.off()

f = function(i,p) {
 ft1 = function(x,y) (1-p)*fx(x,y)+p*fu(x,y)
 ft2 = function(x,y) (1-p)*fy(x,y)+p*fv(x,y)
 showGrid(x,y,ft1,ft2)
}
process('jacoanim',f,nf=100)
