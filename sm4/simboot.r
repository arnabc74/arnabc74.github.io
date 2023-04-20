##A simple casino game
data = sample(c('head','tail'),10000,replace=TRUE)
profit = ifelse(data=='head', 100,-200)
mean(profit)

xbar = numeric(10000)
for(i in 1:10000) {
    x = rnorm(100)
    xbar[i] = mean(x)
}
                                        #Compare with theory
hist(xbar,prob=T)
curve(dnorm(x,sd=1/10),from=-0.4,to=0.4,add=T) #oops!

sd(xbar) #ideally 1/10

                                        #Repeat for 10% trimmed mean
xbart = numeric(10000)
for(i in 1:10000) {
    x = rnorm(100)
    xbart[i] = mean(x,trim=0.1)
}
                                        #Report
hist(xbart,prob=T)


sd(xbart) #Should this be more or less than 1/10?

                                        #Now suppose that we have some iid data but not the underlying distribution
raw.data =  rnorm(10)

plot(ecdf(raw.data))
                                        #compare
curve(pnorm(x),-3,3,add=T,col='red')

                                        #Increase sample size
raw.data =  rnorm(1000)

plot(ecdf(raw.data))
                                        #compare
curve(pnorm(x),-3,3,add=T,col='red')

                                        #Simulate from ecdf
resampled.data = sample(raw.data, length(raw.data),rep=T)

                                        #Compare with N(0,1)
hist(resampled.data,prob=T)
curve(dnorm(x),-3,3,add=T)

                                        #How does the original data compare?
dev.new()
hist(raw.data,prob=T)
curve(dnorm(x),-3,3,add=T)

                                        #Repeat 1 using bootstrap
xbar = numeric(10000)
for(i in 1:10000) {
    x = sample(raw.data,length(raw.data),rep=T)
    xbar[i] = mean(x)
}
                                        #Compare with theory
hist(xbar,prob=T)
curve(dnorm(x,sd=1/sqrt(1000)),from=-0.4,to=0.4,add=T)

sd(xbar) #ideally 1/sqrt(1000)

xbar = numeric(10000)
for(i in 1:10000) {
    x = sample(raw.data,length(raw.data),rep=T)
    xbar[i] = mean(x,trim=0.1)
}
                                        #Compare with theory
hist(xbar,prob=T)
curve(dnorm(x,sd=1/sqrt(1000)),from=-0.4,to=0.4,add=T)

sd(xbar) #ideally 1/sqrt(1000)

                                        #Mixture distributions

curve(0.5*dnorm(x,mean=-.8,sd=0.8)+0.5*dnorm(x,mean=1,sd=1/2),from=-4,to=4)

f = function(n=1000) {
    toss = sample(2,n,rep=T)
    first = rnorm(n,mean=-.8,sd=0.8)
    second = rnorm(n,mean=1,sd=0.5)
    x = ifelse(toss==1,first,second)
    hist(x,prob=T)
    curve(0.5*dnorm(x,mean=-.8,sd=0.8)+0.5*dnorm(x,mean=1,sd=1/2),
          from=-4,to=4,col='red',add=T)
}


###------------------------------------

library(boot)

x = read.table('somedata.txt',head=T)

mystat = function(fulldata,cases) {
    bootdata= fulldata[cases,]
    mean(bootdata)
}
result = boot(data=x, statistic=mystat, R=1000)
result
boot.ci(result,type='basic')

egg =read.table('cuckoo.txt',head=T)
mystat = function(fulldata, cases) {
  bootdata = fulldata[cases,] 
  fit = lm(len ~ bird, data=bootdata)
  return(fit$coeff[2])
}
# bootstrapping with 1000 replications
result = boot(data=egg, statistic=mystat, R=1000)

result

boot.ci(result,type='basic')
stu_22@isine.ac.in

#Permutation test
x = read.table('whorlfull.txt',head=T)
table(x)
chisq.test(table(x))

newx = data.frame(mom=x[,1],kid=sample(x[,2]))
table(newx)
chisq.test(table(newx))

