#-----Load data---
dat = read.csv('simpson.csv')
#-----Explore---------
dim(dat)
table(dat)
#----------------------
xtabs(~Death,dat)
#---------------------
xtabs(~Defendant,dat)
#----------------------
xtabs(~Victim,dat)
#-----------------------
xtabs(~Victim+Defendant,dat)
#----------One side of Simpson-------
xtabs(~Defendant+Death,dat)
#----------The other side of Simpson-------
table(dat)
xtabs(~Defendant+Death+Victim,dat)
#----------------------------
ft = table(dat)
mt = xtabs(~Victim+Defendant,dat)
dp=ft[,,"Yes"]/mt
#------------------------------
plot(1,ylim=range(dp),xlim=c(0,3),xlab='',ylab='',ty='n',xaxt='n')
axis(1,at=1:2,c("Black","White"))
title(xlab="Defendant",ylab='P(death penalty)')
#-----------------------------
text(2,dp["White","White"],'W')
#-----------------------------
points(2,dp["White","White"],cex=0.05*mt["White","White"])
#-----------------------------

text(1,dp["White","Black"],'W')
points(1,dp["White","Black"],cex=0.05*mt["White","Black"])

text(2,dp["Black","White"],'B')
points(2,dp["Black","White"],cex=0.05*mt["Black","White"])

text(1,dp["Black","Black"],'B')
points(1,dp["Black","Black"],cex=0.05*mt["Black","Black"])
#-----------------------------

lines(c(1,2), dp["Black",],lwd=3)
text(1.46,0.02,'Black victim')
#-----------------------------
lines(c(1,2), dp["White",],lwd=3)
text(1.45,0.2,'White victim')
#-----------------------------
(vicTot=margin.table(ft,1))
(vicDth=margin.table(ft[,,"Yes"],1))
#-----------------------------
lines(c(1,2),vicDth/vicTot,lty=2,lwd=3)
text(1.53,0.07,'Overall')
##Over
