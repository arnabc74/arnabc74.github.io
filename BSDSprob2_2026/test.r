g = function(y) {exp(-2*sqrt(y))/sqrt(y)}
x = rexp(1000,rate=2)
hist(x^2,prob=T)
curve(g,add=T)

