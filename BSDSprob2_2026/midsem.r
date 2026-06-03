x = runif(10000)
y = runif(10000)
keep = (x >= y) & (y >= x*x)
png('image/midoverlay.png')
hist(x[keep]+2*y[keep],prob=T)
f = function(u) {
    6*(u/3-(4*u+1-sqrt(8*u+1))/8)
}
curve(f(x),add=T)
dev.off()
