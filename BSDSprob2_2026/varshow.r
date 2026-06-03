set.seed(35235)
xraw = rnorm(50)
yraw = rnorm(50)
x = 1.1*xraw+0.9*yraw
y = 0.9*xraw+1.1*yraw
svg('image/scat%draw.svg',onefile=FALSE)
bareplot(x,y,asp=1,pch=20)
abline(h=0,v=0)

bareplot(x,y,asp=1,pch=20)
abline(h=0,v=0)
abline(a=0,b=1/3,col='blue')
a = 3; b = 1; nrm2 = a*a+b*b; ua = a/nrm2; ub = b/nrm2
proj = a*x+b*y
projx = ua*proj
projy = ub*proj
segments(x,y,projx,projy,col='red')
dev.off()
