install.packages('tuneR') #You need to do this only once.
library(tuneR)
dat = readWave('class.wav') #You may need to give the entire path of the file
hist(dat@left,probability=TRUE)
hist(dat@left,breaks=200,probability=TRUE) #finer histogram
