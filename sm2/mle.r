set.seed(3235325)
mu = 5
sigma = 1
dose = rep(seq(1,9,0.5),20)
tolerance = rnorm(340,mean=mu,sd=sigma)
dead = tolerance <= dose


loglik = function(param) {
    tmp = param[1]+param[2]*dose
    prob = pnorm(tmp)
    sum(dead*log(prob)) + sum( (1-dead)*log(1-prob) )
}

aval = -mu/sigma

bval = 1/sigma

agrid = aval + seq(-5,2,0.1)
bgrid = bval + seq(-0.5,1.5,0.01)
val = outer(agrid,bgrid,Vectorize(function(a,b)loglik(c(a,b))))

library(rgl)
options(rgl.printRglwidget = TRUE)
persp3d(agrid,bgrid,val)

#--------------------------------------
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
    -matrix(c(bb,-ab,-ab,aa)/dt,2,2)
}

nr = function(param) {
    newval = param -  hessinv(param) %*% grad(param)
    cat('l(',newval,') = ',loglik(newval),'\n')
    newval
}
fs = function(param) {
    newval = param +  infinv(param) %*% grad(param)
    cat('l(',newval,') = ',loglik(newval),'\n')
    newval
}


param=c(-4,1)
for(i in 1:10) param=nr(param)

param=c(-4,1)
for(i in 1:10) param=fs(param)
infinv(param)

est = c()
for(count in 1:1000) {
    tolerance = rnorm(340,mean=mu,sd=sigma)
    dead = tolerance <= dose
    param=c(-4,1)
    converged = FALSE
    for(i in 1:10) {
        newparam=fs(param)
        if(any(is.nan(newparam))) break
        if(all(abs(newparam-param)< c(1e-5,1e-5))) {
            converged = TRUE
            break
        }
        param = newparam
    }
    if(converged) est = rbind(est,t(newparam)) 
}
cov(est)
infinv(param)
