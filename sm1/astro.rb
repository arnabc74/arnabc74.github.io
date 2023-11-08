@{<NOTE>
<HEAD1>A correlation fallacy</HEAD1>
The fallacy that I am going to discuss here had actually happened
during the days of Prof Mahalanobis. I learned about this from a
lecture by Dr C R Rao. I do not have the original data set. So
the discussion will only provide the basic idea. 
<P/>
Allegedly, there is a claim in astrology that the ratio of the
life line and the wrist width can predict one's life span. The
life line is the length of the diagonal across the palm ending at
the base of the index finger. There was a paper where the authors
visited various burning ghats and crematoria, and collected data
on this ratio and the age at death for different dead bodies. The
computed Pearson's correlation and found a value as high as
0.8. So they claimed that astrology has some scientific justification,
after all.   
<P/>
The paper had attracted the attenstion of Prof Mahalanobis, who
was particularly intrigued by the fact that the authors had not
provided a scatterplot. Merely quoting the correlation without
showing the full data (graphically) opens up the hell of
data misintrepretation. He contacted the authors, and managed to
get the raw data, which contained also the genders of the dead
persons. The scatterplot looked something like this:
<CIMG web="astro1.png"/>
<COMMENT>
set.seed(35235)
male = matrix(rnorm(100)+4,50)
female =  matrix(rnorm(100),50)
pooled = rbind(male,female)
col = rep(c('red','blue'),c(50,50))
png('image/astro1.png')
plot(pooled,col=col,xlab='ratio',ylab='lifespan',xaxt='n',yaxt='n')
dev.off()
cor(pooled)
</COMMENT>
The red points correspond to the males, while the females are
shown by blue points. Notice that the cloud of points for the
males show no strong correlation. Neither does the female
cloud. Yet the two clouds being located at two different centres
create the correlation. In fact, here the male correlation is
about <M>-0.2</M> while the female correlation is
about <M>-0.01</M>. Yet the pooled correlation is <M>0.8</M>.

<P/>
Such a high correlation is an example of a <B>spurious
correlation</B>, meaning that it is really not there. 
<P/>
The interpretation of the data is that men tend to have more
squarish hands than women, and so have higher values of the
ratio. Also, during that time, a large number of women used to
die during child birth. So their life spans were shorter than
those for men. 
<P/>
In fact, you could have obtained a more striking paradox by
replacing the ratio with length of hair!

<HEAD1>Latent variable</HEAD1> 
We can visualise the cause of the fallacy as the following
diagram:
<CIMG web="fallbox.png"/>
The two variables Ratio and Lifespan are not directly connected
at all, but both are influenced by a common variable Gender. When
this common variable is not mentioned (as in the original paper),
the two other variables appear to have a correlation. 
<P/>
Such variables that influence other vsriables from behind the
scene, are called <B>latent variables</B>, and are at the centre
of much attention. 

<HEAD1>Is it safe to pool data?</HEAD1>
Statistics is all about aggregate overall behaviour. So we often
pool smaller samples with similar behaviours into a larger
sample, and expect to see that common behaviour more strongly in
the pooled data. For instance, if the mean of two univariate
samples are both between 3 and 4, then the pooled mean will also
lie in the ame interval. 
<P/>
However, thanks to latent variables, pooling may give rise to
wierd artefacts. The astrology fallacy is one such example. The
following problem outlies another.

<EXR>
We have two bivariate data sets <M>(X_i,Y_i)</M>
for <M>i=1,...,50</M> and for <M>i=51,...,100</M> such that each
has correlation equal to 1. Show that the pooled correlation can
be anything in <M>(-1,1]</M>.
</EXR> 
</NOTE>@}
