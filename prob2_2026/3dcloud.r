

val = read.table('3ddata.txt',head=T)
library(rgl) #install.packages('rgl')
options(rgl.printRglwidget = TRUE)
plot3d(val)

