school = c(50, 60, 70, 45, 55)
smart = c(10, 20)
smartName = c('no', 'yes')
schoolName = c('A','B','C','D','E')
dat = c()

for(i in 1:2) {
    for(j in 1:5) {
        mean = smart[i] + school[j]
        marks = floor(rnorm(25,mean,sd=5))
        dat = rbind(dat,cbind(smartName[i],schoolName[j],marks))
    }
}
colnames(dat)=c('smart', 'school', 'marks')
sink('mix.txt')
data.frame(dat)
sink()
