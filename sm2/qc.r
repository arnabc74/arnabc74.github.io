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

