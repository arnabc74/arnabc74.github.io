link = matrix(c(2,3,4,2,1,4,5,5,5,5),5,2)
x = numeric(1000)
x[1] = sample(5,1)
for(i in 2:1000) x[i] = link[  x[i-1] , sample(2,1)  ]
