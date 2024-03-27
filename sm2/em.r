###(p,q) |-> (p*p + 2*p*(1-p-q), q*q + 2*q*(1-p-q), 2*p*q)

###0<=p<=1
###0<=q<=1-p

###0<=a<=1
###q=a*(1-p)

p =  a =  seq(0,1,len=21)
xx = function(p,a) {
    q=a*(1-p)
    p*p + 2*p*(1-p-q)
}

yy = function(p,a) {
    q=a*(1-p)
    q*q + 2*q*(1-p-q)
}

zz = function(p,a) {
    q=a*(1-p)
    2*p*q
}


x = outer(p,a,xx)
y = outer(p,a,yy)
z = outer(p,a,zz)
paraObj(x,y,z,'blood.obj')

library(rgl)
options(rgl.printRglwidget = TRUE)
plot3d(as.vector(x),as.vector(y),as.vector(z))


nA = 182; nB = 60; nAB = 17; nO = 176
em = function(param) {
  p = param[1]; q = param[2]; r = 1-p-q
  A1 = nA*p/(p+2*r)+nA+nAB
  B1 = nB*q/(q+2*r)+nB+nAB
  C1 = nO
  newval = c(A1,B1)/(A1+B1+C1)
  cat(newval,'\n')
  newval
}
param=c(0.1,0.1)
