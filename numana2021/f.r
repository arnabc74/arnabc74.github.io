unit = function(x) x/sqrt(sum(x*x))
A  = matrix(sample(9,9,rep=T),3,3)
(u = unit(1:3))
(u= unit(A%*% u))
