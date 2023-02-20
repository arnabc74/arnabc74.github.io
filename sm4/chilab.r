x = sample(5,1000,rep=T)
table(x)
chisq.test(x) #oops
chisq.test(table(x))

x = sample(5,1000,prob=c(1,3,2,6,5), rep=T)
table(x)
chisq.test(table(x),p=c(1,3,2,6,5),rescale=T) #oops
chisq.test(table(x),p=c(1,3,2,6,5)/17)
chisq.test(table(x),p=c(1,2,3,6,5)/17)

val = chisq.test(table(x),p=c(6,3,2,1,5)/17)
names(val)
val$stat

val = numeric(10000)
for(i in 1:10000) {
    x = sample(5,1000,prob=c(1,3,2,6,5), rep=T)
    val[i] = chisq.test(table(x),p=c(6,3,2,1,5)/17)$stat
}
hist(val,prob=T,xlim=c(0,2400))
curve(dchisq(x,df=4),col='red',add=T)

mytable = function(dat) {
   c(sum(dat==1),sum(dat==2),sum(dat==3),sum(dat==4),sum(dat==5))
}

x = sample(5,50,prob=c(1,3,2,6,5), rep=T)
mytable(x)
val=chisq.test(mytable(x),p=c(1,3,2,6,5),rescale=T)
---------------
newval = numeric(10000)
for(i in 1:10000) {
    fakex = sample(5,50,prob=c(1,3,2,6,5), rep=T)
    newval[i] = chisq.test(mytable(fakex),p=c(1,3,2,6,5)/17)$stat
}
mean(newval>val$stat)
------------
hist(newval,prob=T)
curve(dchisq(x,df=4),col='red',add=T)

chisq.test(mytable(x),p=c(1,3,2,6,5),rescale=T,sim=T)

x = read.csv('kick.csv')
dim(x)
kick = x[,3]
lambda = mean(kick)
(obs.frq = table(kick))

(exp.prob = dpois(0:6,lambda))
(exp.frq = length(kick) * exp.prob)
tmp = dpois(0:2,lambda)
last = 1-sum(tmp)
(exp.prob = c(tmp,last))
(exp.frq = length(kick) * exp.prob)

(obs.frq = c(obs.frq[1:3],11+2))
(chisq = sum((obs.frq - exp.frq)^2/exp.frq))

x = read.table('whorlfull.txt',head=T)
(ct = table(x))
chisq.test(ct,corr=F)

mom = x[,1]
kid = x[,2]

nullchi = numeric(1000)
for(i in 1:1000) {
  newkid = sample(kid)
  nullchi[i] = chisq.test(table(mom,newkid))$stat
}

hist(nullchi,prob=T)
obschi = 0.073
mean(nullchi > obschi)
