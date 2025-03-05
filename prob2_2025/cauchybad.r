n = 10000
x = rcauchy(n,2,4)
y = cumsum(x)/(1:n)
plot(y,ty='l')
