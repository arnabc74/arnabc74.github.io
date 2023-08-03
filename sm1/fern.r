
A1 = array(0,dim=c(2,2,4))


A1[,,1] = diag(c(0.8,0.8))
A1[,,2] = diag(c(0.5,0.5))
A1[,,3] = matrix(c(0.355,0.355,-0.355,0.355),2)
A1[,,4] = matrix(c(0.355,-0.355,0.355,0.355),2)

b1 = matrix(c(0.1,0.04,
             0.25,0.4,
             0.266,0.078,0.378,0.434),2)
p1 = rep(1,4)

A2 = array(0,dim=c(2,2,4))


A2[,,1] = matrix(c(0,0,0,0.16),2)
A2[,,2] = matrix(c(0.85,-0.04,-0.04,0.85),2)
A2[,,3] = matrix(c(0.2,0.23,-0.26,0.22),2)
A2[,,4] = matrix(c(-0.15,0.26,0.28,0.24),2)

b2 = matrix(c(0.0,0.0,0.0,1.6,0.0,1.6,0.0,0.44),2)
p2 = c(0.01,0.85,0.07,0.07)

doit = function(n,cc) {

    x = matrix(0,n,2)
    if(cc==1) {
      A = A1
      b = b1
      p = p1
    }
    else {
      A = A2
      b = b2
      p = p2
    }
    
  
    for(i in 2:n) {
      j = sample(4,1,prob=p);
      x[i,] = A[,,j]%*%x[i-1,] + b[,j]
    }

    x
}

x = doit(100000,1)
f = function(x,howMany=nrow(x)) {
     p=ifelse(howMany<=500, 20, '.')
     plot(x[1:howMany,1],x[1:howMany,2],xlim=c(0,1),ylim=c(0,1),pch=p,xlab='',ylab='',main=howMany)
}

g = function(x,howMany=nrow(x)) {
     p=ifelse(howMany<=500, 20, '.')
     plot(x[1:howMany,1],x[1:howMany,2],pch=p,xlab='',ylab='',main=howMany)
}


playAndShow = function(n, k) {
    g(doit(n,k))
}
