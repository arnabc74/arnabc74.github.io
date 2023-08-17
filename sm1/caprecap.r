N = 10000
m = 500
n = 200
Nhat = numeric(1000)
for(i in 1:1000) {
  marked = rep(F,N)
  cap = sample(N,m)
  marked[cap] = T
  recap = sample(N,n)
  X = sum(marked[recap])
  Nhat[i] = m*n/X
}
