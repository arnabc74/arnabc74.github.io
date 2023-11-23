### Cross validation
useSL = function(train, newInput) {
    ind.setosa = train[,5]=="setosa"
    ind.virginica = train[,5]=="virginica"
    ind.versicolor = train[,5]=="versicolor"
    mean.setosa = mean(train[ind.setosa,1])
    mean.virginica = mean(train[ind.virginica,1])
    mean.versicolor = mean(train[ind.versicolor,1])
    meanVector = c(mean.setosa,mean.virginica,mean.versicolor)
    predictedClass = c()
    for(i in 1:nrow(newInput)) {
        predictedClass[i] = which.min(abs(newInput[i,1]-meanVector))
    }
    c('setosa','virginica','versicolor')[predictedClass]
}

mixup = c(sample(50,50),50+sample(50,50),100+sample(50,50))
train = mixup[c(1:30,51:80,101:130)]

pred=useSL(iris[train,],iris[-train,-5])

mean(pred==iris[-train,5])

usePL = function(train, newInput) {
    ind.setosa = train[,5]=="setosa"
    ind.virginica = train[,5]=="virginica"
    ind.versicolor = train[,5]=="versicolor"
    mean.setosa = mean(train[ind.setosa,3])
    mean.virginica = mean(train[ind.virginica,3])
    mean.versicolor = mean(train[ind.versicolor,3])
    meanVector = c(mean.setosa,mean.virginica,mean.versicolor)
    predictedClass = c()
    for(i in 1:nrow(newInput)) {
        predictedClass[i] = which.min(abs(newInput[i,3]-meanVector))
    }
    c('setosa','virginica','versicolor')[predictedClass]
}

pred=usePL(iris[train,],iris[-train,-5])

mean(pred==iris[-train,5])


### Deterministic computation

-200*1/2 + 100*1/2


what.i.pay.if.head = 200
what.i.get.if.tail = 100
-what.i.pay.if.head/2 + what.i.get.if.tail/2


### Stochastic computation

data = sample(c('head','tail'),10000,replace=TRUE)
profit = ifelse(data=='head', 100,-200)
mean(profit)

### Sampling distribution (sample mean)

xbar = numeric(10000)
for(i in 1:10000) {
    x = rnorm(100)
    xbar[i] = mean(x)
}

### Compare with theory
hist(xbar,prob=T)

curve(dnorm(x,sd=1/10),from=-0.4,to=0.4,add=T)

sd(xbar) #ideally 1/10

### Repeat for 10% trimmed mean

xbart = numeric(10000)
for(i in 1:10000) {
    x = rnorm(100)
    xbart[i] = mean(x,trim=0.1)
}

###< Report
hist(xbart,prob=T)


sd(xbart)

###Parametric bootstrap
orig = rnorm(100,mean=1,sd=0.5)
xbar = mean(orig)
s = sd(orig)
evt = c()
for(i in 1:10000) {
  fake = rnorm(100,mean=xbar,sd=s)
  evt[i] = abs(mean(fake)-median(fake)) > 0.05
}
mean(evt)

### Empirical distribution
pdf("image/ecdf%d.pdf",one=F)
raw.data =  rnorm(10)

plot(ecdf(raw.data))

### Comapre with true distribution

curve(pnorm(x),-3,3,add=T,col='red')


### Increase sample size

raw.data =  rnorm(1000)

plot(ecdf(raw.data))

curve(pnorm(x),-3,3,add=T,col='red')
dev.off()

###Simulate from empirical distribution

resampled.data = sample(raw.data, length(raw.data),repl=T)


hist(resampled.data,prob=T)

curve(dnorm(x),-3,3,add=T)


### How does the original data compare?
dev.new()

hist(raw.data,prob=T)
curve(dnorm(x),-3,3,add=T)

### Sampling distribution of normal mean  using bootstrap

xbar = numeric(10000)
for(i in 1:10000) {
    x = sample(raw.data,length(raw.data),rep=T)
    xbar[i] = mean(x)
}
                                        #Compare with theory
hist(xbar,prob=T)
curve(dnorm(x,sd=1/sqrt(1000)),from=-0.4,to=0.4,add=T)

sd(xbar)


### Sampling distribution of normal mean  using bootstrap

xbar = numeric(10000)
for(i in 1:10000) {
    x = sample(raw.data,length(raw.data),rep=T)
    xbar[i] = mean(x,trim=0.1)
}
                                        #Compare with theory
hist(xbar,prob=T)
 

sd(xbar) #ideally 1/sqrt(1000)



### Permutation test
x = read.table('whorlfull.txt',head=T)
(ct = table(x))
chisq.test(ct)

mom = x[,1]
kid = x[,2]

nullchi = numeric(1000)
for(i in 1:1000) {
  newkid = sample(kid)
  nullchi[i] = chisq.test(table(mom,newkid))$stat
}

hist(nullchi,prob=T)
obschi = 0.004
mean(nullchi > obschi)
###-------------------
n11 = 150
n12 = 372 - 150
n21 = 200
n22 = 428

m = matrix(0,2,2)
mother = c(rep(1,n11+n12) , rep(0, n21+n22))
chi.sq = numeric(10000)
for(i in 1:10000) {
    children = rep(0,1000)
    places.for.1 = sample(1:1000, n11+n21)
    children[places.for.1] = 1
                                        #fake.data = cbind(mother,children)
    tab = table(mother,children)
    n1. = sum(tab[1,])
    n2. = sum(tab[2,])
    n.1 = sum(tab[,1])
    n.2 = sum(tab[,2])
    
    m[1,1] = (n1.*n.1)/1000
    m[1,2] = (n1.*n.2)/1000
    m[2,1] = (n2.*n.1)/1000
    m[2,2] = (n2.*n.2)/1000
    
    chi.sq[i] = sum((tab-m)^2/m)
}
 
###qrcode("https://www.youtube.com/playlist?list=PLx--gUxue3Z89y6zFwXv0DcpkQ--TOHq-","youtube")
