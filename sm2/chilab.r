rawDat = sample(6,1000,rep=T)
of = table(rawDat)
expProb = rep(1/6,6)
ef = 1000 * expPro
val = sum ( (of-ef)^2/ef )
curve(dchisq(x,df=6-1),xlim=c(0,20))
abline(v = T)
p.value = 1-pchisq(T,df=5)

rawDat = sample(6,1000,rep=T,prob=c(1,3,2,1,4,1))
of = table(rawDat)
expProb = rep(1/6,6)
ef = 1000 * expProb
T = sum ( (of-ef)^2/ef )
curve(dchisq(x,df=6-1),xlim=c(0,20))
abline(v = T)
p.value = 1-pchisq(T,df=5)

val = numeric(10000)
for(i in 1:10000) {
  rawDat = sample(6,1000,rep=T)
  of = table(rawDat)
  expProb = rep(1/6,6)
  ef = 1000 * expProb
  val[i] = sum ( (of-ef)^2/ef )
}
curve(dchisq(x,df=6-1),add=TRUE)

rawDat = sample(6,1000,rep=T)
chisq.test(table(rawDat))

chisq.test(c(10,20,30,1,230,3))

rawDat = sample(6,1000,rep=TRUE,prob=1:6)
of = table(rawDat)
phat1 = (of[1]+of[6])/2000
phat2 = (of[2]+of[5])/2000
phat3 = 0.5 - phat1 -phat2
expProb = c(phat1, phat2, phat3, phat3, phat2, phat1)
ef = 1000 * expProb
val = sum ( (of-ef)^2/ef )
curve(dchisq(x,df=6-1-2),xlim=c(0,20))
abline(v = val)
p.value = 1-pchisq(val,df=(6-1)-2)

val = numeric(10000)
for(i in 1:10000) {
    rawDat = sample(6,1000,rep=TRUE,prob=c(2,5,1,1,5,2))
of = table(rawDat)
phat1 = (of[1]+of[6])/2000
phat2 = (of[2]+of[5])/2000
phat3 = 0.5 - phat1 -phat2
expProb = c(phat1, phat2, phat3, phat3, phat2, phat1)
ef = 1000 * expProb
val[i] = sum ( (of-ef)^2/ef )
}
curve(dchisq(x,df=6-1),add=T)
curve(dchisq(x,df=6-1-2),add=T,col='red',lwd=3)


xbar = numeric(1000)
randProb = sample(100,5)
for(i in 1:1000) {
    x = sample(1:5,50,rep=TRUE, prob=randProb)
    xbar[i] = mean(x)
}

hist(xbar,prob=TRUE)
