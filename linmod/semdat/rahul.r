#reading file
dat=read.csv('videosBS1808.csv')
#add total duration column
dat$td=dat$hour*3600+dat$min*60+dat$sec
#numeric conversion of factor data
dat$extn=as.numeric(dat$extn)
dat$extn=factor(dat$extn)
#plot
plot(td~size,dat,col=extn)
plot(td~extn,dat)
plot(td~extn,dat)
#model
fit=lm(td~size*extn-1,dat)
plot(fit$residuals~dat$extn)
abline(h=0)
plot(fit$residuals~dat$size)
abline(h=0)
