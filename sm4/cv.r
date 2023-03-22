x = rnorm(1000)
y = 1+x+x*x+rnorm(1000)/2
dat = data.frame(x=x,y=y)
plot(x,y)
train = sample(1000,800)
test = -train

fit=lm(y~x,dat[train,])
pp=predict(fit,dat[test,])
cv.resid = pp-dat[test,'y']
howBad1 = sd(cv.resid)

fit2=lm(y~x+I(x^2),dat[train,])
pp=predict(fit2,dat[test,])
cv.resid = pp-dat[test,'y']
howBad2 = sd(cv.resid)

fit=lm(y~x+I(x^2)+I(x^3),dat[train,])
pp=predict(fit,dat[test,])
cv.resid = pp-dat[test,'y']
howBad3 = sd(cv.resid)

fit=lm(y~x+I(x^2)+I(x^3)+I(x^4),dat[train,])
pp=predict(fit,dat[test,])
cv.resid = pp-dat[test,'y']
howBad4 = sd(cv.resid)

fit=lm(y~x+I(x^2)+I(x^3)+I(x^4)+I(x^5)+I(x^6)+I(x^7),
       dat[train,])
pp=predict(fit,dat[test,])
cv.resid = pp-dat[test,'y']
howBad7 = sd(cv.resid)
