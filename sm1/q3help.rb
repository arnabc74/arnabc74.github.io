@{<NOTE>

<HEAD1>Approximating something using simulation</HEAD1>
Often we want to determine some quantity related to a statistical
model. Since any statistical model involves some random
experiment, it may become hard to determine the quantity. Indeed,
probability theory is designed mainly to cope with this
problem. But even the most sophisticated probability theory often
proves inadequate to deal with even simple statistical
models. So we need an alternative
<P/>
Simulation is just that alternative, it is very general in its
applicability, pretty routine to apply (once you get the hang of
it). It provides only approximate answers, but then so does
probability theory (it approximates using limit).

<P/>
In this page we shall see some common strategies using
simulation.

<HEAD2>Finding standard error of something</HEAD2>
Suppose that you have some statistical model, and you have somehow come up with some
<B>statistic</B> based on them, i.e.
some known function of the data. It could be something as simple
as the mean of the data, or as complicated as the prediction to
tomorrow's rainfall based on past 10 years' data. The function
could be something mathematical, or a complicated program. But
the function is known, i.e., given the data you have some means
to compute it. Now you want to have an idea about the variability
of its values (since its input is random). 
 In this situation we compute
the <B>standard error</B> of the statistic: it is simply the
standard deviation of the statistic.

<P/>
The general R code skeleton to compute standard error is:
<R>
myStatistic = numeric(N)  #N is some large number, say 10000
for(i in 1:N) {
   ##generate the data using the model
   myStatistic[i] = #compute the value of the statistic for the data 
}
sd(myStatistic)
</R>

<HEAD2>Finding sampling distribution of something</HEAD2>
If you want a broader perspective, then you might like to
investigate the <B>sampling distribution</B> of your statistic,
i.e., the probability distribution of the statistic, istead of
just its standard error.
<P/>
The R skeleton remains the same, except that the last line is
changed to 
<R>
hist(myStatistic,prob=T)
</R>

<HEAD2>Finding probability of something</HEAD2>
If you want probability of some event (like the probability that
your statistic is less than 3.4), then you just simulate lots of
values of your statistic, and find the proportion of cases your
event has occured. If the event is "statistic is less than 3.4",
then simply replace the last line of our R skeleton with
<R>
mean(myStatistic < 3.4)
</R> 
Take some time to understand how this line works.

<HEAD2>Finding cut-off values</HEAD2>
Often you want to find cut-off thresholds for your statistic,
e.g., an upper bound that it crosses with 5\% probability. We may
find this using simulation   by first sorting the simulated
values of the statistic in ascending order, and then picking the
cut-off where the top 5\% values start. The R
function <CODE>quantile</CODE> does this for you:

<R>
quantile(myStatistic,0.95)
</R>
This finds a cut-off such that 95\% of the statistic values are below
it, and 5\% are above it. Now, you may easily guess that this
rather vague description has problems: what if we have no such
cut-off, more than one such cut-off? There are different ways to
solve this problem. If you look up the help of
the <CODE>quantile</CODE> function, you will find a input
called <CODE>type</CODE> that chooses the specific algorithm to
be used. However, if you do the simulation a large number of
times (i.e., after statistical regularity has set in), all the
methods give you essentially the same answer for the continuous
distribution. So you do not need to bother much about the exact
algorithm being used. Generally, we refrain from using
the <CODE>quantile</CODE>  function for the discrete case.
</NOTE>@}
