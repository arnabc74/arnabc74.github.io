x = seq(0,1,0.01)
y = x*(x-0.5)*(x-0.9)
rng = range(y)
y = (y-rng[1])/(rng[2]-rng[1])
ycut = c(0,sort(runif(5)),1)

alpha = 0.5
plot(x,y,ty='l')
abline(h=ycut)

for(i in 1:6) {
    i = 3
    ypart = ycut[i] <= y & y <= ycut[i+1]
    parts = locateRuns()

    for(i in 1:(length(parts)-1)) {
        part = parts[i]:parts[i+1]
        yanim = alpha*y[part] + (1-alpha)*ycut[i]
        lines(x[part],yanim,lwd=3,col='red')
    }
}
locateRuns = function(x) {
    for(i in 1:length(x)) {
        if(state==START)
        if(x[i]) 
}
