x = read.delim('amazon-books.txt') #Downloaded from DASL
                                        #We are using read.delim, since
                                        #tab-delimited data.
dim(x)
any(is.na(x))
dd = na.omit(x)
dim(dd)
names(dd)
dat = dd[,c(3,4,6,10,11,12,13)]
names(dat) = c('lp','ap','page','h','w','t','wt')
###Finding multiple correlation betn wt and (page, h, w, t)
tmp = lm(wt~page+h+w+t,data=dat)
summary(tmp)
summary(tmp)$r.sq
###Direct check
1-sum(tmp$resid^2)/((311-1)*var(dat$wt)) #Note the use of n-1 in the deno.
###Partial correlation betn wt and page given h, w, t (explicit regr)
page.filtered = lm(page~h+w+t,data=dat)$resid
wt.filtered = lm(wt~h+w+t,data=dat)$resid
cor(page.filtered, wt.filtered)
###(using covariance matrix)
ordered.data = with(dat,data.frame(h,w,t,page,wt))
(S = cov(ordered.data))
A = S[1:3,1:3]
B = S[1:3,4:5]
C = S[4:5,4:5]

pcov = C - t(B) %*% solve(A) %*% B ##More efficient to useC - t(B) %*% solve(A,B)
pcov
pcov[1,2]/sqrt(pcov[1,1]*pcov[2,2])

library(ppcor) #You need to install it first.
pcor(ordered.data)$est
