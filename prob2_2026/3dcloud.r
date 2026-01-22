

val = read.table('3ddata.txt',head=T)
library(rgl) #install.packages('rgl')
library(htmlwidgets)
#options(rgl.printRglwidget = TRUE)
plot3d(val)

scene <- rglwidget()

saveWidget(scene, file = "tstpca.html", selfcontained = TRUE)

