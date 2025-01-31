

val = read.table('3ddata.txt',head=T)
library(rgl)
options(rgl.printRglwidget = TRUE)
plot3d(val)
spheres3d(val,r=0.01)
