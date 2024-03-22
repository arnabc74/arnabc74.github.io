set.seed(3235325)
mu = 5
sigma = 1
tolerance = rnorm(340,mean=mu,sd=sigma)
dose = rep(seq(1,9,0.5),20)
dead = tolerance <= dose


loglik = function(param) {
    tmp = param[1]+param[2]*dose
    prob = pnorm(tmp)
    sum(dead*log(prob)) + sum( (1-dead)*log(1-prob) )
}

f = function(x) dnorm(x)/pnorm(x)
g = function(x) dnorm(x)/(1-pnorm(x))

fp = function(x) {fx = f(x); -fx*(x+fx)}
gp = function(x) {gx = g(x); -gx*(x-gx)}

    
grad = function(param) {
    tmp = param[1]+param[2]*dose
    h = dead*f(tmp)-(1-dead)*g(tmp)
    c(sum(h), sum(dose*h))
}

hessinv = function(param) {
    tmp = param[1]+param[2]*dose
    ha = dead*fp(tmp)-(1-dead)*gp(tmp)
    hb = dose*ha
    aa = sum(ha)
    bb = sum(dose*hb)
    ab = sum(dose*ha)
    dt = aa*bb-ab*ab
    matrix(c(bb,-ab,-ab,aa)/dt,2,2)
}
infinv = function(param) {
    tmp = param[1]+param[2]*dose
    edead = pnorm(tmp)
    ha = edead*fp(tmp)-(1-edead)*gp(tmp)
    hb = dose*ha
    aa = sum(ha)
    bb = sum(dose*hb)
    ab = sum(dose*ha)
    dt = aa*bb-ab*ab
    matrix(c(bb,-ab,-ab,aa)/dt,2,2)
}

nr = function(param) {
    newval = param -  hessinv(param) %*% grad(param)
    cat('l(',newval,') = ',loglik(newval),'\n')
    newval
}
fs = function(param) {
    newval = param -  infinv(param) %*% grad(param)
    cat('l(',newval,') = ',loglik(newval),'\n')
    newval
}

aval = -mu/sigma

bval = 1/sigma

agrid = aval + seq(-5,2,0.1)
bgrid = bval + seq(-0.5,1.5,0.01)
#val = outer(agrid,bgrid,Vectorize(loglik))

#library(rgl)
#options(rgl.printRglwidget = TRUE)
#persp3d(agrid,bgrid,val)
param=c(-4,1)
