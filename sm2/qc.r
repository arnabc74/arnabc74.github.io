idealQuantity = 500
startProcess = function() {
    processMean <<- idealQuantity
    processSD <<- 5
}

grabBottles = function(howMany) {
    tmp = rep(processMean, howMany)
    error = rnorm(howMany, mean=0, sd=processSD)

    tmp + error
}

tamperMean = function(howMuch) {
    processMean <<- processMean + howMuch
}

tamperSD = function(howMuch) {
    tmp =  processSD + howMuch
    stopifnot(tmp>0)
    processSD <<- tmp
}

n = 10
sigma = trueSD
a = trueSD/sqrt(n)* qnorm(0.975)
lo = 500-a; hi = 500+a

ringBell2 = function(xbar) {
    if(xbar<lo || xbar>hi)
      return(TRUE)
    else
      return(FALSE)
}

ringBell = function(xbar) {
    if(xbar<lo || xbar>hi)
        cat("Stop that damned machine!\n")
    else
        cat("Cool!\n")
}
