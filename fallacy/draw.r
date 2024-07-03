###theta = c(seq(pi/4,pi/4+0.05,len=10),seq(pi/3,pi/3+0.05,len=10))
theta = seq(0,pi/2,len=30) #theta = pi/2 - incidence angle
cosphi = 1.3 * cos(theta)  #phi = pi/2 - refraction angle. So law of refraction is cos(phi)= mu*cos(theta).
good = which(abs(cosphi) < 1) #Good means refraction occurs (not total internal refraction)
thetagood = theta[good]
phigood = acos(cosphi[good])
a = 1-tan(phigood)/tan(thetagood) #y = a + bx is the line along which the refracted ray lies.
b = tan(phigood)
#svg('image/right2raw.svg')
plot(0,xlim=c(-1,1),ylim=c(0,2),asp=1,ty='n')
for(i in 1:length(good)) abline(a=a[i],b=b[i])
abline(1,0,lwd=3) #The water surface.
x = 0.69/tan(thetagood)^3 #This is for drawing the red curve (the envelope).
                                        #I did the math to find that the refracted rays in the pencil
                                        #of rays near theta intersect at a point with x =
                                        #(mu^2-1)/tan(theta)^3. Got this by taking limit. Ask
                                        #me for the details, if you need.
y = a+b*x
lines(x,y,col='red',lwd=5)
#dev.off()
