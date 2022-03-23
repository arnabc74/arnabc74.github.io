x = rep(1:10,3)
y = 2+3*x + rnorm(length(x))/3
plot(x,y)
sink('spring.txt')
data.frame(wt=x,len=y)
sink()
