y = numeric(1000)
for(i in 1:1000) {
    n = 10000
    x = rcauchy(n)
    mu = 0
    sigmasq = 10067
    y[i] = (mean(x)-mu)/sqrt(sigmasq/n)
}
hist(y,prob=T)
curve(dnorm(x),add=T)
