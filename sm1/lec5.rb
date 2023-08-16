@{<NOTE>
<HEAD1>Some examples of statistical modelling</HEAD1>
Any serious statistical exercise starts with a precise and clear picture of
the population and its relation with the sample. So here, in a nutshell, is the crux of
the statistical approach:
<Q>
First try to approximate any unpredictable phenomenon in terms of
(combinations of) random experiments. Then use statistical
regularity to look into the phenomenon. The first step is
called <B>statistical modelling</B>, the second is
called <B>statistical inference</B>.
</Q>
<HEAD2>Quick reminders</HEAD2>
We say that <M>X_1,...,X_n</M> constitute a <B>random sample</B>
 from a
distribution if they are the outcomes of repeated independent
trials of the same random experiment, and their barplot converges
or
histogram converges to that distribution. We also say
that <M>X_1,...,X_n</M> are  <B>IID</B> from that distribution.
The limit of the barplot is called the <B>probability mass
function (PMF)</B>. The limit of the histogram is called
the <B>probability density function (PDF)</B>. 
<P/>
Remember how to find probabilities from a PMF or a PDF. For PMF,
let <M>S</M> be the (countable) set of all possible values (e.g.,
for a die roll <M>S=\{1,2,3,4,5,6\}.</M>) Let <M>p:S\to[0,1]</M>
be the PMF. Then for any <M>A\seq S</M> we have <M>P(A) = \sum_{x\in A} p(x).</M>
<P/>
For PDF, let <M>S</M> be the interval where <M>X</M> can take
values. Let <M>f(x)</M> be the PDF. The for any <M>[a,b]\seq S</M> we have <M>P([a,b]) =
\int_a^b f(x)\, dx,</M> i.e., the area under under the PDF over
that interval. 

<HEAD3>Model 1: Weibull model for cricket run data</HEAD3>
A statistical model is any mechanism that we postulate using 
 mathematical functions and random experiments to mimick
behaviour of observed data. In order for the model to be
called <I>statistical</I>, there must be at least one random
experiments involved in it. Our first example is the  simplest
possible model, just a random experiment. 
<P/>
Here we shall work with cricket score data that we have got from
a public data repository called Kaggle. In particular we have
used the data <LINK to="https://www.kaggle.com/datasets/anirbna/sachin-tendulkar-batting-stats?resource=download">from this link</LINK>.  

<P/>
This data set is an example of a <B>multivariate</B> data set. It
is in the form of a <B>data matrix</B>, where each row is
a <B>case</B> and each column is a <B>variable</B>. Here is
little screenshot:
<CIMG web="crick.png"></CIMG>
Here each case is one inning in the cricket career of Sachin
Tendulkar. Some of the variables
are <I>Runs</I>, <I>Mins</I>, <I>BF</I>, <I>4s</I>. 

<P/>
In this exercise, we shall need only the <I>Runs</I> variable,
the number of runs scored by Sachin in each inning. The <LINK t="run.txt">extracted
data set</LINK> is an example of a <B>univariate</B> data set. Our model
is that all these numbers are basically like IID observations
from the same distribution with PDF:
<D>
f(x) = [[ab]] (*([[xb]])*)^{a-1} \exp[*[ (*([[xb]])*)^a
]*],\text{ for } x>0.
</D> 
Here <M>a,b>0</M> are two parameters. This is called
the <B>Weibull distribution</B>. Our model says that if we make a
histogram of the runs, then the shape will match <M>f(x)</M>
for <I>some suitably chosen</I> values of <M>a</M> and <M>b.</M>
"Choosing the values suitably" to match the behaviour of the data
is called <B>estimation</B>. We shall learn about estimation
procedures later.
<P/>
We start by loading the data into R:
<R>
x = read.table('run.txt',head=T)
</R>
The file <LINK to="run.txt">run.txt</LINK> has the heading "Runs"
 in the first line. That is why we wrote <CODE>head=T</CODE>
 (abbreviation of <CODE>header=TRUE</CODE>). The file must reside
 in the <I>working directory</I> of R. If you are not sure check
 the current working directory using the <CODE>getwd()</CODE>
 function. You may change the working directory using
 <CODE>setwd('path to your desired directory')</CODE>. 

<P/>
The output of <CODE>read.table</CODE> is always a <I>data
frame</I>, i.e., a matrix-like rectangular object, where the rows
are the cases, and the columns are the variables. It is good idea
to chec its dimensions (i.e., numbers of rows and columns):
<R>
dim(x)
</R>
<O>
[1] 819   1
</O>
We have 819 rows and a single column. 
<P/>
Next we try to make a histogram of the data. There are a couple
of snags here. First, R distinguishes between a matrix with one
column and a vector. We need to extract the first column as a vector:
<R>
runs = x[,1] 
</R>
If <M>A</M> is a matrix, then its <M>(i,j)</M>-th entry is
 denoted by <CODE>A[i,j]</CODE> in R. The indices start from 1,
 as in mathematics. We write <CODE>A[,j]</CODE> to mean the
 entire <M>j</M>-th column, and <CODE>A[i,]</CODE> to denote the
 entire <M>i</M>-th row.
<R>
hist(runs,prob=T)
</R>
<O>
Error in hist.default(runs, prob = T) : 'x' must be numeric
</O>  
This error message shows up because
our data set contains some non-numeric values: DNB (Did Not Bat)
and TDNB (Team Did Not Bat). We need to remove these cases from
the data set before we can make a histogram. This is an example
of <B>data cleaning</B>. For this we first force all the values
to numeric:
<R>
runs2 = as.numeric(runs)
</R>
R would complain that some <CODE>NA</CODE>s have been
introduced. <CODE>NA</CODE> means "Not Available", which is
R`s way of denoting a missing value. We need to remove these:
<R>
bad = is.na(runs2)
</R> 
The function <CODE>is.na</CODE> checks if its input
is <CODE>NA</CODE> or not. Here <CODE>bad</CODE> is an array
of <CODE>TRUE</CODE>s and <CODE>FALSE</CODE>s. We keep only those
values of <CODE>runs2</CODE> where <CODE>bad</CODE>
is <CODE>FALSE</CODE>:
<R>
runs3 = runs2[!bad]   # The ! means "not"
</R>
Finally we can create a histogram:
<R>
hist(runs3,prob=T)
</R>
<P/>
The histogram looks like this:
<CIMG web="runhist1.png"></CIMG>

Next we need to estimate <M>a</M> and <M>b.</M> We use an R
package called <CODE>MASS</CODE> (already present in R by
default), which has a function
called <CODE>fitdistr</CODE> that estimates parameters:
<R>
library(MASS)
fitdistr(runs,"weibull")
</R>
<O>
Error in fitdistr(runs, "weibull") : Weibull values must be > 0
</O>
Yaaack! Well, let`s keep R happy by adding a little offset, say
1.
<R>
fitdistr(runs+1,"weibull")
</R>
<O>
      shape         scale   
   0.93339008   43.48820468 
 ( 0.02645608) ( 1.74751617)
</O>
Thus the best value of shape (<M>a</M>) is 0.93, and the best
 value for scale (<M>b</M>) is 43.49. Don`t get carried away by
 the apparent high precision of the output. The fit hardly
 changes if you modify the parameters only slightly. Ignore the
 numbers in the parentheses for the moment. 
<P/>
Let us overlay the best fitting Weibull density   
 on the histogram to see if the best fit is indeed a good fit or not:
<R>
curve(dweibull(x,shape= 0.93, scale= 43.49), col='red', lwd=3, add=T)
</R>
The result is:
<CIMG web="runhist2.png"></CIMG>
Indeed, it is a good fit. It is surprising that for any
international standard cricketer the run data has a Weibull shape
(the parameter values may differ)! One potential use of this
model is to relate the estimated parameter values  to innate
characteristics of the cricketers, just like probability of head
for a coin toss. It is a feature that is readily apparent unless
we look through the instriment of statistical regularity.

<P/>
I am not aware of any attempt to relate the parameters in this
example with characteristics of the cricketers. But the next
model is used for that purpose.



<HEAD3>Model 2: Probit</HEAD3>
D.J. Finney was a toxicologist interested in finding the
strengths of different poisons. A naive way to measure the
strength of a poison is by determining its lethal dose, i.e.,
the minimum dose needed to kill. Problem is that this dose depends
not only upon the posion, but also on what you are trying to
kill. Finney experimented with mice. So he chose mice as
controlled as possible (w.r.t. age, breed, gender etc). But even
then the lethal dose might vary randomly from mouse to mouse. 

<P/>
So Finney went for a statistical model. He postulated a normal
model <M>N(\mu,\sigma^2)</M> for
the lethal dose of our poison for a random
mouse. Unlike the run data example, here the parameters have
clear interpretation. Then <M>\mu</M> measures the strength of the poison, while
<M>\sigma^2 </M> gives an idea about how unreliable the poison
is. Indeed, Finney called <M>[[\mu \sigma]]</M>
the <I>toxicity</I> and <M>[[1 \sigma]]</M>
the <I>reliability</I> of the poison. 

<P/>
You might expect that the next step would be to collect data,
i.e., pick a random mouse, and start applying the poison bit by
bit, and recording the dose when the mouse first succumbs to
death. Unfortunately, we cannot carry out this experment in
practice, because death is not an easily detected phenomenon.
<P/>
So, instead, Finney applied the same dose to many mice (say 100),
and counted the number of deaths
(say <M>k</M>). Then <M>k/100</M> should be close to the
probability <M>P(X \leq d).</M> He did this with different
doses, resulting in a data set like the following (assuming 10 different doses).

<CENTER><TABLE>
<TR><TH>Dose (<M>d</M>)</TH><TH>Batch size (<M>n</M>)</TH><TH>Number dead (<M>X</M>)</TH></TR>
<TR><TD><M>d_1</M></TD><TD><M>n_1</M></TD><TD>X_1</TD></TR>
<TR><TD><M>d_2</M></TD><TD><M>n_2</M></TD><TD>X_2</TD></TR>
<TR><TD><M>d_3</M></TD><TD><M>n_3</M></TD><TD>X_3</TD></TR>
<TR><TD><M>\vdots</M></TD><TD><M>\vdots</M></TD><TD><M>\vdots</M></TD></TR>
<TR><TD><M>d_10</M></TD><TD><M>n_10</M></TD><TD>X_10</TD></TR>
</TABLE>
</CENTER>
Finney plotted the <M>[[X_i][n_i]]</M> values against the
doses <M>d_i</M> values. He got a plot like this: 
<CIMG web="probit1.png"></CIMG>
<COMMENT>
set.seed(3333125)
n = rep(100,7)
d = 12:18
x = numeric(7)
p = numeric(7)
for(i in 1:7) {
  x[i] = rbinom(1, n[i], pnorm(d[i],15, 1))
  p[i] = x[i]/n[i]
}
png('image/probit1.png')
plot(d,x,pch=20)
dev.off()
png('image/probit2.png')
curve(dnorm(x),xlim=c(-4,4),xaxt='n',yaxt='n',ylab='',lwd=3,bty='n')
lines(c(-1,-1),c(0,dnorm(-1)))
abline(h=0)
dev.off()
png('image/probit3.png')
curve(pnorm(x),xlim=c(-3,3),xaxt='n',yaxt='n',ylab='F(x)',lwd=3,bty='n')
abline(h=0)
dev.off()
png('image/probit4.png')
plot(d,qnorm(p),pch=20)
dev.off()
</COMMENT> 
This set him up in hope, because this was supposed to be
approximately like the graph of the function <M>F(x)</M>, which
is the area under the <M>N(\mu,\sigma^2)</M> PDF to the left
of <M>x.</M>
<CIMG web="probit2lab.png"></CIMG>
He knew that the plot of <M>F(x)</M> (for any value
of <M>\mu </M> and <M>\sigma^2 </M>) looks like an S as follows:
<CIMG web="probit3.png"></CIMG>
Since the points obtained from his data also followed this
pattern, Finney was happy. The question was now to find suitable
values for <M>\mu</M> and <M>\sigma^2 </M> such that the S-curve
passes as closes as possible to the points. For this he used a
mathematical property of normal PDF. 

<P/>
Consider the function 
<D>
\Phi (x) = \int_{- \infty} ^ x [[1][\sqrt{\pi}]] e^{-t^2/2}\, dt.
</D>
This is clearly (?) a strictly increasing (and hence one-one),
continuous, onto function from <M>\rr</M> to <M>(0,1).</M> Now it
is easy (?) to see that 
<D>
F (x) = \int_{- \infty} ^ x [[1][\sqrt{\pi}\sigma]] e^{-[[1][2
\sigma^2]](t-\mu)^2}\, dt = \Phi (*([[x-\mu][\sigma]])*).
</D>
So Finney applied <M>\Phi ^{-1} </M> to both sides of the
approximate equality <M>F(d_i) = [[X_i][n_i]]</M> to get
<D>
[[d_i - \mu][\sigma]] = \Phi ^{-1}(*( [[X_i][n_i]] )*). 
</D>  
He called <M>\Phi ^{-1}( \cdot )</M> the <B>probit</B>
function. Finney now plotted <M>\Phi ^{-1}(*( [[X_i][n_i]]
)*)</M> against <M>d_i</M> to get a plot like this: 
<CIMG web="probit4.png"></CIMG>
He was relieved to find a linear pattern, which justified his
normality assumption. Now it was a simple matter to find the
slope and intercept of the line, and obtain the estimated
toxicity and reliability of the poison.
<P/>
The probit analysis is routinely performed on rabbits to test for
toxicity of chemicals used in eye cosmetics. Thousands of rabbits
turn blind every year due to this. Click on the image below to
know more about this.
<LINK
to="http://www.hsi.org/issues/becrueltyfree/facts/blinded_rabbits.html"><CIMG
web="rabbit.jpg">A rabbit blinded by such an experiment</CIMG></LINK>

<HEAD3>Model 3: Maxwell model</HEAD3>
See the <LINK to="sm1maxshow.pdf">slides</LINK> for the details.

</NOTE>@}
