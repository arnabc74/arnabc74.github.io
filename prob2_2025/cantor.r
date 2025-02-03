cantor = function(n,add=F) {
    if(n==0) {
        x = c(-0.3,0,1,1.3)
        y = c(0,0,1,1)
    }
    else {
        cnst3 = 3^n
        cnst2 = 2^n
        
        x = chop(0:cnst3)
        y = c(0,rep(1:(cnst2-1),rep(2,cnst2-1)),cnst2)
        x = c(-0.3,x/cnst3,1.3)
        y = c(0,y/cnst2,1)
    }
    if(add)
        lines(x,y)
    else
        plot(x,y,ty='l')
}
### (0,0) (1,1)  --------------
### (0,0) (1/3,1/2) (2/3,1/2) (1,1) ----     -----
### (0,0) (1/9,1/4) (2/9,1/4) (3/9,2/4) (6/9,2/4) (7/9,3/4) (8/9,3/4) (9/9,4/4) ----     -----
### 0 1 2 3     6 7 8 9                         18 19 20 21       24 25 26 27 
x = 0:27
chop = function(x) {
    n = length(x)
    if(n<=4) return(x)
    k=round((n-1)/3)
    c(chop(x[1:(k+1)]),chop(x[(2*k+1):n]))
}
