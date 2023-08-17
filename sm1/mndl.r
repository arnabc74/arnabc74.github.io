##: Start a blank plot
plot(c(0,1,0,0),c(0,0,1,0),ty='l',xlab="P(yy)",ylab="P(nn)",asp=1)
polygon(c(0,1,0,0),c(0,0,1,0),col='pink')
##|

doit = function() {
    ##: Create the parent generation

    ##: Take p0 and p2 from user
    strt = locator(1)
    p0 = strt$x; p2 = strt$y
    ##|

    points(p0,p2,pch=20,col='red')

    freq = 1000*c(p0,1-p0-p2,p2)
    parentGen = rep(0:2,freq)

    N = length(parentGen)
    ##|
    

    for(k in 1:10) {
        ##: Generate nextGen, the next generation
        nextGen = rep(0,N)
        for(i in 1:N) {
            parents = parentGen[sample(N,2)]
            dad = parents[1]; mom = parents[2]
            
            ##: Get a sperm from Daddy
            if(dad==0) 
                sperm = 0
            else if(dad==2)
                sperm = 1
            else
                sperm = sample(0:1,1)
            ##|

            ##: and an ovum from Mommy
            if(mom==0) 
                ovum = 0
            else if(mom==2)
                ovum = 1
            else
                ovum = sample(0:1,1)
            ##|
            
            nextGen[i] = sperm + ovum  
        }
        ##|
        propn = table(nextGen)/N
        points(propn[1],propn[3],pch=20)
        parentGen = nextGen
    }
}

repeat {doit()}
