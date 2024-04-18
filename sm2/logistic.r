library(rgl)
 options(rgl.printRglwidget = TRUE)
F = function(x) 1/(1+exp(-x))

loglik = function(a,b) {
    tmp = F(a + b*x)
    sum(Y*log(tmp)+(1-Y)*log(1-tmp))
}

set.seed(21213)
x = seq(-3,3,len=30) ; n = length(x)
Y = rbinom(rep(1,n),rep(1,n),F(0+1*x))
agrid = seq(-1,1,len=11)
bgrid = seq(0.5,1.5,len=11)
val = outer(agrid,bgrid,Vectorize(loglik))
persp3d(agrid,bgrid,val)

grad = function(param) {
    a = param[1]; b = param[2]
    tmp = F(a + b*x)

    c(sum(Y-tmp), sum(x*(Y-tmp)))
}
negHess = function(param) {
    a = param[1]; b = param[2]
    tmp = F(a + b*x)
    h11 = sum(tmp*(1-tmp))
    h12 = h21 = sum(x*tmp*(1-tmp))
    h22 = sum(x*x*tmp*(1-tmp))
    matrix(c(h11,h21,h12,h22),2,2)
}

nr = function(param) {
    param + solve(negHess(param),grad(param))
}
