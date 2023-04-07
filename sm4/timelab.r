#install.packages('tuneR')
library(tuneR)
x = readWave('test.wav')
str(x)
plot(x)
plot(x@left,ty='l')
play(x)
setWavPlayer('aplay')
y = x
y@left = y@left/3
play(y)
hist(x@left)
noise = x@left[25000:length(x)]
hist(noise,prob=T)
curve(dnorm(x,mean=mean(noise),sd=sd(noise)),add=T)

play(sine(440))
play(Wave(1000*rnorm(100000)))

x=  rnorm(1000)
plot(x,ty='l')
library(zoo)
y= rollmean(x,25)
plot(y,ty='l')

repeat {
p = sample(100:1000,1)
turbulent = 5*rnorm(100)
x = rnorm(1000)
x[(p-99):p] = turbulent
plot(x,ty='l')
readline("Next")
}
