@{<NOTE>
<TITLE>Course: Basic 3: Statistical methods</TITLE>

<HEAD1>Module 1: Estimation</HEAD1>
<HEAD2>Module 1: Lesson 1: The concept</HEAD2>
<STKY><HEAD3>Module 1, Lesson 1, Video 1: The concept (population,
sample)</HEAD3></STKY>
<LESSON>
<SCRIPT id="m1/l1/v1">
<SESS t="1.30" done="n" id="s1">
The worls around us is full of unpredictable variations. Unpredictable, yet
the unpredictability has a pattern in it. Man has been studying this
pattern ever since his earliest existence. There are different ways to deal
with such patterned unpredictability, and statististics is one of them. In
this lesso e shall learn what sets statistics apart from the other
approaches. This diffeence is the key to appreciating statistical methods,
their strong points as well as their weak points. 

This key concept in a nutshell is this: Whatever data we collect is like a
cup of water from a vast ocean. The cup of water is all that we have to
base our inference on, but it is not the water in the cup that we want to
draw inference about. The  target of our inference is the entire ocean. The
statistical term for the cup of ater is a <B>sample</B>, the ocean being
called the <B>population</B>. 

Any serious statistical exercise starts with a precise and clear picture of
the population and the sample being used for that purpose. 
</SESS>
<JINGLE t="0.1">Population and sample</JINGLE>
<SESS t="3.90" done="n" id="s2">
We shall start with a simple example. The very term <B>population</B>
conjures up the vision of the totality of all the people living in a
country. While statistics uses the term in a broader sense, this
nevertheless remains a picture to keep in mind. 

Here is our toy example. Imagine  that we want to know the height of the
tallest person in our population, consisting of all the people living in a
large country. Of course, if we had a list of the heights of all the
members of the entire population, then it would have been just a matter of
looking up the maximum, something that a computer could have done easily
for us. But the point is that we do not have such a list to start with, nor
are we in a position to construct such a list now by measuring the heights
of all the people in the country. We just do not have enough resourses to
carry out such a gigantic task. What we can do however is draw a random
sample of individuals and measure their heights only. There is no guarantee
of course that this sample will contain the tallest person in the
population, and so that cannot exist any sure fire way to ind the maximum
height in the population by looking at just the heights in the sample. The
best that we can hope for is a reasonable guess. The precise statistican
term for obtaining  such a reasonable guess is <B>estimation</B>. 


Let's try to come up with a good estimation procedure. Suppose the heights
of the people in our sample are 5'2'', 5'5'', 5'0'', 5'9'', 5,5'' and
6'3''. 

Based on this somone estimates the maximum population to e 6'. Is this a
good estimate? No! Because even in our sample we have a person taller than
this! OK, let's revise our estimate to 6'3'' then, the maximum in our
sample. That is not as absurd as the last estimate, but still this assumes
that just by randomly selecting 5 persons out of an enormous population we
have managed to get one of the tallest guys in the entire country! Not
impossible, but not very probable either! So we should better allow some
margin above the sample maximum. Howe to choose the margin? Here are two ad
hoc suggestions: 

* One method could be to use the gap between the top two tallest persons in
the sample as the margin. Thus in our case it would be 6'3''-5'9'' =
6''. So we estimate the population maximum to be 6'3''+6'' = 6'9''.

* Another method could be to scale up the sample maximum by a factor 5/4,
which is sample size/(sample size-1).

These are, as I said, ad hoc suggesions, and one can come up with many such
suggestions. Just as our toy example, this scenario is indeed common to all
statistical methods. Instead of just blurting out a single number as our
estimate, we are instead trying to come up with a  rule or formula to
produce the estimate from the sample. Like "sample max" or "sample max +
gap between the tallest two guys in the sample" or "sample size/(sample
size-1) * sample max".

Such formulae are called <B>estimators</B>, as opposed to
an <B>estimate</B> which refers to the numerical value that the formula takes for a
given sample. The target quenatity that we are trying to estimate
is called a parameter. Indeed, any unknown quantity regarding the
underlying population is called a parameter, whether or not we
are tryin gto estimate it. 

Our aim was to find the population maximum. Had we possesed a complete list
of all the heights in the population, then this would have been a dumb
clerical exercise. No scope of creativty there. As uninteresting as a
detective story where you already know the ending. But since we do not have
such a master list available, we can propse and compare between different
estimators. Lots of scope for creativity here! 

So here is the take away message that you should never forget. The ultimate
aim of statistics is not to <B>look at data</B>, but <B>through data at
the underlying reality</B>. Sample corresponds to the data, population to
the underlying reality.
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 1, Lesson 1, Video 2: The concept (sampling distribution)</HEAD3></STKY>
<SCRIPT id="m1/l1/v2">
<SESS t="1.30" done="n" id="s1">
In the last video we looked at the simplest scenario of <B>sample</B> and
<B>population</B>. Indeed, what we discussed there is what most people would
anyway associate with these concepts. But statisticians use the terms
population and sample in a much more general sense. That's what we are
going to discuss next. 

In most branches of science, we need to make measurements. As everybody
connected with actual measuring processes know quite well,  if you measure
the same quantity repeatedly under as identical conditionas as you can manage,
still the measurements fluctuate to some extent. Stand still on a weighing
machine, note the readin on the instrument, get down, come back after five
minutes and weigh yourself again, and you might very well get a slightly different
measurement. It is hard to pin point the cause behind the variation. But
something imperciptible, something imponderable beyond our control has
changed somewhere. One cannot avoid noticing the uncanny resemblance of
this with a oin toss. The outcome is random. That is why in any scientific
measurement we are advised to measure  the same quantity multiple times.
</SESS>

<SESS t="0.80" done="n" id="s2">
Statisticians like to invoke the same population and sample analogy even in
this case. It may require some effort to visualise this at first, but it is
well wort getting used to. Think of each measurement as picking a random
sample from a population of all possible measurements. As if nature has in
her secret store all these slightly differing values.
That is the population of measurements. When you are
making 5 measurements, it is as if you are picking 5 of the stored
measurements and making them public. To distinguish this abstract usuage of
the term population, people sometimes call it an <B>infinite
population</B>. 
</SESS>

<SESS t="1.80" done="n" id="s3">
Admittedly this might look like a rather contrived way of looking at
things.  However, there is a theoetical justification behind this
approach. And it comes from the<B> statistical regularity.</B> We had
discussed this in our Basic Statistics course. But it boots repetition. 

In certain situations we see that lots of randomness piled together somehow
cancel each other out to a great extent and a more or less regular
behaviour emerges.  Well, this concept make s asomewhat unexpected
appearance in the context of measurements. Suppose that you measure the
same quantity again and again keeping the set up as unchanged as
possible. Thus you get lots of numbers. If you create a histogram of these
numbers, then you'll see that a particular shape emerges as you make more
and more measurements. The shape will depend on the quantity being measured
and the measurement procedure being followed. This fixed shape corroborates
the idea that there is something fixed sitting unseen beyond our immediate perception
and all our measurements re coming from that. The shape os the histogram is
basically a rough picture of that unseen master process. 

The more data we collect the better we get an ideaof that process. We could
have known it completely only we could collect an infinite amount of thed
ata. Hence the notion of an <B>infinite population</B>. We often use the
term <B>distrobution</B> to mean the same thing. Thus we talks about a
random sample from an inifinte population, and sometimes refer to the same
thing as a random sample from
a distribution. 
</SESS>
<SESS t="1.40" done="n" id="s1">
You shall often hear statements like <B>Let's consider a random sample
from so-n-so distribution.</B> It is important to understand what this
means. In this context, a <B>distribution</B>, or rather <B>probability
distribution</B> to be precise, refers to particular shape of the
histogram. The shape is often depicted as a curve for a continuous
variable, and a bar chart for a discrete one. Suppose that we have some
variable in a data set. There are as many values as there are cases. If we
make a histogram of all these values, then histogram will have that
particular shape. The shape need not be apparent if we have too few
cases. But as the number of cases grows the histogram will go closer and
closer to that shape. 

It is surprising how certain shapes are linked with certain types of
variables. Take for example cricket runs data. If we make a histogram of
runs data for different ODI matches for a cricketer the shape is
particularly like a curve of this form. It is sometimes difficult to come
up with a good explanation behind the shape, as in this case. 
</SESS>
</SCRIPT>
<STKY><HEAD3>Module 1, Lesson 1, Video 3: The concept (sampling distribution)</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="1.80" done="n" id="s1">
In the last video we have introduced the all important concept
that sets statistics apart from other approaches to analysing
data. Statistics, as I have already said, looks through data
instead of looking at data. We shall see an important consequence
of this concept now. 

In the Basic Statistics course as well as in our  school days we
have leaned about computing the mean of a bunch of numbers. You
do not need to be a statistician to do that. But the way a
statistician looks at the mean may not be how a layman considers
it. You are given a bunch of numbers. You crunch them with a
formula, and out pops the mean, which is
just another number situated more or less near the centre. From a
layman's perspective the story ends there. But for a statistician
will rarely stop at that. For a statistician it is a path leading
towards the mean of the unkniwn distribution lying beyond, that
unknwn population, that unknown truth which has given birth to
the data.  The observed sample from the statistician's
perspective, is just one possible sample that has turned up
randomly. Any conclusion based on that also suffers from the same
randomness. It is the underlying distribution that is the
unwavering truth worth seeking. When you hear this for the irst
time it might not make much sense, besides sounding a bit
theatrical. But the germ of this idea is already there in our
everyday lives, as the next thought experiment will show now.
</SESS>
<JINGLE t="0.1">A little thought experiment</JINGLE>
<SESS t="2.00" done="n" id="s2">
Suppose that you are comparing between two fertilisers for a
certain variety of crop. The aim is to see which variety produces
the greater yield. For this purpose two plots are chosen as
identical as possible. The same variety of crop is sown in both
and a yield is measured at the harvest. The yields turn out to be
234 bushels and 235 bushels. Here 235 > 234. There can't be any
doubt about that. But is this evidence enough to clearly conclude
that the fertiliser used in the second plot is te better of the
two? No, because the margin is so low here. Just a single bushel,
a single bushel out of over 230 bushels. One might say that such
a small difference could very wll have resulted from pure chance
variations. That's commonsense. Well, let's understand this
little piece of commonsense. No, we are not saying that 235 is
not greater than 234, but the idea is that if we repeat the
entire experiment all over again but using the same fertiliser
for both the plots, even then some minor difference between the
two yields was quite likely, say a bushel or two this way or
that. That is kind of the inevitable error margin. One fertiliser
can be called better than another in terms of yield only when
it produces a yeiled difference significantly larger than this
margin. Thus you see our common sense has this idea built into
it: If we repeated the same experiment
repeatedly, some fluctuation is inevitable, and our conclusion
about the underlying truth must not get caught in this
fluctuation.

Statistics formalises this notion into what is called the
sampling distributon. That's what we shall discuss in the next video.

</SESS>
</SCRIPT>


<STKY><HEAD3>Module 1, Lesson 1, Video 4: The concept (sampling distribution)</HEAD3></STKY>
<SCRIPT id="m1/l1/v4">
<SESS t="1.20" done="n" id="s1">
The last video introduced the very important concept of sampling
distribution. Here we shall learn some more details about
it. Having a clear idea about sampling distributions is the key
to understanding the working of most statisticial procedures.


We shall start with an example that we have already used:
estimating the maximum height of people in a vast population. We
shall compare between two contending procedures. In both cases
we shall start by drawing a sample of size 10
randomly from our population. The procedures differ in the
estimators used. The first procedure will use just the sample
maximum, while the second procedure will multiply the sample max
by the 10/9, which is the ratio sample size/(sample size-1).

One a partocular sample of size 10 is drawn, these two estimators
will yield two numbers or estimates. Of course, just by staring at
those two numbers, we can never decide which one is
better. That's where sampling distributions comes to our
help.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="5" done="n">
Show population of size 10000. Show true max. Draw sample. Find
estimates. Mention repeating this 1000 times. Show the results
already in a different sheet. show histograms already made. Compare.
</SC>
</SCRIPT>

<STKY><HEAD3>Module 1, Lesson 1, Video 5: The concept (sampling distribution)</HEAD3></STKY>
<SCRIPT id="m1/l1/v5">
<SESS t="2.10" done="n" id="s1">
We have learned quite a few terms. A parameter is any unknown
quantity related to the underlying the distribution. It is a fixed
quantity, part of the ultimate truth. To estimate it we need an
estimator, which is a formula. It is like a machine that takes a
sample in and produces a number out. In general any such formula
is called a statistic. It is a singular noun, so 's' at the
end. An estimator is a just a special statistic that is being
used for the purpose of estimation. Every statistic has its own
sampling distribution, its behaviour when different random ample
fom the ame population are fed into it. 

This is basically what we showd in the last lab session. We
played god. We generated many random samples, evaluated the
statistic for them and made a histogram to provide a visual
representation of the sampling distribution. 

While a visual representation is a good thing to have, we can use
the techniques like mean and standard deviation to describe the
sampling distribution quantatively. The mean of the sampling
distribution is the value around which the values of the
statistic are expected to hover. So if the statistic is an
estimator, then the diffrence between this mean and the true
value of the parameter is a useful thing to have. This is called
the bias: mean value of estimator - parameter. Of course, you may
not be able to compute this since the parameter value is
unknown. But sometimes you can! We shall take this issue up in
the next lesson. 

Then you can also consider the standard deviation of the sampling
distribution. That has a special name here: the standard error of
the statistic. Unlike bias, which makes sense only for
estimators, standard error is meaningful for any statistic. 
</SESS>
</SCRIPT>
<EXRLIST id="M1L1">
<EXR>Two statisticians have drawn two random samples from the
population of all households in a village. Data have been
collected about monthly expenditure of each sampled household. Can the sample means
be different? Can the poplation means be different?</EXR>

<EXR>If we collect two samples of sizes 10 and 50, and compute
the sample mean, then which will have the higher
dispersion?</EXR>

<EXR>All the values in a population are known to be more or less
the same. Then would you go for a large sample or a small one?</EXR>

<EXR>Suppose that we want to estimate the maximum income of a
population. Can the sample maximum be more than the population
maximum?</EXR>

<EXR>Same question about mean.</EXR>
</EXRLIST>
</LESSON>

<HEAD2>Module 1: Lesson 2: Estimating mean</HEAD2>
<LESSON>
<STKY><HEAD3>Module 1, Lesson 2, Video 1: Estimating mean</HEAD3></STKY>
<SCRIPT id="m1/l2/v1">
<SESS t="1.10" done="n" id="s1">
In this and the following lessons in this module we shall see
special cases of what we have already learned in the firs
lesson. In each lesson we shall take up a different parameter and
learn about estimating it.


In this lesson the parameter to be estimated is the mean. Here is
the mental picture to remember. There is an underlying
distrbution (the unknown, unwavering truth). It's best to think
as the shape of a histogram. This has a mean, a fixed number,
which is also unknown. It is this unknown number that we are
trying to estimate. Our parameter of interest. All that we have
is a random sample from this distribution, i.e., a bunch of
numbers whose histogram roughly resembles this shape (the
resemblance improves as the sample size increases). Our job is to
obtain a good estimator in terms of this random sample.
</SESS>
<JINGLE t="0.1">A simple solution</JINGLE>
<SESS t="0.50" done="n" id="s2">
Here is a simple solution. If the sample histogram closely
resembles the population histogram, and our aim is to estimate
the centre of the population, then why not use the centre of the
sample histogram for that purpose. In other words, just use the
sample mean to estimate the population mean. Other alternative
estimators are possible. But this is the simplest and the most
popular one. The alternatives may be better for certain special
types of underlying distributions. We shall discuss them
later. But first we should see the sample mean in action. 
<P/>
But didn't we learn about computing mean of a bunch of a numbers
already in the Basic Statistics course? Is there anything new in
it now? Well, there is. In that course we looked at data, but now
we mean to look through it. So in the next vide we shall explore
the smapling distributions of sample mean. 
</SESS>
</SCRIPT>
<STKY><HEAD3>Module 1, Lesson 2, Video 2: Lab</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SC t="6" done="n" id="s1">
Normal data already present. Draw a Sample. Find mean. Show lots
of means and histogram already in different sheets. Mention how
adding a constant to population shifts the sample mean.
</SC>
</SCRIPT>

<STKY><HEAD3>Module 1, Lesson 2, Video 3: Sampling distributions of mean</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="2.00" done="n" id="s1">
The lab session in the last video gave us some idea abou the
sampling distribution of the sample mean. A more quantative idea may
be had using its bias and standard error. Recall that the bias of
an estimator is the mean of the estimator - parameter. In
general, this may not be computable, since the parameter is
unknown. But in certain special cases te bais may be computed
indirecly via mathematical reasoning even without knowing the
value of the parameter. The case at hand is just such a
example. Here we can compute the bias, and it just turns out to
be zero! So we call sample mean an unbiased estimator of the
population mean. Understand this term unbiased. It means the
the sample mean always tracks the population mean. If the
population mean increases so does the sample mean, if the
population mean decreases, so does the sample mean. It is like a
gun connected with an automatic aiming mechanism. That is why the
bias is always zero, irrespective of the unknown value of the
parameter.

Next let's turn to the standard error. This is the standard
deviation of the sampling distribution of the sample
mean. Continuing with the analogy of the tracking gun with
automated aiming mechanism, this measures how shaky the gun
is. On an average the gun is shooting at the correct target, but
may miss it because of shakiness. Higher the standard error, the
shakier is the gun. As may
be expected this is closely connected with the standard deviation
of the underlying distribution. If the population standard
deviation is less so should be the standard error of sample
mean. Also another thing should be intuitively obvious: the
larger the sample size the better we can guess the underlying
distribution. So the standard error should decrease with
increasing sample size. In fact, we can show that the standard
error is 
<D>
[[\sigma][\sqrt n]],
</D>
where <M>\sigma </M> is the population standard deviation,
and <M>n</M> is the sample size.

Notice the square root in the denominator. The <M>n</M> in the
denominator shows that a larger
sample means more precise estiator. That is commonsense. But
the square root means that to double the precision you need to
take 4 times sample. This is not very intuitive. 
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 1, Lesson 2, Video 4: Alternatives</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="2.80" done="n" id="s1">
We have seen sample mean as an estimator of population mean. It
is an intuitive natural choice, no doubt. But is it a good
estimator? Is it the best estimator according to some objective
criterion? Or can we do something better? 

Well, a precise answer will need some way to quantify
``goodness'' of an estimator. For one thing, we have bias as a criterion. And we
have seen that sample mean is unbiased for population
mean. That's obviously the best that you can get in terms of
bias. Our gun is pointed in the right direction all the time.

Now for the standard error, how shaky the gun is. Lower the
standard error, the better. The standard error
is <M>[[\sigma][\sqrt n]].</M> Is it possible to have some other
unbiased estimator which has less standard error?


Well, it may be shown that if the underlying distribution is well
behaved, then the answer is No. Sample mean is indeed the
best. But what is meant by ``well-behaved''? The simplest way to
understand this is to look at a distribution that is not
well-behaved. 

A distribution, as we have mentioned earlier, is basically the
shape of a histogram. Consider the shape [spike]. It is a nice
bell shape, but contaminated by a little spike out
there. Visualise this like this: the population consists of lots
of values that form this bell shaped part, say 10000 points to
fix ideas. But there is just one point with a very high value. 

Now because it is just one bad point as opposed to 10000 good
points, the population mean is hardly affected by it. But imagine
what may happen when you draw a random sample of size, say, 10
from it. With a high probability all the 10 points wil come from
the nice points. In that case there is nothing to worry
about. But there is some chance that that the high value will be
included among the 10 selected points. Now you have one extremely
high value and just 9 good values to counter it. So the sample
mean will be heavily affected by this high value, and will get
pulled away from the population mean. And that is bad.

However, we could have avoided this, had we used sample median or
sample trimmed mean to estimate the population mean, because they
are more robust, and would not be influenced by just one outlier.

</SESS>
<JINGLE t="0.1">Mean or not</JINGLE>
<SESS t="1.80" done="n" id="s2">
We said that sample mean is the best estimator for the population
mean for well behaved distributions, while more robust measures
of sample central tendency are prefered for some less nicely
behaved distributions. Now the underlying distribution is unknown
to the statistician. Then how should we make the choice then?

There are two solutions to this dilemma. 

* Even if we do not know the shape of the distrbutuon, we are
often aware of the possibility of outliers. This is especially
true about measurements made in a noisy environment. In such a
situation, we should be on our guard, and use sample median or
sample trimmed mean to estimate the population mean.

* Also we can form an idea about the population distrbutuon, by
looking at the sample histogram. If the sample histogram has far
flung tails, then again sample median or sample trimmed mean
should be preferred.  

Notice the subtle diffeence here: If I give you a sample and ask
to compute the mean, it is just simply a matter of adding the
numbers and dividing by the number of points. But if I ask you to
estimate the mean, then I am asking you to estimate the
population mean. A good procedure then is much more involved,
making a histogram, forming an idea about the shape of the
underlying distrbutuon and guessing about the presence of
outliers, then choosing an appropriate estimator and finally
computing it. 

This might look like an overkill, but that is the spirit of any
statistical analysis of data. 
<TODO>CLT</TODO>
</SESS>
</SCRIPT>

<EXRLIST id="M1L2">
<EXR>Generate random sample. Compute mean repeatedly.</EXR>

<EXR>Explore standard error.</EXR>

<EXR>Explore bias.</EXR>

<EXR>Estimate mean using trimmed mean.</EXR>

<EXR>Estimate mean using median.</EXR>
</EXRLIST>
</LESSON>

<HEAD2>Module 1: Lesson 3: Estimating proportions</HEAD2>
<LESSON>
<STKY><HEAD3>Module 1, Lesson 3, Video 1: Estimating proportions</HEAD3></STKY>
<SCRIPT id="m1/l2/v1">
<SESS t="2.00" done="n" id="s1">
In the fiest lesson of this week we had learned about the concept
of estimation. We are now learning how to apply this concept to
various parameters of interest. In the last lesson we worked
with the population mean, and learned various ways to estimate
it. In this lesson we shall estimate populatin proportion. 

First let's understand the importance of the problem with a rea
life example. Suppose that an election is imminent in an
country. There are two major contending parties. Each striving
its best to win the election. What will they not give to know the
result of the election beforehand. If only they knew where their
support base is weaker, they would be able to focus more effort
in those regions. In abstract terms this is the problem of
estimating a proprtion, the proportion of the people who would
vote for a party. 

As yet another application, consider this a casino. They use
various gambling devices, slot machines roullette wheels
etc. They need to be very clearly tuned in order to rake money
for the house. For instance, if a roullette wheel is slightly
tilted resulting in certain numbers showing up more often and the
gamblers get a hint of the that, then that means ruin for the
house. So casino owner has to keep an eye on the unbiasedness of
his devices. How can he do that?  Let's consider the simplest
gambling device. Given a coin how do you find its probability of
showing head. Unlike the radius, thickness or mass of the coin,
its probability of head is not a directly observable feature. 

That's where estimation of a population proportion becomes important.
</SESS>
<JINGLE t="0.1">A simple solution</JINGLE>
<SESS t="2.20" done="n" id="s2">
How would you estimate the probability of head of a coin? What is
the commonsense method? Just toss the coin a large number of
times and find the proportion of times you get head. Say I toss
the coin 1000 times, and find 465 heads. Then I estimate the
probability of head as <M>[[465][1000]=0.465.</M> Of course,
what you get in this way is the sample proportion. But if the
sample is large enough, then it should be cose to the population
proportion, thanks to statistical regularity.
 How large is large enough? We shall take up this
important question in a later video, when we talk at length about
the sampling distribution of the sample proportion. 

Similarly for the election problem we can draw a sample of voters
and try to determine their political leanings. Then find the
proprtion based on the sampled voters.  

There is another equivalent way of looking at estimating
population proportion that may be understood using this voter
example. Associate a number 0 or 1 with each voter in the
population according as the voter is against or for the party in
question. This creates a new variable. Notice that the population
mean of this variable is precisely the proportion we are trying
to estimate. Thus estimation of population proportion is just a
special case of estimation of population mean. So we may use
sample mean of this variable as before. It is easy to see that
this sample mean is just the sample proportion. 

The advantage of this line of thought, considering proprtion as a
special case of mean, may not be readily apparent. The main
advantage is that we sample proportion inherits all the
properties of the sample mean. This will make our life easier
when we shall try to work with the sampling distribution of
sample proportion.

But first let's look at a little practical exercise first.
</SESS>
</SCRIPT>
<STKY><HEAD3>Module 1, Lesson 3, Video 2: Lab</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SC t="6" done="n" id="s1">
Normal data already present. Draw a Sample. Find mean after ifelse. Show lots
of proportions and histogram already in different sheets. 
</SC>
</SCRIPT>

<STKY><HEAD3>Module 1, Lesson 3, Video 2: Lab</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="2.10" done="n" id="s1">
The lab session in the last video gave us some idea abou the
sampling distribution of the sample proprtion. As in the case
sample mean, a more quantative idea may
be had using its bias and standard error. We know  that the bias of
an estimator is the mean of the estimator - parameter. In
general, this may not be computable, since the parameter is
unknown. But in certain special cases te bais may be computed
indirecly via mathematical reasoning even without knowing the
value of the parameter. This was the case for sample mean, and
this is also going to the case with sample proprtion. And that is
hardly unexpected because as we have already mentioned proportion
is a special case of mean, it is the mean of a 0-1 veriable. 

Sample mean was unbiased for population mean. So here sample
proprtion is unbiaed for population proportion. Thus, while the
sample mean is not guaranteed to equal the population proportion
but it is likely to hover centred around the true value.


Next let's turn to the standard error. This is the standard
deviation of the sampling distribution of the sample
mean. Again we shall invoke the corresponding result for sample
mean. There the standard error was 
<D>
[[\sigma][\sqrt n]],
</D>
where <M>\sigma </M> is the population standard deviation,
and <M>n</M> is the sample size. Now our variable takes only the
values 0 and 1. So <M>\sigma</M> may be simplified further. Let
the population proportin be <M>\theta.</M> Then <M>\sigma </M> is 
<D>
\frac1n\sum x_i^2-(\bar x)^2 = \theta - \theta^2 = \theta(1-\theta).
</D>
Becuase <M>x_i^2 = x_i</M> since <M>x_i</M> is either 0 or
1. Thus the standard error is 
<D>
[[\theta(1-\theta)][\sqrt n]].
</D>
</SESS>
</SCRIPT>


<STKY><HEAD3>Module 1, Lesson 3, Video 2: Lab</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="2.60" done="n" id="s1">
In case of estimating population  mean we saw  that there were
situations where sample mean was not the best solution. The
problem was with outliers and lack of robustness of sample
mean. While sample proportion is a special case of sample mean,
we do not have to worry about outliers here, because here our
variable takes ony the value 0 and 1 by design. So no question of
extreme values creeping in. However, there is a problem from a
different direction, as we are about to discuss. 

We had been pretty close to this problem when we talked about the
election scenario. There our suggestion was to sample some voters
and find out their political leanings. Now a voter is entitled to
privacy. He/she may not agree to reveal his/her political
leaning. Even worse, a voter may simply lie. This poses a
different problem. A similar problem occurs in a rather different
context. 

Suppose we have a multiple choice question with 4 options
exactly one of which is known to be correct. We want to estimate
the proportion of students who know the correct answer. If we
simply take a sample of students, ask the question, and find the
proprtion of correct answers, then that won't be a good estimator
[qn: biased up or down?] as a student may have answered correctly
by chance. 

So here we need to model the students thinking. Either a student
knows the answer or not. In the first case, she answers
correctly, but in the second case she makes a guess, say a random
guess. So even then she has <M>[[14]]</M> chance of getting the
correct answer. Let the true probability of her knowing the
correct answer be <M>\theta.</M> Then the probability of her
giving the correct answer is <M>\theta + (1-\theta)/4.</M> It is
this thing that is estimated well by the sample
proportion, <M>p</M> say. So we may say 
<D>
\theta + [[14]](1-\theta) \approx p,
</D>
hence <M>\theta\approx [[4p-1][3]].</M>
This is not entirely intuitive. An even more counter intuitive
application of this idea is used to estimate population
proportion of sensitive issues like political leanings. The
method is called randomised response.
</SESS>
<JINGLE t="0.1">Randomised response</JINGLE>
<SESS t="1.80" done="n" id="s2">
Randomised response refers to situations where the respondent may
add a layer of extra randomness to hide the truth. The student
guessing in an MCQ was one example where the randomisation was
unplanned. Here is a planned version of the same. Again consider
the election scenario with two contending parties. We pick a
random sample of voters and ask them: "Will you vote for party
A?" But in order to protect their privacy you also hand them a
fair die, ask them to roll it in private, answer truthfully if
the die shows 6, and lie if the die shows something else. Thus,
let's say I am a voter favouring party A. I roll my die, get a 5,
so I answer "No". My friend is against party A, she gets a 6, and
she also answers "No". 

Here the mechanism is like this: A voter is either for or against
party A, with probabilities <M>\theta</M> and <M>(1-\theta),</M>
respectively. Then die may show a 6 or not,
probabilities <M>[[16]]</M> and <M>[[56]].</M> Accordingly there
are two ways one may answer "Yes". The total probability is 
<D>
\theta \times [[16]] + (1-\theta)\times [[56]].
</D>
This is estimated by the ample proportion of "yes". If this
proportion is <M>p,</M> then 
<D>
\theta \times [[16]] + (1-\theta)\times [[56]]\approx p.
</D>
So <M>\theta \approx [[5-6 p][4]].</M>

This is called Warner's method. There are different variations of
the same idea in use.
</SESS>
</SCRIPT>
<EXRLIST id="M1L3">
<EXR>Estimate by drawing a random sample.</EXR>

<EXR>Line diagram that converges.</EXR>

<EXR>Explore standard error.</EXR>

<EXR>Explore bias.</EXR>

<EXR>Combining two estimates from samples of different sizes.</EXR>
</EXRLIST>
</LESSON>

<HEAD2>Module 1: Lesson 4: Estimating dispersion</HEAD2>
<LESSON>

<STKY><HEAD3>Module 1, Lesson 4, Video 1: Estimating dispersion</HEAD3></STKY>

<SCRIPT id="m/l/v">
<SESS t="1.60" done="n" id="s1">
We are continuing with our plan of estimating various parameters
following the idea presented in the very first lesson of this
module. We have already learned how t oestimate population mean,
and population proortion. In this lesson we shall attack
population variance and population standard deviation.

The need for this estimation could be felt even when we learned
to estimate population mean using sample mean. There the standard
error was <M>[[\sigma][\sqrt n]].</M> This quantitiy was supposed
to give us an idea about the precision of our estimator. But how
can it be useful, because it involves <M>\sigma,</M> which is
unknown. So we need to estimate <M>\sigma</M> or
equivalently <M>\sigma^2.</M> 

Throughout this lesson keep this picture at the back of your mind.
There is an underlying
distrbution (the unknown truth). It's best to think
as the shape of a histogram. The spread of this histogram is what
we have in mind. A population with low  scatter is often easier to
work with, as all the memners are more or less similar. A
population with wide scatter requires much more effort to
explore. 

So even before we embartk upon a detailed exploration of the
population, we need to estimate its variance to get an idea of
how much work lies ahead.
</SESS>
<JINGLE t="0.1">A simple solution</JINGLE>
<SESS t="1.30" done="n" id="s2">
We already know a simple solution from our experience so far with
estimating population mean and proportion. Just use the sample
analog. By the way, this idea of estimating a population
parameter by using corresponding sample quantity has a name. It
is called the plugin principle. It is justified on the ground
that the sample histogram closely resembles the population
histogram. Here this principle suggests
using sample variance as an estimator of population
variance, and sample standard deviation as an estimator of
population standard deviation. 

By the way, we had noticed earlier in the Basic Statistics course
that there are two alternative definitions of sample variance
(and hence of sample standard deviation). One is 
<D>
[[1n]]\sum (x_i-\bar x)^2
</D>
and the other is 
<D>
[[1][n-1]]\sum (x_i-\bar x)^2.
</D>
LibreOffice, as well as most other standard statistical software,
uses the second formula. Earlier we had glossed over this point
in our basic Statistics course. But here we shall give a better
exposition. 

But first it is time to go to the lab.
</SESS>
</SCRIPT>
<STKY><HEAD3>Module 1, Lesson 4, Video 2: Lab</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SC t="6" done="n" id="s1">
Normal data already present. Draw a Sample. Find variance. Show lots
of means and histogram already in different sheets. Mention how
adding a constant to population shifts leaves the result unaffected.
</SC>
</SCRIPT>

<STKY><HEAD3>Module 1, Lesson 4, Video 3: Sampling distributions</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="1.90" done="n" id="s1">
The lab session in the last video gave us some idea about the
sampling distribution of the sample mean. A more quantative idea may
be had using its bias and standard error. The bias of
an estimator is the mean of the estimator - parameter. In
general, this may not be computable, since the parameter is
unknown. But in case of the mean as well as proportion it
turned out to zero. So there the estimators were unbiased. But
the situation somewhat different for sample variance. For one
thing the estimator 
<D>
[[1n]]\sum (x_i-\bar x)^2
</D>
is not unbiased. So we really cannot compute the bias as a
number, only as a formula involving the unknown parameter.
The expected value of this
estimator is 
<D>
[[n-1][n]]\times \sigma^2.
</D>
So the bias is <M>-[[1n]] \sigma^2.</M> [IVQ: over-est or
under-est?]

Notice that the expected value is a known multipe
of <M>\sigma^2.</M> So we may just divide by this known constant
to make the expected value exactly equal to <M>\sigma^2.</M> When
we do this we arrive at
<D>
[[n][n-1]]\times [[1n]]\sum (x_i-\bar x)^2 = [[1][n-1]]\sum (x_i-\bar x)^2.
</D>
So now you know where that alternative estimator came from.

Next we should turn to the standard error. Unfortunately, the
formula is rather complicated. So we shall not torture ourselves
with that formula here. However, as we may guess, the standard
error will go down as the sample size increases.

</SESS>
</SCRIPT>

<STKY><HEAD3>Module 1, Lesson 4, Video 4: Alternatives</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="1.90" done="n" id="s1">
Sample variance (whether with an <M>n</M> or a <M>n-1</M> in the
denominator) is a natural estimator of population variance.
But it suffers from lack of robustness.

Suppose that there is a little spike in our underlying distribution. 
A distribution, as we have mentioned earlier, is basically the
shape of a histogram. By a spike I mean a little contaminating
value, an extreme value that just does not fit with the rest of
the values.

Now because it is just one bad point as opposed to many many good
points, the population variance is not influenced much by it. But imagine
what may happen when you draw a random sample of much smaller
size. If that spike somehow gets into your sample it might wreak
havoc. Because there are only a handfull good values to counter
it. As a result the sample variance will move far from the
population value. 

So we need something more robust. Something that does not care
much about extreme points. MAD is one good option. However, it is
rather difficult to compute its bias. Similar is the case with
interquartile range. Difficulty in computing a simple sampling
distribution makes them less applealing alternatives. But if you
are just trying to get an idea of the population dispersion
without caring about exact mathematical expressions, then MAD and
IQR are great choices. 

Typically you should first form an opinion about how much likely
outliers are. If that chance is low, go for sample variance. But
MAD and IQR should be prefered for noisy data with outliers.
</SESS>
</SCRIPT>


<EXRLIST id="M1L4">
<EXR>Estimate by drawing a random sample.</EXR>

<EXR>Explore standard error.</EXR>

<EXR>Explore bias.</EXR>

<EXR>Combining two estimates from samples of different sizes.</EXR>

<EXR>Estimating using range and semi IQR</EXR>

<EXR>Compare standard errors of different techniqes.</EXR>
</EXRLIST>
</LESSON>

<HEAD2>Module 1: Lesson 5: Review</HEAD2>
<LESSON>
<STKY><HEAD3>Module 1, Lesson 5 , Video 1: Review</HEAD3></STKY>
<STKY><HEAD3>Module 1, Lesson 5 , Video 2: Review</HEAD3></STKY>
</LESSON>

<HEAD1>Module 2: Test of hypotheses</HEAD1>

<HEAD2>Module 2: Lesson 1: Concept of test</HEAD2>
<STKY><HEAD3>Module 2, Lesson 1, Video 1: The concept of test (sound of water)</HEAD3></STKY>
<LESSON>
<SCRIPT id="m2/l1/v1">
<SESS t="1.50" done="n" id="s1">
In this module we shall learn about test of statistical
hypotheses. What is that? You may ask. Well, it's a long story
with many details that scare away beginners. We shall go into
those details later. For now let's start with a simple
non-mathematical example. 

Here I have a sealed container, and I want to know if it is half
filled with water. How do I ascertain that? Remember: my aim is
not to ascertain the actual content of the container, but just to
provide a yes/no answer to the question: Is it half filled with
water?

Why not just open it and see? Well, it contained is sealed, and I
cannot open it. So guess work is my only option. 

Let's start by feeling  the weight. It's not empty. But it could
be water or wood or something else. Let's shake it, and listen to
the sound. It does not sound like water at all. It actually
sounds like...any way who cares! That it does not sound like
water is what I need to know. That's enough info for me to
conclude cannot be half filled with water.

Test of statistical hypotheses is just a formal way of carrying
out the same common sense procedure.
</SESS>
<JINGLE t="0.1">More formally</JINGLE>
<SESS t="3.10" done="n" id="s1">
The set up started with two possibilities: either the contained
is half full with water or not. In statistical parlance we call
these  two hypotheses. One of them is called the null hypothesis
the other is called the alternative hypothesis. We shall learn
later how to choose which one to call the null and which one to
call alternative. But to keep going let's say "half filled with
water" is our null hypothesis. We denote the null hypothesis by
the symbol <M>H_0</M> and the alternative on by <M>H_1</M>. The
two hypotheses must cover all possibilities, and must not
overlap. Thus, it should not be possible to have a situation
where neither hypothesis holds or both the hypotheses
hold. Deciding in favour of one of these hypotheses is called a
test of hypotheses. Opening the container and peeping inside
would have given the answer for sure, but that was impossible by
the rules of the game. So guessing based on imperfect indirect
knowledge was the only option. Hence we have statistical
hypotheses testing.

When picked up the container felt its weight and gave it a shake,
we were collecting data, some useful and some not. The weight did
not help us at all, but the sound did. The relevant aspect of the
data is called the test statistic. Here we meet the term
statistic again, a quantity computed based on the sample. Since
it is being used for testing, so the term test statistic. Its
choice crucially depends on the two hypotheses we are trying to
distinguish between. For instance, had we tried to distinguish
between water and milk, sound would have been of little value,
because either would have sounded about the same.  If the two
hypotheses were water versus empty, then weight itself would have
provided enough clue.

The test statistic should be some aspect of the data that behaves
very differently under the two hypotheses. In order to decide if
the null hypothesis is true we need to know the behaviour of the
test statistic under the null hypothesis, ie. the sound of water
in our toy example. This is called the null distrbutuon of the
test statistic.

We compared the observed value of the test statistic with its
null distrbution. If the observed value is too extreme compared
to what is expected for the null distrbution, then we naturally
cast our vote in favour of the alternative hypothesis. This
decision is customarily called Rejecting <M>H_0</M> instead of
accepting <M>H_1.</M> If, on the other hand, the observed value
of the test statistic is nothing incongruous with the null
distrbution, then we Accept <M>H_0.</M>
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 2, Lesson 1, Video 2: The concept of test (sound of water)</HEAD3></STKY>
<SCRIPT id="m2/l1/v2">
<SESS t="0.60" done="n" id="s1">
In the last video we talked about comparing the observed value of
the test statistic with its null distrbution, ie, how the test
statistic is expected to behave if the null hypothesis were true.

This comparison may be done in a couple of ways:

* using p-value
* using critical value

The p-value technique is what is used by most standard
statistical softwares and is the easier to explain. So we shall
start with that.
</SESS>
<JINGLE t="0.1">p-value</JINGLE>
<SESS t="1.70" done="n" id="s2">
In the Basic Statistics course we had already discussed p-value as a means of checking if a
given value is too extreme compared to a bunch of numbers. This
is precisely what we need here. We know the null distribution,
ie, the type of values that the test statistic is expected to
take if the null hypothesis were true. And we are to compare the
observed value of the test statistic with these. If the value is
too extreme, then we shall reject <M>H_0</M>, else we shall
accept <M>H_0.</M> 

As we have already learned in the Basic Statistics course, the
p-value is basically the chance that the test
statistic may be more extreme  than the observed values even if
the null hypothesis is true. If this is small, then the observed
value is already too extreme. and we rekect <M>H_0.</M> Clearly
smaller p-values favour rejection of <M>H_0.</M> How small is
small enough? A commonly used threhold is 5%. If you want to be
more liberal use 1%. 

Thus the pvalue technique for test of statistical hypotheses is
to compute the test statistic, compute the p-value and
reject/accept <M>H_0</M> according as the p-value is below or
above 0.05. Statistical softwares generally just give you 
the p-value, leaving the choice of the cut off to you.

</SESS>
</SCRIPT>

<STKY><HEAD3>Module 2, Lesson 1, Video 3: Lab</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SC t="5" done="n" id="s1">
Toy example: start data and some arbit test statistic. Give lots
of typical values in a different sheet. Find p-value based on
them. Accept or reject. Mention that this is an exploded view,
not recommended in practice.
</SC>
</SCRIPT>

<EXRLIST id="M2L1V1">
<EXR>We have a random sample of patients. We have found the
proportion of COVID infections among them. Which of the
following is a valid hypotesis to e tested?
<OL>
<LI>The sample proportion is 0.5</LI>
<LI>The population proportion is 0.5</LI>
<LI>The  sample proportion is less than the population proportion.</LI>
</OL>
</EXR>

<EXR>A test has been conducted at 5% level of significance. This
means
<OL>
<LI>we make a mistake with at most 0.05 probability.</LI>
<LI>A correct null hypothesis is rejected with probability at
most 0.05.</LI>
<LI>A wrong null hypothesis is accepted with probability at most 0.05.</LI>
</OL>
 </EXR>

<EXR>Power is 
<OL>
<LI>P(type 1)</LI>
<LI>1-P(type 1)</LI>
<LI>P(type 2)</LI>
<LI>1-P(type 2)</LI>
</OL>
</EXR>
</EXRLIST>
<STKY><HEAD3>Module 2, Lesson 1, Video 4: Critical value method</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="1.80" done="n" id="s1">
The p-value method is simple, but leaves one important question
unanswered. How do we choose the test statistic? While this
question is not teribly important for us in this course, because
we shall be using standard softwares where the test statistic is
already built in, but still it is good to have an idea. And that
is where the critical value method will help us. 

Incidentally, it will also expose us to some more statistical
jargon. 

In a statistical hypothesis testing snenario our conclusion is
based only on indirect evidence, and hence liable to
errors. There are two types of errors. There are two hypotheses
that cover all possibilities without any overlap
[shown]. Accordingly we have two possible verdicts:
accept <M>H_0</M> and reject <M>H_0</M>. These two cases
correspond to correct decisions. <M>H_0</M> correct, and we have
rightly accepted it. Here <M>H_0</M> does not hold, and we have
indeed rejected it. These two cases correspond to errors. Here we
have accepted <M>H_0</M> even though it does not hold, and here
we have rejected a correct <M>H_0.</M> These two are called type
I and type II errors. Notice that if we swap the
labels <M>H_0</M> and <M>H_1</M>, then the  types are also
swapped. The convention is to call the more serious of the two
errors Type I.

Let's understand this with an example.
</SESS>
<JINGLE t="0.1">An example</JINGLE>
<SESS t="1.20" done="n" id="s2">
Suppose that I have a tumour in my hand. I am worried about its
being cancerous. So there are two possibilities: it is cancerous
or it is not. These are my two hypotheses. I visit a doctor, who
makes diagnostic measurements (ie collects data) and either says
"Yes, it is cancer" or "No, it isn't". Now let's look at the two
errors. Here I do not have cancer, but the doc says cancer. So I
pass a few sleepless nights, curse my fate, and spend some money
to get my harmless tumour treated. Now let's see the consequence
of the other error. I do have cancer, but the doc says, "Don't
worry, you're just fine!" I feel very happy, go home, cancer
spreads, and RIP.

I hope you'll agree that the latter error is the more serious of
the two. So we shall call that our Type I error. Now type I error
is the error of reecting a correct <M>H_0.</M> So we label the
two hypotheses accordingly. 
</SESS>
<SESS t="1.20" done="n" id="s3">
Since Type I error is the more serious, we naturally want to
guard against that first. We set an upper bound on the
probability of committing that error. This uppr bound is called
the level of significance or the size of the test. Common choices
are 5% and 1%. Subject to this we choose a test that minimises
the probability of the other error. This minimisation dictates
the choice of the test statistic, as well as a cut off value. We
have to have to compute the test statistic from the data and
compare it against the critical value. Depending on the side of
the critical value our test statistic lands, we either accept for
reject <M>H_0.</M>

However, in our course we do not need to worry about all
these. The softwares already know the best test statistic to use
in each case, and so the simpler p-value approach will give the same
result as the more ambitious critical value approach.
</SESS>
</SCRIPT>
<EXRLIST id="M2L1V2">

<EXR>Estimate  the upper-tailed p-value of ... w.r.t. the
typical values ..., ..., ... </EXR>

<EXR>Estimate  the lower-tailed p-value of ... w.r.t. the
typical values ..., ..., ... </EXR>

<EXR>Estimate  the two-tailed p-value of ... w.r.t. the
typical values ..., ..., ... </EXR>
</EXRLIST>
</LESSON>
<HEAD2>Module 2: Lesson 2: One sample t-test</HEAD2>

<STKY><HEAD3>Module 2, Lesson 2, Video 1: one-sample t-test</HEAD3></STKY>
<LESSON>
<SCRIPT id="m2/l2/v1">
<SESS t="2.80" done="n" id="s1">
There are many different types of tests of statistical hypotheses
suited for different purposes. We shall talk about quite a few of
them in this module. Let's start with the one that is possibly
the easiest to understand and has wide application. We shall
start with an example. 

We all use bottled liquids, milk, shampoo, oil, medicines. The
container bears a label telling us the amount of the content. How
does the manufacturer ensure that the amount is as it should
be. Of course, if we fill each bottle manually we may
painstakingly measure out the right amount and pour it in. But
these bottles are not packaged manually. The amounts are poured
out by some automated device, and churned out by hundreds. If
some setting somewhere goes off a bit, it will have a disastrous
effect. So the manufacturer has to keep a constant eye on the
process. And test of statistical hypotheses plays a crucial
role here. 

First, we must understand that even when the machinery is working
satisfactorily there is some inevitable rndom variation among the
amounts of the contents in the bottles. [numline] This level is typically
property of the machine itself, its precision, and may be
expected to hold through out. But even with the precision in
place the setting may get shifted over time. And that's what we
need to guard against. This is called a test of mean. Again,
be careful here this mean is the population mean. Now we take
some bottles from the production line, open them and actually
measure their contents. That's our data. We want to know if the
mean is shifted from its advertised value or not. So we take our
null hypothesis <M>H_0: \mu = 50</M> and the alternative
hypothesis <M>H_1: \mu \neq 50.</M> Be careful here,
this <M>\mu </M> is the population mean, the unknown quantity
depending on the current possibly faulty condition of the
machine. Had it been just the sample mean, then we could just
have computed it and checked if is equal to 50. Of course, we do
need to compare the sample with 50, but since the sample mean is
just an estimator of the population mean, we should allow some
margin. A sample mean just a little off from 50 should not be an
excuse to stop the production process and call for the
repairman. 

The question is how to choose the margin. And that's what we
shall discuss in the next video.
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 2, Lesson 2, Video 2: one-sample t-test</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="3.40" done="n" id="s1">
We are learning test of population mean. In the last video we
discussed a real life scenario where such a test is called
for. Let's quickly recall the set up, but this time in an
abstract way. 

Our set up consists of a population, an underlying distribution
with an unknown mean <M>\mu.</M> In our bottling plant example
this is the population of all bottles that the machine can churn
out in its current possibly faulty setting. We have an advertised
value <M>\mu_0</M> for <M>\mu.</M> We want to test <M>H_0: \mu =
\mu_0</M> versus <M>H_1: \mu \neq \mu_0.</M> In certain other
situations it may be known a priori that <M>\mu</M> cannot fall
below <M>\mu_0.</M> Then we can just test againt <M>H_1: \mu >
\mu_0.</M> Similarly, other situations may call for testing
against <M>H_1: \mu < \mu_0.</M> These are called respectively
two-tailed, upper-tailed and lower-tailed tests.

We have a random sample from the population <M>X_1,...,X_n.</M>
We have computed <M>\bar X</M> and are about compare this
with <M>\mu_0.</M> We intuitively feel that we should
reject <M>H_0</M> in favour of <M>H_1</M> if <M>|\bar
X-\mu_0|</M> is too large. Similarly we should
reject <M>H_0</M> in favour of <M>H_2</M> if <M>\bar
X-\mu_0</M> is too large (no abs value). Similarly for <M>H_3</M>
we should reject for too large values of <M>\mu_0-\bar X</M>.

The question now is "how large is too large?" The answer, as you
might have guessed already, depends on the dispersion present in
the population. When you are measuring an agricultural plot a
shift of a few centimetres during measurement is nothing serious,
but during an eye operation using laser beams, a shift of even a
10th of a millimetre may be disastrous. 

Hmmm...dispersion present in the population. How can we know
that? The population is that underlying unknown truth. Well,
yes. But not everything need to be unknown about the
population. For instance, many machines come with a rating of its
inherent precision, and even though we suspect that the mean has
shifted, we may have reason to believe that the dispersion is
still at its advertised value. If that is the case, then we are
in luck. Let's call this known population standard
deviation <M>\sigma.</M> Then our test statistic is 
<D>
Z = [[(\bar X - \mu_0)][\sigma/\sqrt{n}]].
</D>
Don't bother too much about this formula, this is already built
into all standard statistical softwares. However, you should
quickly recognise the denominator as the standard error
of <M>\bar X.</M> Notice the letter <M>Z.</M> Well, this test is
called the <M>Z</M>-test of mean.
</SESS>
<SESS t="1.20" done="n" id="s3">
So far we have discussed the case where we are in luck: the
population standard deviation is known. Our machine has possibly
slipped in the mean, but still holding its advertised
precision. In most situations, however, we are not this lucky. If
we suspect that our machine has drifted away from its advertised
mean, we are equally unsure about its current standard
deviation. Well, nothing to despair even then. If you do not
know <M>\sigma,</M> just estimate it from the data. So our
test-statistic now becomes 
<D>
t = [[(\bar X - \mu_0)][\hat \sigma/\sqrt{n}]],
</D>
where 
<M>\hat \sigma</M> is the sample standard deviation
(with <M>n-1</M> in the denominator). This gives the one sample <M>t</M>-test.

Of course, we should also mention the null distributions in both
the cases. But they are built into standard softwares, anyway. So
let's not torture ourselves with their not too apetising
mathematical forms. Instead it is time to see these things in action.
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 2, Lesson 2, Video 2: Lab</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SC t="6" done="n" id="s1">
z test and one sample t-test.
</SC>
</SCRIPT>

<EXRLIST id="M2L2V1">

<EXR>Identify the test statistic for t-test.</EXR>

<EXR>If we have a sample of size 50, then what is the d.f.?</EXR>

<EXR>An example, where summary statistics are given, and
t-distrn cut-off are given. Ask to accept/reject.</EXR>
</EXRLIST>

<EXRLIST id="M2L2V2">
<EXR>Real life data. Upper tailed.</EXR>
<EXR>Real life data. Lower tailed.</EXR>
<EXR>Real life data. Two tailed.</EXR>
</EXRLIST>

</LESSON>
<HEAD2>Module 2: Lesson 3: Paired t-test</HEAD2>
<LESSON>
<STKY><HEAD3>Module 2, Lesson 3, Video 1: Paired t-test</HEAD3></STKY>
<SCRIPT id="m2/l2/v1">
<SESS t="2.90" done="n" id="s1">
As we have already said, there are many different types of tests of statistical hypotheses
suited for different purposes. We have already talked about the
t-test, or one-sample t-test, to be more precise. 
them in this module. In this lesson we shall talk about a related
test, which is basically an application of wat we have learned in
the last lesson. As usual, we shall start with an example. 

Often measurement are done in pairs. Like you do something, and
want to see the effect. Then you make two measurements one before
and one after that activity. You have a medication for insomnia,
say. Then you measure the average amount of dail sleeps for some
randomly selected patients before the medication starts, and then
again after the medication. Another scenario that leads to paired
observations where you have two similar but different aspects of
something that you want to compare. Like you want to compare the
husband's salary with wife's salary within the same household. Or
may be you have two different ways to measure the amount of
active ingredient in a tablet. You want to compare them. So you
take a random asortment of tablets, break each tablet into two
halves and apply the two methods to the two halves. 

There are many possible scenarios. But we shall continue to use
the insomnia medication example as our running example. 
Imagine that there are 10 such patients, and we have two
measurements for each, one before and one after. We are
interested in knowing if the medication had any effect. So our
nul hypothesis is <M>H_0: </M> no good effect vs <M>H_1:</M> some
good effect. Clearly, we should look at the amount of increase in
the sleep. So we should subtract the before values from the after
values. Then we can express the hyptoeses mathematically as on an
average the diffrence are not positive. and are positive.We can
now perform a t-test on the difference. This is called paired
t-test.

Notice the adjective "paired". This is important. Here we have
two sets of measurements, the ones made before the medication and
the ones made afterwards. But these are not just like two
unordeeed sets. The first measurement in this set and the first
measurement of that set both correspond to the same patient. This
common aspect provides the pairing between them. 

Now it is time to take a look at paired t-test in practice.
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 2, Lesson 3, Video 1: Paired t-test</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SC t="6" done="n" id="s1">
Insomnia data. Peform the test.
</SC>
</SCRIPT>

<STKY><HEAD3>Module 2, Lesson 3, Video 1: Paired t-test</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="3.30" done="n" id="s1">
In the last video we saw paired t-test in action. Here we shall
look at it from a more abstract viewpoint, and also consider the
assumptions on the underlying distribution that is needed. 

We start with a data matrix with 2 continuous variables whose
values are paired. Let's pause for a moment and understand this
concept. Suppose we have two sets of agricultural plots, each set
has 10 plots. In the first set we have sown paddy and in the
second we have sown wheat. We measure the yields of all the
plots. Thus we have 10 paddy yields and 10 wheat yields. We
create a 10x2 data matrix out of them. Is this suitable for
paired t-test? No, because the two columns are not paired. You
might as well shuffle the value within the same column without
losing any information. 

Now compare this with with a similar situation. A new chemical
spray has been been proposed that is supposed to enhance the
yield of paddy. To test its efficacy 10 plots are taken of varios
types, and paddy is sown in them. Then each plot is divided into
two equal halves, and spray is applied to only one half. The
yield from either half is measured separately, resulting in 10
with-spray yields and 10 without spray yields. Again we get a
10x2 data matrix. Is this data set suitable for a paired t-test?
The answer is Yes. The fact that the same plot is split into two
halves provide the pairing. The two halves in the same pair share
common soil type or irrigation.

Coming back to the mathematical set up we have two continuous variables of
the same type (like both are measurements of the same quantity),
and their values are paired. We shall denote them as 
<PRE>
x1 y1
...
xn yn
</PRE>
There is a populaton mean for the xi's and a populaton mean for
the yi's. Call them <M>\mu_x</M> and <M>\mu_y.</M> We are trying
to test null hypothees like <M>\mu_y = \mu_x</M> or <M>\mu_y \leq
\mu_x</M> against alternatives like <M>\mu_y \neq \mu_x</M>
or <M>\mu_y > \mu_x.</M> 

The assumption that we make here is the <M>w_i=x_i-y_i</M> values
have a normal distribution. This of course has
mean <M>\mu_x-\mu_y=\mu,</M> say, and some unknown standard
deviation <M>\sigma.</M> Then the null hypothees become sometime
like <M>H_0: \mu = 0</M> or <M>H_0: \mu \leq 0</M> with
alternative hypothees like <M>H_1: \mu \neq 0</M> or <M>H_1: \mu>
0.</M> 

We use the test statistic
<D>
t = [[\sqrt n \bar w][sd(w)]].
</D>
Its null distribution is <M>t</M> with degrees of freedom <M>n-1.</M>
</SESS>
</SCRIPT>
<EXRLIST id="M2L3V1">
<EXR>Identify the test statistic for paired t-test</EXR>

<EXR>Find d.f. based on sample size.</EXR>

<EXR>An example, where summary statistics are given, and
t-distrn cut-off are given. Ask to find p-value.</EXR>
</EXRLIST>



<EXRLIST id="M2L3V2">
<EXR>Real life data. Upper tailed.</EXR>
<EXR>Real life data. Lower tailed.</EXR>
<EXR>Real life data. Two tailed.</EXR>
</EXRLIST>
</LESSON>

<HEAD2>Module 2: Lesson 4: Two-sample t-test</HEAD2>
<LESSON>

<STKY><HEAD3>Module 2, Lesson 4, Video 1: 2-sample</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="3.70" done="n" id="s1">
In the last lesson we learned about the paired sample
t-test. What we are going to learn in this lesson is deceptively
similar to that. It is called two sample t-test, or sometimes
called the inpendent sample t-test. This latter terminology is
more suggestive, and clearly expresses its difference from a
paired sample t-test. Here also we have two sets of numbers, but
instead of being paired they are indepenedent. 

Let's spend some time appreciating the difference. While
discussing paired t-test we had mentioned an example where we
were assessing the effectiveness of a spray in increasing
agricultural yields. The set up there was like this. We have
halved a number of plots, and applied the spray to only one half
and measured the yield separately. Now this is pretty cumbersome
to carry out in practice. So instead here is a different more
easily implementable set up. We start with a bunch of more or
less identical plots, say 25. Then we pick 12 plots randomly out
of them and apply the spray to those. So now we have to compare
12 numbers with 13 numbers. Clearly there is no pairing between
elements of these two sets. Even the sizes of these two sets are
different, one is 13, the other 12. Here we need a different type
of t-test, the two-sample t-test or the independent sample
t-test. 

The first step, as you might very well guess, is to compute the
average yield from both the groups, call them <M>\bar x</M>
and <M>\bar y</M> and subtract one from the other. It is not
enough to mereyl check that it is more than or less than
zero. Had we been looking at data then this would have
sufficed. But as we are looking through data, we must remain
aware that our conclusion is to hold for the population means,
for which the sample means are just approximations. So we need to
have an idea about how good the approximations are, ie, the
variability of the yields within the two groups must be taken
into account. 

Here we face an unexpected problem. It may be the case that the
variability within both the groups are the same. Or it could be
that they are different. Accordingly we have two different tests:
homoscedastic and heteroscedastic. 

In the homoscedastic case, ie where the dispersion is the same in
both the groups we use one test statistic, and for the
heteroscedastic case we use another. The formulae are somewhat
complicated, but their null distributions are simpler. They are
always <M>t</M>-distributions with different degrees of
freedom. In the homoscedastic case it is <M>m+n-2,</M> which is
easier to remember as <M>(m-1) + (n-1).</M> In the hetescedastic
case it complicated. 

I am not torturing you here with the exact formulas, partly
because you can get them easily from books and the internet, and
mostly because you rarely need to know them in practice, because
standard statistical softwares have all these built into them.

So let's see how to perform two-sample <M>t</M>-test using LibreOffice.
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 2, Lesson 4, Video 1: 2-sample</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SC t="6" done="n" id="s1">
Homo and hetero 2-sample t-test
</SC>
</SCRIPT>

<STKY><HEAD3>Module 2, Lesson 4, Video 1: 2-sample</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="2.50" done="n" id="s1">
We have seen how there are two versions of
2-sample <M>t</M>-tests based on homo and heteroscedastic set
up. Now in practice how would you choose the appropriate version?

Since homo or heteroscedasticity involves the unknown population
standar ddeviations underlying the two samples, there is no sure
way of knowing if we are in a homoscedastic set up or a
heteroscedastic one.

However, we may guess, or to use a more precise statistical term,
test the hypothesis of homoscedasticity against that of
heteroscedasticity. And there is indeed a standard test for that,
the <M>F</M>-test. We shall learn about this in this video.

First we need some new symbols. We are talking about equality of
two population variances (or equivalently equality of standard deviations).
Remember that here we have two populations, and one sample has
been drawn from each, independently of the other. So each
population has its own standard deviation. We call
these <M>\sigma_1</M> and <M>\sigma_2.</M> Then we are trying to
test <M>H_0: \sigma_1 = \sigma_2</M> vs <M>H_1: \sigma_1 \neq
\sigma_2.</M> 

We have already mentioned in the first lesson of this module, how
the best test statistic may be obtained by restricting the
probability of type I error, and manimising the probability of
type 2 error subject to that. Well, if we follow that rather
athematical process, we finally arrive at a test statistic, which
is quite intuitive. It is 
<D>
[[\sum (x_i-\bar x)^2/(m-1)][\sum (y_i-\bar y)^2/(n-1)]].
</D>
The numerator is just the sample variance for the first sample,
and the denominator is the sample variance  for the second
sample. If the two population variances are indeed the same, ie,
if <M>H_0</M> holds, then this quantity should be close to 1. How
close? That answer is given by the null distribution. Again, that
is a complicated beast, but fortunately people have already
computed it. It is called an <M>F</M>-distribution with degrees
of freedom <M>m-1</M> and <M>n-1.</M> 

Let's see it in practice.
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 2, Lesson 4, Video 1: 2-sample</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SC t="6" done="n" id="s1">
F-test.
</SC>
</SCRIPT>
<EXRLIST id="M2L4V1">
<EXR>Identify the test statistic for paired t-test</EXR>

<EXR>Find d.f. based on sample size.</EXR>

<EXR>An example, where summary statistics are given, and
t-distrn cut-off are given. Ask to find p-value.</EXR>


<EXR>Husband wife data. Is 2-sample appropriate?</EXR>
<EXR>Identify test statistic.</EXR>
</EXRLIST>



<EXRLIST id="M2L4V2">
<EXR>Real life data. Upper tailed.</EXR>
<EXR>Real life data. Lower tailed.</EXR>
<EXR>Real life data. Two tailed.</EXR>
</EXRLIST>
</LESSON>

<HEAD2>Module 2: Lesson 5: Review</HEAD2>
<LESSON>
<STKY><HEAD3>Module 2, Lesson 5 , Video 1: Review</HEAD3></STKY>
<STKY><HEAD3>Module 2, Lesson 5 , Video 2: Review</HEAD3></STKY>

</LESSON>
<HEAD1>Module 3: Goodness of fit and independence</HEAD1>

<HEAD2>Module 3: Lesson 1: Contingency tables</HEAD2>

<STKY><HEAD3>Module 3, Lesson 1, Video 1: Contingency tables</HEAD3></STKY>
<LESSON>
<SCRIPT id="m3/l1/v1">
<SESS t="1.30" done="r" kf="10,20,30,40,50" id="s1">
In the Basic Statistics course we talked about pivot tables, and
had mentioned mentioned how one special 
 type of pivot table
 has a much more important use than the rest. These were the
<B>contingency table</B>s. We had only touched upon the subject
in that course. Now is the time for a fuller exposition.
---
Let's start with a breif recap.
A pivot table requires specification of two things:
 * One or more <B>categorical</B> variables in the data set.
 * Some <B>summary</B> measure.

---
To get a contingency table, we need to choose  two
categorical variables, and count as the summary measure. Let's
take an example.
---
Here is a table<V>[shown]</V> with two categorical variables gender
(Male/Female) and Handedness (Left/Right). The corresponding
contingency table is 2 by 2<V>[shown]</V>, where each cell has the
corresponding count. [Explain by pointing].
---
It should be quite easy to create such a contingency table in
LibreOffice, as we have already learned how to create a general
pivot table. Anyway, here is a little lab session, in case you
need one.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="4" done="r" id="s1">
[Screencast: Make contingency table.]
lr.csv: Don't use iq
</SC>
</SCRIPT>


<STKY><HEAD3>Module 3, Lesson 1,  Video 2: Contingency table</HEAD3></STKY>
<SCRIPT id="m3/l1/v2">
<SESS t="1.10" done="r" kf="10,20,30" id="s1">
We mentioned just now that contingency tables are very
important in statistics. Why is that? The most important reason
is that they help us to explore relation between two categorical
variables. Let's take an example.
---
We often want to answer questions like <B>"Is smoking related to
cancer?"</B>. Or what is the relation between <B>education level and
income group</B>? Does the chance of <B>admission to an educational
institute depend on one's gender</B>? 
---
All these questions are trying
to connect two categorical variables. In the first case smoking
habit (Y/N) with cancer (Y/N). In the second case, educational
level (preschool, school,  college and above)
and income level (low, middle, high). In the third case admission
status (admitted / rejected) and gender (male /
female). 
---
Contingency tables help us to understand such relations.
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 3, Lesson 1,  Video 4: Contingency table</HEAD3></STKY>
<SCRIPT id="m3/l1/v4">
<SESS t="3.00" done="r" kf="10,50,60,70,80" id="s1">
We have mentioned how we may construct  a contingency table from
raw data. When we collect raw data with the aim of creating a
contingency table, there are three major ways to go about it. Let's
understand this with an example. 
---
Suppose that our population consists of employees from a
particular job sector. We are interested in two variables <B>gender
and responsibility</B> levels. Let's say there are four
responsibility levels: <B>Manager,
Engineer, Clerk and  Support staff</B>.
---
 Our final aim is to get a
contingency table<V>[emptytab]</V> like this, that shows genders in the rows
and the responsibilities in the columns. 
---
How should we go about collecting data for this? One method could
be to select 100 employees randomly from the entire population,
and observe the gender and responsibility levels for
each.
---
 In this scheme we have no control on how many men and how
many women will be in our sample. Neither do we have any control
on the counts for the responsibility levels. So both the row
marginals and the column marginals are random.
---
An alternative approach<V>[gentab]</V> is to draw a random sample of 50 men and
50 women, and then observe the responsibility levels for each of
them. Here there are 50 men and 50 women by design. So the row
marginals are fixed, not random. However,  the row marginals
continue to be random as before.
---
Of course, we could have done it the other way around, fixing the
column marginals first<V>[restab]</V>. Then we should have chosen in advance the number of
persons in each responsibility level, say 25 each, and randomly
chosen that many employees from each level.
---
 Finally, we observe
the genders of these selected employees. 

Why are we bothering about these different sampling schemes? Because the
different  schemes will let us make different types of
inferences. 
---
Suppose that we want to
know the proportion of male employees versus female
employees. Then the second scheme is not suitable, because there
we deliberately chose an equal number of men and women.
---
Similarly,
if we are interested in comparing the responsibility levels for
the two genders, i.e., trying to check if the responsibility
level distribution for men differ significantly from that for
women, then the third scheme is not suitable, as there we are
starting by fixing the responsibility level counts.
---
  The first
scheme may also not be suitable if there happen to be too few men (or two
few women) in the sample. Here the second scheme is the best
suited for the purpose.
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 3, Lesson 1,  Video 5: Contingency table</HEAD3></STKY>
<SCRIPT id="m3/l1/v5">
<SESS t="1.60" done="r" kf="10,20,30,50,90,120,130,140,150,160" id="s1">
All the contingency tables discussed so far were 2-way or
2-dimensional. It is quite possible to have higher dimensional
contingency tables. For example if we want to study the relation
between 3 categorical variables, say, <B>gender</B>, <B>educational
level</B>
and <B>income group,</B>
---
 We consider  two levels
under gender <V>[shown]</V>, 4 under educational
level <V>[shown]</V>, and 3 under income group<V>[shown]</V>.
---
So we shall have a <B>3-way
contingency table</B>,which is <B><M>2\times4\times 4</M></B> in
size.

Here  it ia customary to refer to the first variable as the
<B>layer</B>, the second as the <B>row</B>, and last as
 the <B>column</B>.
---
Thus, gender is the layer variable, educational level is the
row variable, and income group is the column variable. Such
 tables
are printed  layer by layer, where each layer is
a 2-way table. 
---
Most of the concepts that we have learned about 2-dimensional contingency
tables readily generalise for higher dimensional contingency
tables, as well. For example, we may talk about association
between the variables.
---
 However, a higher dimensional contingency
table allows more variety. For instance, 
income group and educational level may be associated in
one way in the male layer, but  differently
 in the female layer. 
---
Statisticians often build elaborate models called <B>log-linear
models</B> to capture such complex relations. But we shall not go
into this any further in this course.
---
In the nexr video we shall see how we may construct a 3-way contingency
table from raw data using LibreOffice.
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 3, Lesson 1,  Video 6: Contingency table</HEAD3></STKY>
<SCRIPT id="m3/l1/v6">
<SC t="6" done="r" id="s1">
[Screencast: 3-way toy example as described.]
gei.csv: gender, edu, income
</SC>
</SCRIPT>


<EXRLIST id="M4L1V1">

<EXR>Fill in missing cells based on totals.</EXR>

<EXR>Make table by hand based on small data.</EXR>

<EXR>Give table, guess association</EXR>
</EXRLIST>


<EXRLIST id="M4L1V2">

<EXR>Make a table from data, and ask for two cell
frquencies.</EXR>

<EXR>Make a table, guess association.</EXR>
</EXRLIST>
</LESSON>
<HEAD2>Module 3: Lesson 2: Independence test</HEAD2>
<LESSON>
<STKY><HEAD3>Module 3, Lesson 2, Video 1: Independence test</HEAD3></STKY>

<SCRIPT id="m3/l2/v1">
<SESS t="5.30" done="r" kf="10,20,30,40,50,60" id="s1">

In this video we shall discuss the most important application for
contingency tables: testing independence between two ctegorical
variables. 

Let's work through an example to build up the idea. We had
already seen this in the Basic Statistics course. Here we shall
develop the idea further. We want to see if there is any
association betwween income group and educational level. We have
three income groups (High, Mid and Low) and four educational
levels (Preschool, School, College and Univ). We have a
population of people in mind, and we draw a random sample, and
ask each of them about their income group and educational
level. This will fill up a 3x4 contingency table.

Now I shall not tell you the exact entries the cells. I shall
only tell you the marginals. So you know the proportions of the
three income groups in the sample, and also the proportions of
the four educational levels. So if I pick a random person, then
what is the chance that he/she belong the high income group. It
is this number by this number. Now suppose, just for the sake of
argument,
 I tell you that income group
is independent of educational level. What does that mean? That
means even if I whisper in your ear that the randomly selected
person has never been to school, you'll have no reason to change
your answer to the first question. You'll still say that the
probability of that person's being in the high income group is
this number by that number. This is true about all the
persons. In particular about all the persons in this preschool
group. So out of these ... persons each has a chance ... of being
in the high income group. So the expected number of persons in
this cell is .... Am I making sense? It's like I toss a coin with
27% chance of head. If I toss it 150 times, then the expected
number of heads is 27% of 150, ie, 40.5. Don't worry about it's
not being a whole number, it is just the result of the numeric
computation. We mean the frequency in that cell should be near
about that number. Notice the formula caregully. It is row total
times column total by grand total. This holds for all the
cells. So we can compute the expected frequencies for all the
cells. 

All these were for the assumption that income group and
educational level are independent. Now we also have some observed
frequencies in the cells. If these observed frequencies are more
or less like the expected frequencies, then we do not have reason
to suspect any association between the two variables. Otherwise,
this table itself is an evidence against the assumed
independence. 

The next question therefore is about how to compute the
difference between the expected and the observed
frequencies. Computing the diffeence betwwen two numbers ia easy,
you just subtract on efrom the other. But here we have two sets
of numbers. Some of them may be close, while some may be far
apart. We need some kind of a pooling across all the cells. Here
is our first attempt. 
<D>
\sum_{ij} (e_{ij} - o_{ij}).
</D>
Unfortnately this will just give a zero, because this is just
subtracting the grand total from itself. The problem is that
positive differences are cancelling off negative differences. But
for use a difference is a difference, we do not care about the
sign. So we get rid of the sign by squaring:
<D>
\sum_{ij} (e_{ij} - o_{ij})^2.
</D>
That's better, but should all the cells be considered with equal
importance? If for a cell we have expected frequency 20000 and
observed frequency 20010, then the squared diffeence is 100. If for another
cell the expected frequency is 10 and observed is 20, then also
the squared difference is 100. Shouldn't these 100's be treated
differently? In the first case the 100 is where the expected
frequency was large, 20000, while in the second case the same
amount came from a smaller expected frequency, just 10. So relatively the
second case is a more serious departure from independence. So we
update the formula to 
<D>
\sum_{ij} [[(e_{ij} - o_{ij})^2][e_{ij}]].
</D>
We have already met this quantity in our Basic Statistics
course. It is called the <M>\chi^2</M>-statistic. Large values of
this makes us go against the null hypotheses of independence.

How large is large? We shall get into those questions. But first
a little lab session is in order. That's what we shall do in the
next video.
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 3, Lesson 2, Video 1: Independence test</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SC t="5" done="n" id="s1">
Compute <M>\chi^2</M> by raw computation and automatically.
</SC>
</SCRIPT>


<STKY><HEAD3>Module 3, Lesson 2, Video 1: Independence test</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SC t="5" done="n" id="s1">
Idea of null distribution of <M>\chi^2.</M> Show a
population. Draw sample compute. Redraw and compute again. Show
difference. Show precomputed values in a different sheet. Make hist.
</SC>
</SCRIPT>
[qn: null distrn is sampling distrn]

<STKY><HEAD3>Module 3, Lesson 2, Video 1: Independence test</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="1.90" done="n" id="s1">
In the last lab session we have got a taste of the null
distribution of the <M>\chi^2 </M> statistic. The process we used
there was cumbersome. Statisticians have found a smarter method,
albeit an approximate one. They have seen that if the sample size
is large, and so are all the expected frequencies (say sample
size at least 30 and each expected frequency at least 5, as a
rule of thumb), then the shape of the histogram looks like this. 
Of course this is just the general shape, there could be
variations. 

To be precise the general shape gives a family of distributions,
called the <M>\chi^2 </M> distributions. Each member of the
family is idenntified by a number called the degrees of
freedom. The larger the degrees of freedom, the more spread out
the shape. For example this is has hgher degrees of freedom than
this, and this has even higher. 

Given a contingency table there is a simple way to work out the
degrees of freedom of the null distribution. It is just 
(nrows -1) times (ncols - 1). When you compute the numbers of
rows and columns, don't include the totals. We are counting only
the numbers of categories of the two variables. For instance, in
the educations level vs income group example, the degrees of
freedom are (4-1)(3-1) = 6.

Of course, as a practicing statistician in the modern age, you
really do not have to remember all these. All standard
statistical softwares have these things built in. 

The next video will demonstrate this in action.
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 3, Lesson 2, Video 1: Independence test</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SC t="0" done="n" id="s1">
<M>\chi^2 </M> test.
</SC>
</SCRIPT>
<EXRLIST id="M4L2V1">

<EXR>Give marginals. Ask to fill in the cells assuming
independence.</EXR>

<EXR>Give table. Ask to compute expected freqs for two
cells.</EXR>

<EXR>Give table ask to compute chisq.</EXR>

<EXR>Give set up. Ask d.f.</EXR>
</EXRLIST>

</LESSON>
<HEAD2>Module 3: Lesson 3: Permutation test</HEAD2>
<LESSON>
<STKY><HEAD3>Module 3, Lesson 3, Video 1: Permutation test</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="2.70" done="n" id="s1">
We have seen in the last video how the <M>\chi^2</M> statistic
may be used for testing independence between two categorical
variables. We first compute the <M>\chi^2 </M> statistic using a
special formula and then check if it is too large. If it is, then
we suspect that the two categorical variables are not
independent, else our verdict goes for independence. How do we
check for the value being too large? We employed
the <M>p</M>-value method. Now, <M>p</M>-value compares a given
number to a distribution, the null distribution in our case. That
is, how the <M>\chi^2 </M> statistic is expected to behave had
the two categorical variable been really independent. 

Thus there are two steps:

* First, finding the <M>\chi^2 </M> value
* Second, comparing it with the null distribution.

How are we computing the null distribution? Well, we as
practising statisticians are not computing it ourselves, but
letting the computer do it for us using mathematics. Now most
mathematical reasoning requires certain assumptions, and
statistical regularity is one of the major assumptions
here. Statistical regularity, which creates regular behaviour out
of randomness, when a large amount of randomness is piled
together carefully. So we need a large amount of randomness, ie,
large sample. In particular for the <M>\chi^2 </M> case each of
the expected frequencies must be large as well. How large? Well,
the larger the better, but a commonly used  rule of thumb sets
the threshold as low as 5. If the total sample size is at least
30  and expected frequencies in all
the cells in the table are at least then we may safely use the
null distribution provided by the computer, says the rule. But
what happens if some expected frequency drops below 5? Well, the
first step is still meaningful. The <M>\chi^2 </M> statistic
still makes sense. It is sort of a distance between the observed
frequencies and the frequencies expected under independence. The
only problem is that the null distribution prescribed for it by
the computer is not accurate any more.

In such a situation we use a different technique called
permutation test. The idea behind the test is quite intuitive,
though the final procedure is a bit too sophisticated for
LibreOffice. But still let me explain with an example. 
</SESS>
<JINGLE t="0.1">An example</JINGLE>
<SESS t="2.90" done="n" id="s2">
Suppose we have 20 mother child pairs and we have classified the
fingerprints of the 20 mothers and their 20 children as either a
whorl pattern or a no whorl pattern. This results in a 2x2
contingency table. We want to test if the mother having a whorl
pattern is independent of her child's having a whorl pattern. For
this we think of the 20 mothers standing in a row. Now we shall
play god and distribute the children among them. 
Let's say mothers with whorls are more likely to
produce babies with whorls. Then god is more likely to choose a
whorl child for a whorl mother, and a non-whorl child for a
non-whorl mother. On the other hand if there is no association
between mothers' whorl and children's whorl, then the god just
assigns the children at random to the mothers. We shall do
precisely this, artificially. Assign the 20 children randomly to
the 20 mothers without caring about whorls. This produces a new
data set which identical to the original data set in terms of the
numbers of whorl and non-whorl mothers and numbers of whorl and
non-whorl children. But unlike in the original data, here we know
that there is no association between the mothers' patterns and
the children's patterns. This new data set may again be
summarised as a 2x2 contingency table, which has the same
marginal totals, but possibly different cell entries. If we now
compute the <M>\chi^2 </M> value from this table, then we get a
taste of how the <M>\chi^2 </M> should look like in case of
independence, ie. an idea about the null distribution. Well, just
a single value  won't give us a clear picture about the null
distribution. But then we can repeat this procedure a large
number of times, say 1000 times. Each time assigning the same 20
children randomly to the same 20 mothers (in possibly different
orders), making a 2x2 table and computing <M>\chi^2 </M>
values. In this way we get 1000 different <M>\chi^2 </M> values
all under the assumption of no association. Now we may compute
the <M>p</M>-value of the <M>\chi^2 </M> value from the original
table w.r.t. these 1000 numbers. 

Of course, we are making heavy use of the computer, repeating the
entire process 1000 times, but conceptually it is not that
demanding. The next video will show this in action. 
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 3, Lesson 3, Video 2: Permutation test lab</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SC t="6" done="n" id="s1">
Permutation test: do one set of randomisation. Then show
many <M>\chi^2 </M> values in a different sheet. 
</SC>
</SCRIPT>

<EXRLIST id="M4L3V1">
<EXR>Identify formula.</EXR>

<EXR>Interpret.</EXR>

<EXR>Find one from another.</EXR>
</EXRLIST>


<EXRLIST id="M4L3V2">
<EXR>Compute from data.</EXR>
<EXR>Compute from data.</EXR>
</EXRLIST>
</LESSON>
<HEAD2>Module 3: Lesson 4: Goodness of fit test</HEAD2>
<LESSON>
<STKY><HEAD3>Module 3, Lesson 4, Video 1: Goodness of fit test</HEAD3></STKY>

<SCRIPT id="m/l/v">
<SESS t="3.20" done="n" id="s1">
In statistics and probability we often talk about an unbiased
coin, a coin that when tossed is equally likely to show either a
head or a tail. We use such coins do make impartial decisions, like which
teacm should bat first in a cricket tournament. Now here is a
coin. I want to know if it is unbiased. How do I go about it?
Well, no amount of staring at it will take me anywhere. I can
start by tossing it tossing it a large numbr of times, say 1000
times. Let's say I get 523 heads and 477 tails. May I conclude
from it that the coin is unbiased? Well, ideally I should have
obtained 500 heads and as many tails. But a coin toss is ranom
after all, so we can never guarantee an exact 50% even for an
unbiased coin. So close enough to 50% is what we should look for. So the
all important question now is: Are 523 and 477 close enough to
500?  

Note the similarity of this situation with the independence test
that learned in the last lesson. We have observed frequncies 523
and 477 and expected frequncies 500 and 500. And we are trying to
test if the observed frequncies are too far away from the
expected ones. Let's try the <M>\chi^2 </M> statistic here. We
compute the differences between the  the observed and the
expected frequncies, square them divide by the expected
frequncies and sum. 

Clearly, if this too large then we should think that the coin is
biased. Well, we are doing a statistical test here. So let's
spell out the two hypotheses cleary. The null hypothesis
is <M>H_0:</M> unbiased and the altrnative is <M>H_1:</M> biased.

Now we need the null distribution. As before we do not really
need to know the name or form of it, as the software should have
that built in. But here there is a slight twist coming up
soon. In order to prepare for that let me tell you the name of
the null distribution. It is called
the <M>\chi^2 </M>-distribution. It is not a single distribution,
but a family of distributions, where each member of the family is
indexed by a parameter called the degrees of freedom. Here are
some examples.

Our null distribution is a member of this family. Which member?
That will be given by the degrees of freedom. There is a formula
for this. If you are checking for a fixed distribution as in this
case (unbiased coin means both the probabilities are given to
be <M>[[12]]</M>) then the degrees of freedom is one less than
the number of categories. In our case we had just two categories,
head and tail. So the degree of freedom is 1.
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 3, Lesson 4, Video 1: Goodness of fit test</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SC t="6" done="n" id="s1">
Die roll test. Any Hugli data categories?
</SC>
</SCRIPT>

<STKY><HEAD3>Module 3, Lesson 4, Video 1: Goodness of fit test</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="2.40" done="n" id="s1">
In the last two videos we learned to perform goodness-of-fit test
for some completely specified distribution, ie, a distribution
where the probabilities for all the categories were specified as
numbers. Sometimes we need to fit a distribution with parameters in
it. Then the procedure is similar but not entirely the same. 

Let's start with an example. [Prussian horse kick data]

You have learned about the Poisson distribution in your
probability course, and have possibly also learned there that it
is used for modelling the frequencies of rare events. In case this
sounds new to you, here is a quick refresher. 

Consider this event:  a soldier
getting killed by a horse kick. Fortunately for the soldiers,
such events  occur pretty rarely. They usually get to die more
glorious deaths. Even if you count all such
unfortunate deaths in a band of soldiers for a whole year the
number should be quite low, often just zero. This is an example
of a rare event. Now there is a belief supported by some
mathematical arguments that the probability of observing exactly <M>k</M>
such events  is 
<D>
e^{-\lambda} [[\lambda^k][k!]]
</D>
for <M>k=0,1,2,...</M> This is called the Poisson distribution
with parameter <M>\lambda</M>, which is (population) average number of events.

We want to test if this belief holds true for our data
set. [Describe data]
 We need to know the probabilities, which
depend on the unknown <M>\lambda </M>. Of course, that is noot a
problem, as we can estimate it by the sample average. Then we
have the probabilities or, rather, the estimated
probabilities. From these the expected frequecies are found
easily, by multiplying these with his total. Now we compute
the <M>\chi^2 </M> statistic as usual.

So far so good. Next we need the null distribution. Here we have
just 5 categories. So the degrees of freedom should be 5-1=4. But
no, here we have estimated one parameter, and so the degrees of
freedom will be one less than 4, ie, 3. 

The rest is as before.
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 3, Lesson 4, Video 1: Goodness of fit test</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SC t="6" done="n" id="s1">
Prussian data lab.
</SC>
</SCRIPT>

<EXRLIST id="M4L4V1">

<EXR>Find expected frequencies under the assumption of
uniformity.</EXR>

<EXR>Find d.f</EXR>

<EXR>Do chisq test by hand.</EXR>
</EXRLIST>

<EXRLIST id="M4L4V2">

<EXR>Real data. Perform test of uniformity. Accept.</EXR>

<EXR>Real data. Perform test of uniformity. Reject.</EXR>

<EXR>Real data. Perform test of given probability.</EXR>
</EXRLIST>

</LESSON>

<HEAD2>Module 3: Lesson 5: Review</HEAD2>
<LESSON>
<STKY><HEAD3>Module 3, Lesson 5 , Video 1: Review</HEAD3></STKY>
<STKY><HEAD3>Module 3, Lesson 5 , Video 2: Review</HEAD3></STKY>
</LESSON>
<HEAD1>Module 4: ANOVA</HEAD1>
<HEAD2>Module 4: Lesson 1: ANOVA concept</HEAD2>
<LESSON>
<STKY><HEAD3>Module 4, Lesson 1, Video 1: ANOVA story</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="2.80" done="n" id="s1">
Suppose that you have entered a room, that you haven't been in
before. There  you find a lamp that is on. And two switches like
these, one turned on, the other off. Just by looking at these can
you conclude which switch controls the  lamp? Since only this
switch is on, and so is the lamp, it is natural to guess that it
is this switch that controls the lamp. OK, let's now try to turn
the lamp off. We flick the switch. Well, nothing happens. We now
try the other switch. Aha, now the lamp responds.

So what's the conclusion now? Which switch really controls the
lamp? This second switch of course!

This simple example contains an important maxim: when we want to
understand the relation between input and output it is more
reliable to link changes in the input with changes in the output
than value of the input to the value of the output. 

The switch whose state (on/off) matched the state of the lamp
need not be the one controlling it. The switch whose change of
state corresponded to the lamp's change of state is the actual
controller. 

There are plenty of real life examples demonstrating this maxim. I
am ill, I take a drug and get cured in a week. Does that prove
that the drug is effective? Not until I compare this with a
similar situation where the drug is not taken. May be then also I
would have been cured in a week. Who knows? That's why it is
important to see how the output changes when the input changes. 

This basic principle sits at the heart of what we shall discuss
in this module. In many branches of science as well as in
everyday life we often have to understand the input-output
relation of a system that we treat as a blackbox unit. If the
unit is a blood pressure patient, then the input could be a drug
that may be administered in different doses and output could be
the  blood pressure measured after medication.

If the unit is a spring, then the input could be the load hung
from it, and the output would be the length of the spring. There
could be multiple inputs as well. In a typical agricultural
experiment the inputs could be the variety of crop, the
fertiliser used, system of irrigation, the area of the plot, and
the output would be the yield. [Educational equipment-->marks]
</SESS>
<JINGLE t="0.1">What are we trying to find?</JINGLE>
<SESS t="0.60" done="n" id="s2">
The main aim here is not really to assess the input-output
relation but to check which inputs influence the output and which
do not. This is like a preliminary step before embarking upon a
formal analysis to estimate the relation. And it is here that our
maxim plays a role. Change the inputs one at a time and if the
output also changes accordingly.

The next video will illustrate this with a concrete example.
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 4, Lesson 1, Video 1: ANOVA story</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="3.20" done="n" id="s1">
The example that I am going to discuss here is painfully
real. Indeed so much so, that I have to hide behind symbolic
notation lest I hurt anybody's personal feeling. 

In a certain country the people are of two religions. Call them
Religion 1 and Religion 2. A commonly held belief in that country
is that Religion 2 is against education. And even a cursory
glance at the populace seems to provide ample evidence in favour
of this belief. If you take a random sample of people following
Religion 1, and another random sample of people following
Religion 2, then indeed the educational achievements of the
latter group would be far below that for the first group. Since
education is a good thing, and people following Religion 2 have
less education, so it is claimed that Religion 2 is bad, and
keeps its followers backward. But is this indeed justified?

Well, here we can visualise this as a blackbox system. Religion
is the input and education is output. We see that change in
Religion (ie, comparison between people of different religions)
leads to change in education. So apparently the conclusion seems
justified.

Now in that
country Religion 1 used to be only religion, and there used to be
much oppression against the poor class. This class sought to
build a separate identity and fight back, and that's how Religion
2 gained currency. Even now the Religion 2 is embraced chiefly by
the poorer people of the country. Let's take a second look at our
blackbox in light of this new information. 

So now we have  another input into our blackbox, income
group. This opens up a whole new interpretation. Is it really
religion that determines the educational level or is it the
financial status. It is quite possible that poorer people get
less education, and since followers of Religion 2 are mostly
poor, we see a greater number of less educated persons among
them? A conclusion can be drawn by changing only a single factor
at a time, ie by comparing the educational levels of the rich and poor within the same
religion, and comparing religions among people of similar
financial status. Our earlier conclusion was that most the
variation in the education was due to diference in
religions. Let's show variation with a double arrow, the
thicker the arrow the more the variation. The religion arrow was
thicker meaning it accounted for  the lion's share of the output
variation, while this arrow is much thinner. 

In the new interpretation this arrow becomes thick and this
becomes thinner. 

This idea of accounting for different part of the variability in
the output by variation in the inputs is called ANalysis Of
VAriance or ANOVA. Because we are splitting or analysing the
variation and assigning the parts to different heads.
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 4, Lesson 1, Video 1: ANOVA story</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="3.20" done="n" id="s1">
When we draw a blackbox like this it looks like a machine that
takes these input and produces that output. Now the output of a machine is
supposed to be completely determined by its inputs. However,
consider this example, where the unit is a plot, input is crop
variety and fertiliser and output is yield. Even if I take two
identical pots, sow the same variety and use the same fertiliser,
is it guaranteed that the yield will be the same? No, there are
bound to be many imponderable inputs that will make the two
yields slightly different. In order to show this schematically in
our box diagram we add this input and call it the random
error. Now when we ascribe parts of the output variation to
different inputs, the part that we could not explain using the
othr inputs, all those imponderable effects are put under this
head.

To appreciate let's consider comaring the yields of three
different varieties of the same crop. The blackbox diagram is like
this. There are say 5 fields under each variety, so 15 fields in
all. We measure the yield of each plot, and that's our output. 

Consider all the output values in a number line. So we have 15
points. We have shown the varieties using different
colours. There are 5 points of each colour. Here the points of
the same colour are all tightly together with ample gap between
the points of different colours. What should our conclusion be
here? Are the varieties really different w.r.t. yield? Well,
yes. Why are the points of the same colour are exactly together?
That is because of random error. Thus, random error has its
contribution no doubt, but the effect of the varieties is far
stronger. We denote this using arrows like this. 
A fat arrow for the variety input, and a thin one for the random
error.

Compare this with this situation. Now the points of
different colours are all mixed together. Shall we say here that
the varieties really have much effect on the yield? No, here
chance plays the dominating role. So now the random error gets
the fatter arrow, and to maintain the same total the variety
input gets the slender arrow.

This simple example introduces possibly the most important
concept in the whole of ANOVA: using the arrow for the random
error input as the yard stick. We say that an input has
significant effect on the output if and only if its effect is
appreciably larger than what we anyway expect from mere
chance. Thus ANOVA is not only just about ascribing variablities
in the output to the different inputs (including random error),
but also expressing the contributions of all the inputs in terms
of that due to random error. 
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 4, Lesson 1, Video 1: ANOVA story</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="2.30" done="n" id="s1">
We have already presented the two important pillars of
ANOVA. 

* One, splitting the variation in the output into components
  ascribable to the various inputs including the random error.
* Two, using the random component of the variation as the yard
  stick of how much variability we must endure, and measuring the
  components relative to that.

Traditionally this idea is presented in the form of a table
called the ANOVA table. These tables have many intrcate details
that need not concern us here. But it is important to know the
basic structure. It has one row for each of the inputs (including
the random error of course). There is a column called source that
mentions which row is for which arrow. At the very end after this
horizontal separator line we have a row for
the total. This  corresponds to  the total veriability in the
output. The variabilities are quantified as something called the
Sum of Squares or SS  for short. This total sum of squares is the
total variablity in the output, which is being decomposed into
sum of squares due to the different sources. After this come a few more
columns which are of technical nature and hence would be skipped
here. Finally we want to express the different sums of squares
relative to this error sum of squares. In other words, we divide
these by this. Again, there are some technicalities that I am
skipping here. But the F column does basically this. Now we check
if these numbers are large enough. If any of them is, then the
corresponding source has a significant effect on the output.  

As you can see, I am glossing over certain details, partly
because the math is a bit involved, and mostly because they play
no role in the interpretation of the result. And interpretation
of the table is what we, as practising statisticians, are
primarily interested in. Still let me give you a taste of the
mathematics in a particularly simple case.
</SESS>
<JINGLE t="0.1">A simple mathematical analysis</JINGLE>
<SESS t="3.00" done="n" id="s2">
Consider our number line example once again. We had three
varieties of the same crop and measured the yields from 15 plots,
5 for each variety. 

The variability among the points of the same colour indicate the
contribution of the random error. The variability among point
clusters of the different colours is due to the contribution of
the varieties. To express these variabilities mathematically, let
us introduce a notation system. We shall denote the yields by the
letter <M>y.</M> Also we shall attach a numbering scheme to the
15 plots. Each plot will be indexed by a pair <M>(i,j),</M>
where <M>i</M> denotes the variety sowed in it (<M>i=1,2,3</M>)
and <M>j</M> is like a serial number that runs from 1 to 5 within
the same variety. Then the yield from the <M>(i,j)</M>-th plot
will be denoted by <M>y_{ij}.</M> 

Thus the dots of the same colour correspond to <M>y_{ij}</M>'s
with the same <M>i</M> and different <M>j</M>'s. The variability
among the red dots therefore may be quantified as <M>\sum_j
(y_{1j}-\bar y_{1\bullet})^2.</M> Similarly for the other
colours. So the total contribution of chance is the
sum <M>\sum_i\sum_j (y_{ij}-\bar y_{i\bullet})^2.</M> 

On the other hand, when we want to measure the contrbution due to
the varieties, we consider dots of each color as a single class
and measure the variability between the classes. For this imagine
all the points in the same class to be concentrated at the center
of the class. Let the overall mean be <M>\bar
y_{\bullet\bullet}.</M> Then the variability between the classes
corresponds to <M>\sum J (\bar y_{i\bullet}-\bar
y_{\bullet\bullet})^2.</M> 

Finally, the total variability present in the output, ie.e.,
all <M>y_{ij}</M>'s is <M>\sum \sum (y_{ij}-\bar y_{i\bullet})^2.</M> 

It comes as a pleasant surprise that we have the following
algebraic identity:
<D>
\sum \sum (y_{ij}-\bar y_{i\bullet})^2 = \sum J (\bar y_{i\bullet}-\bar
y_{\bullet\bullet})^2 + \sum_i\sum_j (y_{ij}-\bar y_{i\bullet})^2.
</D>
We shall prove this in the next video, and is exactly what we expected
intuitively. It is one of those rare moments where intuition is
borne out by mathematics exactly. 
<P/>
When we write an ANOVA table we write precisely these quantities:
<PRE>
------------
Source    SS
------------
Variety  BSS
Error    ESS
------------
Total    TSS
------------
</PRE>
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 4, Lesson 1, Video 1: ANOVA story</HEAD3></STKY>
<SCRIPT id="m/l/v">
<BC t="5" done="n" id="s1">
Proof of the 1-factor ANOVA identity.
</BC>
</SCRIPT>

<EXRLIST id="M3L1V1">

<EXR>Describe set up. Draw box diagram with unlabelled input and
output. Ask to label.</EXR>

<EXR>Ask to choose from the proper layout of data.</EXR>

<EXR>Two 1-way ANOVA numberline examples. One significant, other
not. Ask to identify.</EXR>
</EXRLIST>


<EXRLIST id="M3L1V2">

<EXR>Describe set up. Write different models. Choose the correct one.</EXR>
</EXRLIST>
</LESSON>
<HEAD2>Module 4: Lesson 2: ANOVA terms and data layout</HEAD2>
<LESSON>

<STKY><HEAD3>Module 4, Lesson 2, Video 1: ANOVA terms</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="0.50" done="n" id="s1">
When dealing with an ANOVA problem it is important to think about
the blackbox diagram. There must be at least one input apart from
the inevitable random error input, and exactly one output. The
traditional theory of ANOVA requires the output to be continuous,
and the random error input to be continuous as well. The other
inputs may be categorical or continuous. 

If all the non-random inputs are categorical we call it an ANOVA
set up. If all the non-random inputs are continuous we generally
call it a regression set up. If there is at least one categorical
and one continuous non-random input, then it is an ANCOVA set
up. Here ANCOVA means ANalysis of COVAriance.

The categorical inputs are called factors and the continuous
inputs are called covariates in ANOVA parlance. 
If there are exactly <M>k</M> categorical inputs and no
continuous input, then we
have a <M>k</M>-factor ANOVA. If we also have at least one
continuous input, then it is <M>k</M>-factor ANCOVA. The number
of covariates does not feature in the nomenclature. 

In this module we shall focus on only 1-factor and 2-factor
ANOVA. 

Next let us understand the nature of data that we need in order
to carry out ANOVA.
</SESS>
<JINGLE t="0.1">Data</JINGLE>
<SESS t="4.50" done="n" id="s2">
The main aim in ANOVA is to explore a blackbox system to see
which inputs have any appreciable effect on the output. For this
it is important to keep two  basic principle in mind: 

* First, change each input

* Second, change them one at a time. 

Let's take a closer look at the first. If you are interested in
assessing if the drug is effective, it is not enough to apply the
drug to some patients and see its effect. You must also not give
the drug to some other similar patients, and see the difference
between the patients who got the drug and those who
didn't. This gives rise to the wellknown concept of placebo in
clinical studies, where a dummy drug is given to one group and
the true drug is given to the another group. The dummy drug has
no medical value, it is just to keep the patients happy so that
no psychological effect creeps in. The group of patuents who did
not get the real drug is usually called the control group. 

Next we come to the second point: changing the inputs one at a time.
If you always change multiple inputs simulateneously it
will be impossible to figure out which input caused the output to
change. It's like I have a fever. My wife suggests visiting an
alopathc doctor while a freind suggests seeking homeopathic
medication. Unwilling to displease either, I take both types of
medicine, and get cured. Now which doctor should get the credit?
Or may be the medicines reacted together to form a new chemical
which cured me! Such a situation where two or more inputs have
changed together so that the change in output cannot be clearly
ascribed to either is called confounding. And this should better
be avoided. 

To avoid confounding we have to lay out our data carefully. Let's
say we have a medicine whose effectiveness we are trying to test,
and we suspect that smoking habit might influence the
effectiveness. So we have two inputs drug and smoking habit. We
know that each input should be changed. Accordingly I have two
possible values for the drug input: real drug and placebo, and
two values for the smoking habit input: smoker and non-smoker. 
So I have a 2x2 layout. It is important that I have
representatives from all the 4 cells. That is I must give the
real drug to some smokers, placebo to some other smokers, the
real drug to some non-smokers and also the placebo to some
non-smokers. Is the drug effective? To answer this we can then
compare this group with this, and that group with that. But if we
just confine our study to these cells, ie, give the real drug to
only smokers and placebo to only non-smokers then drug effect and
smoking effect will be confounded. This way of laying out the
parients in a rectangular array allowing for all possible
combination is called a factorial design, and the cells are often
called blocks. 

The same principle of changing only one input at a time gives
rise to another concept called replication. Remember that random
error is also one input, that we have to control on. So it is
always changing. In order to let it change alone we must hold all
the other inputs fixed for some time. Let's understand this with
the drug example. We had the 2x2 layout. In each cell we must
have at least two patients (though more patients per cell would
be better). When we compare the outputs for the patients in the
same cell their variation must be solely due to the random error
input, and so we can form an idea about the inevitable amount of variability
that we may expect due to chance alone. As we know this amount is
very important, as this is going to be yard stick w.r.t which all
the other variabilities are to be measured.

If the units are human beings, then we often assign them to
different groups blindly, ie, without telling them their true
groups. If there are two drugs, they are given identical external
appearance. Sometimes even the experimenter is not allowed to
know the true groups until the data collection and analysis is
finished. This is called double blind. 
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 4, Lesson 2, Video 1: ANOVA terms</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="6" done="n" id="s1">
When collecting data it is good to think in terms of the balckbox
diagram. Each input arrow (excluding the random error) and output
arrow corresponds to a variable, ie, a column in the data
matrix. Each time you measure the values for the inputs
(excluding the random error, of coure) and the output, you get a
case. 

Let's consider a concrete example. Each unit in the blackbox is
an insomnia patient. The inputs are drug, age group and
gender. The amount is the increase in amount of sleep after
medication. Let's say drug has three levels Drug 1, Drug 2 and
Placebo. There are three age groups, Younf, Midle, Old. Two
genders Male and Female. So imagine that we approach each patient
with a blank form where the variable names are fields. We fill in
the blanks approapriately for each patient. Collating all the
filled in forms we get a data matrix like this. This is the data
layout required by most standard statistical softwares like R, SAS,
SPSS, Systat, Stata. 

However, LibreOffice expects a
different layout, which is somewhat more intuitive. First let me
admit that LibreOffice cannot handle ANOVA in its full
generality. It can handle only 1-factor and 2-factor ANOVA. The
simple data layout that LibreOffice expects is possible only for
these simple cases. So let's simplify our example to retain only
the Drug input. Then we have a 1-factor ANOVA set up. 
[Explain the rest and also 2-factor layout]
</SESS>
</SCRIPT>
<EXRLIST id="M3L2V1">

<EXR>Describe set up. Ask to classify. One-way.</EXR>

<EXR>Describe set up. Ask to classify. One-way, ANCOVA</EXR>

<EXR>Describe set up. Ask to classify. two-way.</EXR>
</EXRLIST>


</LESSON>
<HEAD2>Module 4: Lesson 3: ANOVA table</HEAD2>
<LESSON>
<STKY><HEAD3>Module 4, Lesson 3, Video 1: ANOVA table</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="0" done="n" id="s1">
We have aleady seen ANOVA tables. They sit at the heart of ANOVA
and is the traditional way to present the result of ANOVA. Let us
take an example. We are comparing three varieties of paddy and two
fertilisers in terms of the yield. To
understand ANOVA tables it is important to visualise the set up
as a blackbox diagram.

 An  ANOVA table has as many rows as
components into which we want to split up the variability of the
output. In the basic version of the ANOVA table this equals the
number of input arrows (including the random error).  Plus there
is one total row for the output arrow. The very first column is
called the Source column and describes each input arrow. The last
non-total row is always reserved for the random error. Thus here
the source column looks like this. The next column is for the
variabilities called sum of squares. The exact formulae are of no
concern here. 

</SESS>
</SCRIPT>

<STKY><HEAD3>Module 4, Lesson 3, Video 1: ANOVA table</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SC t="6" done="n" id="s1">
Fake data, one way and two way.
</SC>
</SCRIPT>

<STKY><HEAD3>Module 4, Lesson 3, Video 1: ANOVA table</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SC t="6" done="n" id="s1">
Real data
</SC>
</SCRIPT>

<EXRLIST id="M3L2V2">

<EXR>Real data: one way estimation.</EXR>
<EXR>Real data: two way estimation.</EXR>
<EXR>Real data: ANCOVA estimation.</EXR>
</EXRLIST>

<EXRLIST id="M3L3V1">

<EXR>Show table. Ask to accept/reject.</EXR>

<EXR>Show incomplete table. Ask to complete MS column based on
given SS and d.f. columns.</EXR>

<EXR>Describe set up. Ask to provide d.f.</EXR>
</EXRLIST>

</LESSON>
<HEAD2>Module 4: Lesson 4: Interaction</HEAD2>
<LESSON>
<STKY><HEAD3>Module 4, Lesson 4, Video 1: Interaction (through story)</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="1.90" done="n" id="s1">
We had started our discussion of ANOVA with a story, the story of
a room with a lamp and two switches. The actual circuitry that
connected the inputs to the output, ie, the switches to the lamp
was unknown, a blackbox, and we had to try out various values for
the input and observe the output values for them in order to get
an idea of the inner working of the blackbox. 

Well, we are back to a similar room, again two switches and a
lamp. But this time everything is turned off. Our aim as before
is to figure out the input output relation. Let's start by
flicking this switch. Well, nothing happens. Looks like this is
not out switch. OK, let's return
it to its original state. Now we flick the other one. Oops, this
is also seems to be ineffective. Or may be the lamp is fused? In
dismay we play with the first switch again, turn it on. Wow, the
lamp turns on. But didn't we turn this switch on just now also
without any effect. How come it has suddenly come back to life?
May be this switch is alive too now. Let's turn it off. Wow, this
also seems to control the lamp. Earlier neither seemed to have
any control, and now mysteriously both are controlling the
lamp. So I can control the lamp by the first switch [flick
on/off], oops it has gone to sleep once again. Let's try the
other one. [flick] Boy this is dead again too. This room sure is
spooky. Or is it?
</SESS>
<JINGLE t="0.1">The mystery</JINGLE>
<SESS t="1.20" done="n" id="s2">
Well, there is nothing really spooky about the switches. They are
basically connected in series like this. So when one of them is
off the circuit is already broken, and so the other switch has no
control. But if one switch is turned on, then it fate of the lamp
is controlled by the other switch. 

Now we are not here to discuss electric circuits really. My point
here is that it is possible to have situations more complex than
what we had started with in our first example, where each switch
was either controlling the lamp or not. Each behaved
independently of the other. Here the effect of one switch
in influenced by the other switch. So we do not have a simple yes
or no anwer to the question: Does switch 1 control the lamp? The
answer depends on the curent state of switch 2. If that switch is
off, then the answer is no, if that switch is on, then the answer
is yes. 

In such a situation where the two switches are kind of entangled
together, we say that there is interaction between the two inputs.
</SESS>
<JINGLE t="0.1">Interaction</JINGLE>
<SESS t="1.30" done="n" id="s3">
In general consider our familiar blackbox diagram again. We say
two inputs have interaction if the effect of one depends on the
the value of the other. It is quite possible for even three or
more inputs to be tied into an interaction. There combined effect
is called the interaction effect. Had there been no interaction,
then their individual effects are called main effects. Let's
understand this using our switch and lamp examples. In our very
first example we had two
switches, and they could be either on or off. So we have this 2x2
table. Now the first dwitch did not control the lamp, the second
one did. So the same fate of the lamp over the entire column, and
hence may be factored out into the  margins.[anim] Nothing
remained for the row margins. These
crosses mean "no effect". These marginals are the main effect. 
In the second case however, situation
was like this. Now we do not have the rowwise or columnwise
pattern. So we cannot factor things out into the margins. The
cell entries give the interaction effects.
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 4, Lesson 4, Video 1: Interaction (through story)</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="3.40" done="n" id="s1">
In the last video we saw some expository examples of
interaction. Here we shall see how interaction occurs in real
life. In any example of interaction we must have at least two
inputs (excluding random error). Our first example will be where
the two inputs linked by interaction are both categorical. 

Consider an agricultural experiment where we are interested in
assessing the effect on yield of two varieties of wheat and three
different fertilisers. Here is the blackbox diagram. Two inputs
variety and fertiliser (plus of course the inevtiable random
error). The output is yield. Typically such an experiment will
need as 2x3 layout like this. In each of the 6 cells we shall
take at least two plots. Let's take exactly 2 plots in each. By the way,
this is called a balanced layout, since we take the same number
of plots in each cell. We shall index the plots
as <M>(i,j,k)</M>, where <M>(i,j)</M> refers to the cell
ie, <M>i</M>-th variety and <M>j</M>-th fertiliser, and <M>k</M>
is serial number (which is either 1 or 2) within the cell. The yield
from the <M>(i,j,k)</M>-th plot will be called <M>y_{ijk}.</M> 

To appreciate interaction in this context let's compute the
average yield for each of the 6 cells:
<D>
\bar y_{ij\bullet} = [[y_{ij1}+y_{ij2}][2]].
</D>
Now consider averages in the first row, ie for variety 1. We
plot them like this. We get three points. We shall join with
lines. Since we are working with categorical variables in the
horizontal axis, joining them with lines is not entirely
justified, but still it is a common practice  to aid visual
interpretation.  The shape that we get like this will be called
the profile for variety 1. Next we shall draw the profile for
variety 2, on the same plot. Te profiles turn out to be more or
less parallel. This allows us to meaningfully ask questions about
the varieties and fertilisers separately. For instance, which
fertiliser produces the highest yield? Answer is fertiliser
2. Which variety yields less? Variety 1. 

Now consider another example.[anim clone] Now the yields from the plots are such that the two
profiles are not parallel.[anim] Now the question "Which fertiliser
is the most productive?" does not have a clear answer. We need to
know which variety we are talking about. Fertiliser 3 is the best
for variety 1 and fertiliser 3 for variety 2. 

Since the effect of variety now is influenced by the choice of
variety, we have interaction between variety and fertiliser
here. In the earlier case there was no interaction. This chart is
called an interaction chart. It is valuable graphical device in
ANOVA whenever there are multiple categorical inputs.

In the next video we shall see how to make such charts in LibreOffice.
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 4, Lesson 4, Video 1: Interaction (through story)</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SC t="5" done="n" id="s1">
Interaction chart.
</SC>
</SCRIPT>

<STKY><HEAD3>Module 4, Lesson 4, Video 1: Interaction (through story)</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="1.50" done="n" id="s1">
We have seen examples of interaction between two categorical
inputs. In this video we shall see how a categorical input may be
locked in interaction with a continuous input or covariate. 

Consider this data set where we have three variables height,
weight and gender of some adult persons. Our aim is to see if
height has influence on weight, and if the height weight relation
is the same for both genders. 

Let's make a scatterplot using colour coding for gender. We are
deliberately using two toy data sets here, so that we can
demonstrate the two possibilities. In the first case the lines
are parallel. Thus a given increase in height results in the same
avrage of increas in weight irrespective of gender. This is the
no interaction case. But here that is not the case, as the slopes
are different. Hence we say that there is interaction. 

As we know main effect ceases to be meaningful in presence of
interaction. For instance, "how much heavier should be a person who is 2
inches taller?" is a main effect quesion regarding the height
input alone. It can be answered for the no-interaction case, but
not for the interaction case. There we need to answer the
questions differently for the two genders.

The next video will quickly remaind us how to create a colour
coded scatterplot like the ones used here.
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 4, Lesson 4, Video 1: Interaction (through story)</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SC t="5" done="n" id="s1">
Color coded scatterplot.
</SC>
</SCRIPT>
<EXRLIST id="M3L4V1">

<EXR>Show interaction chart and ask if significant. Intersecting</EXR>

<EXR>Show interaction chart and ask if significant. Parallel</EXR>

<EXR>Show interaction chart and ask if significant. Yes, no
intersection, but not parallel.</EXR>


<EXR>Significant interaction. Ask about main effect. Meaningful? No.</EXR>
</EXRLIST>


<EXRLIST id="M3L4V2">
<EXR>Make from data and interpret. Parallel.</EXR>
<EXR>Make from data and interpret. Nonparallel.</EXR>
</EXRLIST>
</LESSON>
<HEAD2>Module 4: Lesson 5: Review</HEAD2>
<LESSON>
<STKY><HEAD3>Module 4, Lesson 5 , Video 1: Review</HEAD3></STKY>
<STKY><HEAD3>Module 4, Lesson 5 , Video 2: Review</HEAD3></STKY>
</LESSON>
<HEAD1>Module 5: Regression</HEAD1>

<HEAD2>Module 5: Lesson 1: Regression concept</HEAD2>
<LESSON>
<STKY><HEAD3>Module 5, Lesson 1, Video 1: The concept</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="2.30" done="n" id="s1">
We had mentioned scatterplots in the Basic Statitics course. They
are an important visual tool to assess the relation between two
continuous variables. Fir instance, consider this toy data set of
height and weight. The scatterplot looks like this. Here you can
see a linear pattern. I said a linear pattern, not a
line. Because not all the points are lying exactly on a line. But
still w can feel the presence of a line. Our aim is to capture
that line mathemarically. Let's frst try by eye estimation. Let's
consider this line. Is this a good fit? Since not all the points are exactly on a
line, whatever line we draw is bound to miss some points. But
this line goes far from the cloud of points. We need something
right through this cloud, like this. This is much better. Now
what about this? Well, this looks fine too. If I ask you choose
one of these two good fits, which one would you choose? Hard to
say by visual inspection alone. So you see the two problems that
lie in the way to mathematically capturing the best line.

* First, how to do mathematically what the eye does easily:
avoiding such lines that are wide off the mark.

* Second, how to do what eye cannot do: choosing objectively the
best among such best contenders.

Before we go into urther details, let me tell you that the
problem is not specific to linear patterns alone. Consider this
scatterplot that shows a curved pattern like a parabola. Surely
this parabola is a bad fit[shift], as is this one[scale]. We
would like to have a good fit like this. And somehow we also want
an objective satisfaction of having chosen the best fit.

This is the problem of regression. It has two aspects:

* Choosing the right form (like a straight line or parabola or
something else)

* and then picking the best line of that form.
</SESS>
<SESS t="1.10" done="n" id="s2">
Most of the time we choose the form either by visual inspection
or by domain knowledge, eg, we know that projectiles near the
ground move along parabolic paths. Any such mathematical form is
characterised by some parameters eg, a straight line by the
form <M>y = a + bx,</M> where <M>a</M> and <M>b</M> are the
parameters. A parabola has the form <M>y = a + bx + cx^2,</M>
where <M>a,b,c</M> are the parameters. Choosing the form is the
first step.

Once we have finished choosing the form the next step os t
estimate the values of the parameters. 

Regression that proceeds in these two steps is called parametric
regression.

If, however, we want to automate even the first step, namely
choosing the form, then we need what is called nonparametric
regression. This course will only discuss parametric regression.

</SESS>
</SCRIPT>
<EXRLIST id="M5L1V1">

<EXR>Show plot. Classify as
increasing/decreasing/nonlinear.</EXR>

<EXR>Strong relation, weak relation.</EXR>
</EXRLIST>

<STKY><HEAD3>Module 5, Lesson 1, Video 2: Mathematical formulation</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="2.90" done="n" id="s1">
Here is a scatterplot. We discern a linear pattern. So we try to
fit a straight line to the data cloud. That means looking for a
line like <M>y=a+bx.</M> Here <M>a</M> and <M>b</M> are the two
parameters. The first parameter is called the intercept, the
second the slope. We are looking for optimal values for them. To
appreciate the problem imagine that there are two sliders one
for <M>a</M> the other for <M>b.</M> If I move the <M>a</M>
slider then the line shifts up and down remaining parallel to
itself. If I move the <M>b</M> slider then the line rotates
around the point where it hits vertical axis. Our aim is to
find <M>a</M> and <M>b</M> such that the line passes as close as
possible to all the data points. 

Now the way I described it, is looking at data. But as I have
saying again and again, statistics is all about looking through
data at the underlying truth. So let's understand the underlying
truth here. It will help to visualise the set up as a measurng
the length of a spring from which we are hanging different
weights. The weight we hang is <M>x</M> and the measured length
is <M>y.</M> Every time we choose a weight to hang, ie we choose
a value for <M>x,</M> nature decides about the length in two
steps. First, she uses two fixed numbers <M>\alpha </M>
and <M>\beta</M> (depending on the spring used), and
computes <M>\alpha + \beta x.</M> Then in the second step she
adds a little random error <M>\epsilon</M> to it to get <M>y =
\alpha + \beta x + \epsilon,</M> which she discloses to the
statistician. This is what happens in each measurement,
the <M>\alpha </M> and <M>\beta </M> remain the same, but the
random error keeps on changing. So we get this  model:
<D>
y_i = \alpha + \beta x_i + \epsilon_i
</D>
for <M>i=1,...,n.</M> There is also some assumption on the random
errors. They are assumed to be independent with normal
distribution having mean 0 and some unknown variance <M>\sigma^2.</M> 

This is called the regression model.

Now the problem is to estimate <M>\alpha</M> and <M>\beta.</M> A secondary problem is
to estimate <M>\sigma^2,</M> which measures the accuracy of the
line. 
</SESS>
</SCRIPT>
<EXRLIST id="M5L1V2">

<EXR>Show plots of errors as lines (vertical, horizontal,
perp). Ask to identify least squares.</EXR>
</EXRLIST>
</LESSON>
<HEAD2>Module 5: Lesson 2: Least squares</HEAD2>
<LESSON>
<STKY><HEAD3>Module 5, Lesson 2, Video 1: Least squares</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="0.50" done="n" id="s1">
Here we shall describe the most popular technique for
regression. We shall explain the idea with fitting a straight
line, bu the idea is equally valid for other types of lines, like
parabolas. 

We have already mentioned the idea of thinking of fitting a
line <M>y = a + bx</M> by imagining that we have sliders
for <M>a</M> and <M>b.</M>
</SESS>
<SC t="4" done="n" id="s1">
Show the vertical error lines.
</SC>
<JINGLE t="0.1">Mathematically</JINGLE>
<SESS t="0.70" done="n" id="s1">
For any given values of <M>a</M> and <M>b</M> we have the total
error 
<D>
S(a,b) = \sum (y_i - (a+b x_i))^2.
</D>
We want to minimise this w.r.t. <M>a</M> and <M>b.</M> A little
mathematics shows that the minimum occurs when 
<D>
b = ... \text{ and } a = \bar y - b \bar x.
</D>
So we say <M>\hat \beta  = ...</M> and <M>\hat \alpha   =
...</M>. 

This <M>\hat \beta </M> is called the estimated regression
coefficient.

An estimator for <M>\sigma^2 </M> is ...

</SESS>
</SCRIPT>

<STKY><HEAD3>Module 5, Lesson 2, Video 1: Least squares</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="1.10" done="n" id="s1">
We have learned one way to estimate <M>\alpha </M>
and <M>\beta.</M> The estimators have some interesting properties
that we want to discuss here. First, the regression coefficient
is of the form <M>[[\cos(x,y)][\var(x)]].</M> And second the
estimated line always passes through the centre of the data cloud <M>(\bar x, bar y).</M>


As we have already mentioned in an earlier lesson, statisticians
always worry about the sampling distributions of the
estimators, in particular their bias and standard error. It may
be shown that both the estimators are unbiased.  Also their
standard errors are given by ... 

Don't be scared by the formulae. When you compute them for a
given data set, they are just two numbers. If the numbers are
large, then that is a cause for worry, because large standard
errors mean inaccurate estimators. 
</SESS>
</SCRIPT>
<EXRLIST id="M5L2V1">

<EXR>
Show plots of errors as lines (vertical, horizontal, perp). Ask
to identify least squares.
</EXR>

<EXR>Show bad fit. Ask to improve by lift, lower, swing
clockwise, swing counter-clockwise.</EXR>
</EXRLIST>


<EXRLIST id="M5L2V2">

<EXR>Fit least squares to toy data with intercept.</EXR>

<EXR>Fit least squares to toy data without intercept.</EXR>

<EXR>Anscombe.</EXR>
</EXRLIST>
</LESSON>
<HEAD2>Module 5: Lesson 3: Real life data</HEAD2>
<LESSON>
<STKY><HEAD3>Module 5, Lesson 3, Video 1: Real life data</HEAD3></STKY>

<EXRLIST id="M5L3V1">

<EXR>Real life data. Show plot. Ask for estimate by inspection.</EXR>
<EXR>Real life data. Ask to guess sign of coeff.</EXR>
<EXR>Real life data. Ask to juudge if intercept should be present.</EXR>
</EXRLIST>


<EXRLIST id="M5L3V2">

<EXR>Real life data.</EXR>
<EXR>Real life data.</EXR>
<EXR>Real life data.</EXR>
</EXRLIST>
</LESSON>
<HEAD2>Module 5: Lesson 4: Residuals, outliers, leverage</HEAD2>
<LESSON>
<STKY><HEAD3>Module 5, Lesson 4, Video 1: Residuals (theory) </HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="2.00" done="n" id="s1">
We have mentioned that statisticians look through data rather
than loot at data. They look through data at an underlying truth,
that is at least partly unknown. Unless some part of this truth
is assumed to be known it becomes impossible to make any
progress. But how can part of the truth be already known
beforehand? Sometimes from past experience or expert opinion. But
more often it is just an untested  gut feeling of the statistician that is
accepted at face value. Clearly any method built on such
unverified premise has a possibility of going wrong. So a
statistician must carefully assess the success of any proposed
method to detect any mistake in his original assumptions. Indeed,
this is the most important point where a professional statistcian
differs from an amateur one. It is not diffcult to become an
amateur statitician by learning a few
standard statistical softwares and applying their canned routines to a data
set. But that often leads to erroneous results, unless the
assumptions underlying the methods are carefully checked, and
appropriate measures taken in case the assumptions fail. It is
like driving a car. Pressing on the gas pedal and turning the
steering wheel are easy when everything goes according to your plan. The difficulty lies in
swerving your vehicle in time when a car comes at you unexpectedly from the other
direction. 

This idea of cross checking the basic assumptions after applying
a statistical method is a general principle applicable everywhere
in statistics. But its need is seldom felt more strongly than in
regression, because there the original assumptions often fail,
and a plethora of tools are available to rectify a failed
assumption. All these together are called Regression Diagnostics.
</SESS>
<JINGLE t="0.1">Regression diagonsotics</JINGLE>
<SESS t="1.30" done="n" id="s1">
Remember we had the assumption <M>y_i = \alpha + \beta x_i +
\epsilon_i,</M> where the <M>\epsilon_i</M>'s were supposed to be
iid with normal distribution having mean 0. As we cannot observe
the <M>\epsilon_i</M>'s, how can we hope to check this
assumption? Here is a way. After estimating <M>\alpha</M>
and <M>\beta </M> as <M>\hat \alpha </M> and <M>\hat \beta </M>
we can compute <M>\hat \epsilon_i = y_i-\hat \alpha - \hat \beta
x_i.</M> These are not same as <M>\epsilon_i</M>'s, just
as <M>\hat \alpha </M> is not the same as <M>\alpha.</M> These
are called the residuals. and give an idea about the
actual <M>\epsilon_i</M>'s which are unobserved. Plotting these
residuals against the <M>x_i</M>'s produces a residual plot. This
plot should ideally show no pattern. Like this. But if it does, then that is
to be construed as a shortcoming of the originally assumed
model. 

For example if the residual plot looks like this, where there a
slightly curved pattern, then possibly we should have included a
curvature in the model to start with. 

The next video will show such an example.
</SESS>
</SCRIPT>
<STKY><HEAD3>Module 5, Lesson 4, Video 2: Residuals (lab) </HEAD3></STKY>
<SCRIPT id="m/l/v">
<SC t="6" done="n" id="s1">
Computing residuals. Plotting them. y=1/x model.
</SC>
</SCRIPT>

<STKY><HEAD3>Module 5, Lesson 4, Video 3: Outiers, leverage (theory) </HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="1.70" done="n" id="s1">
We have talked about outliers in our Basic Statistics course
already. Roughl speaking these are points that lie far away from
the main bulk of the data. For instance these two points in this
scatterplot are outliers, while these points are not. There are
two main types of outliers. Those with leverage and those without
it. In this and the next video we shall learn about them. 

Outliers, whether with or without leverage, must be studies
carefully. They are born out of unexpected reasons, which may be
just a typo, or a glimpse of an unknown behaviour. Whether an
outlier has leverage or not is determined by how much effect it
has to turn the fitted model towards itself. Consider this
scatterplot. The least squares line is this. Now consider an
outlier here. Here the least squares line moves only slightly
away due to the presence of the outlier. We say that this outlier
has low leverage. Such outliers are less harmful. 

Next consider an outlier here. Here the least squares line swings
a lot towards that point. Somehow this point exercises so much
pull on the line that this single point can force the line to
move away from bulk of the points. We say that this point has a lot
of leverage. Clearly such outliers are more dangerous. It is
important to remove them if we want to fit a line showing the
true pattern of the points.
</SESS>
<JINGLE t="0.1">Why leverage</JINGLE>
<SESS t="1.60" done="n" id="s2">

As may be guessed from the two examples, leverage of a point
determines on how far it is from the centre of the data along
the <M>x</M>-direction. This point, though away from the bulk of
the points, was close to the centre along
the <M>x</M>-direction. However, this point was far away from the
bulk of the points along the <M>x</M>-direction.

In fact, leverage is a property of the all the points, whether an
outlier or not. Every point has some leverage. Points near the
extreme along the <M>x</M>-direction have greater leverage. In
general, points with high leverage are not bad. In fact, if you
have a point here, it is good for the least squares fit, because
it strengthens our faith in the line when we see that even this
far away point still follows the same pattern. However, outlier
with high leverage must be removed before we accept the fitted
line. 

As outlier with high leverage tend to swing the fitted lies
towards themselves, these points may not have high residuals. So
a residual plot need not show these points clearly. There are
quite a few sophisticated techniques to measure leverage of
point. We shall not go into them. For our course simple visual
inspection of the scatterplot is enough.
</SESS>
</SCRIPT>
<STKY><HEAD3>Module 5, Lesson 4, Video 4: Outiers, leverage (lab) </HEAD3></STKY>
<SCRIPT id="m/l/v">
<SC t="6" done="n" id="s1">
Outliers, leverage plots.
</SC>
</SCRIPT>
<EXRLIST id="M5L4V1">

<EXR>Show scatter plot. Ask to identify outlier.</EXR>
<EXR>Show scatter plot. Ask to identify leverage point.</EXR>

<EXR>Toy data. Fit, drop and refit. Ask for change.</EXR>

<EXR>Show residual plots. Ask to identify good one.</EXR>
</EXRLIST>

<EXRLIST id="M5L4V2">

<EXR>Real data with outlier. Identify.</EXR>
<EXR>Make resudual plot.</EXR>
</EXRLIST>
</LESSON>
<HEAD2>Module 5: Lesson 5: Review</HEAD2>
<LESSON>
<STKY><HEAD3>Module 5, Lesson 5 , Video 1: Review</HEAD3></STKY>
<STKY><HEAD3>Module 5, Lesson 5 , Video 2: Review</HEAD3></STKY>

</LESSON>
<HEAD1>Module 6: Time series analysis</HEAD1>

<HEAD2>Module 6: Lesson 1: Time series concept</HEAD2>
<LESSON>
<STKY><HEAD3>Module 6, Lesson 1, Video 1: Concept: What it is</HEAD3></STKY>

<SCRIPT id="m/l/v">
<SESS t="5.90" done="n" id="s1">
To be able to predict the future has always been the dream of
man. From science to science fiction, from astronomy to
astrology, from stock market to politics, from mythology to meteorology we see ample evidence of
man's fascinaion with predicting the future. Ancient mythology of
every culture is rife with people endowed with the  super human
power of seeing the future. Weather forecast is part of our every
day life. Politicians analyse popularity trend and try to predict
the outcome of polls, share holders try to predict market trends.

Except in purely fiction, all attempts to predict the future,
whether successful or not, depend on the same basic technique:
analysing past data, and looking for patterns in how the values have been
evolving over time, and applying the same pattern for the future
as well. 

And that is what time series is all about. A time series 
consists of values of one or more  variables
over time, to understand its temporal behaviour. In such a data
set time is always one of the variables, and there is at least
another variable whose values are evolving with time.

A time series is completely different from the other types of
data we have handled so far. And this diffeence must be borne in
mind while working with time series. We had the mental picture of
some underlying distribution from which the data are being
generated. The idea was something like a coin toss, where the
same coin is being again and again. So the more tosses you have
the more likely you are to see statistical regularity to set
in. However, for the situation is different for a time
series. Here the underlying distribution may itself evolve with
time. Thus, the second value in a time series need not come from
the same distribution as the first one. This makes time series
analysis much more challenging than the type of data analysis we
have encountered so far. You might think of this analogy. I have
many coins laid out in a row. I toss each coin once, and try to
infer about the probability of head for all the coins. This is an
impossible task to achieve, because the coins are different, and
I have outcome of only a single toss for each coin. As a result
all time series analysis methods start by putting lots of
assumptions that prevent the underlying process from evolving too
much. Most of the time these assumptions, or time series models
as they are called are themselves quite complicated. Later in
this module we shall take a look at a simple time series model. 

Whatever we do takes time. And data collection is no
exception. In that sense most data sets should be called time
series data, unless all the cases where recorded in parallel. For
instance, if I am interviewing  100 households regarding some
demographic survey I am doing so sequentally over time. Should I
call that a time series data? Not really, because I do not expect
the underlying situation to have evolved much  during that
period. On the other hand if we are measuring the amount of
suspended particulate matter in the air at some crossing in a
city for a year, then it is definitely a time series, because the
amount of dust in the air is likely to vary in a systematic way
over the weekdays and weekends. The main aim behind any
statistical analysis is to account for variation in the
values. If you suspect that time possibly accounts for a
significant portion of the variation, then and only then you
designate that data as a time series.


Most time series analysis methods expect the data to be regularly
spaced in time. This temporal frequency is often mentioned in the
title of the data set, like daily rainfall, or monthly sales or
annual production. Thus, each value in a time series need not be
associated with a time point, but rather a time interval. Usually
each value asociated with a time interval is some kind of a
summary value of multiple actual measurements made during the
interval. For example it could be the total sales for a month, or
average pollution level over a day. Indeed, associating a value
with an interval rather than a single time point allows the data
collectors to avoid a serious problem, the problem of missing
data. Since we cannot go back in time, so if we failed to collect
data in time, then there is no way we can get it back later. By
the time we come back, the process has possibly evolved into
something new. But when we areport a single average value for a week, we
can still make up for the missing value by making other
measurements during the same week. 


In the modern days, when much of the data are collected by
sensors connected to microcontrollers, there is a boom of time
series data. These data sets often have very time resolution, ie,
we may have temperature sensed every minute. Such time series are
used very much by doctors. We are all familiar with ECG. From the
statistical viewpont they are nothing but time series data. 
</SESS>
</SCRIPT>
<EXRLIST id="M6L1V1">

<EXR>Describe different data scenarios. Ask to identify time
series.</EXR>
</EXRLIST>


<STKY><HEAD3>Module 6, Lesson 1, Video 2: Concept: Estimation, prediction, smoothing</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="4.30" done="n" id="s1">
Why do we care about time series data? 
The primary aim of time series analysis is, as I have already
mentioned, prediction. Trying to extrapolate patterns from the
past to guess what is going to happen in future. I shall mention
here three surprisingly different variations of situations where
time series are analysed with the chief goal of predicting the
future:

* The first variant is what we already know about. Predicting the
stock market. To be forewarned is to be fore armed. Is the motto
in economics. That is why we try to predict GDP, cost of houses,
or agricultural yield.

* A drastically different application of prediction is active
noise cancellation that is used to cancel noise by an
artificially generate counter-noise!
Imagine a noisy engine. The sound that it produces is a basically
a time series of the vibration of the air molecules. Now the
vibration is caused by applying force on the molecules. So if we
can apply just the opposite force on the air molecules at the
right time, then the air milecules can be made to remain
stationary. Such a counterbalancing force may be applied by
generating another noise. But this noise needs to mimick the
original noise very closely in order to be able to cancel it. So
the game is like this. A sensor picks up the noise,
mathematically inverts it, produces the counter noise and
releases in the air. All this takes a fraction of a second, but
even within that fraction the force applied by the original sound
has changed (it is a vibration after all, so forces are changing
to and fro all the time). So the counter noise we are producing
now should actually mimick the actual noise to be produced a
fraction of a second in the future. So that's where prediction
comes into play. Predicting just a fraction of a second ahead,
but still that's a prediction nonetheless. Any error in that
prediction will mean the counter noise will not cancel the true
noise, and may actually lead to even more noise.

* Another quite different type of prediction is needed in
tracking an air craft. Indeed, this application has given time
series analysis a frequntly used tool called Kalman
Filtering. The situation is like this. We are tracking a flying
aircraft. Our camera has located it as a tiny dot in the vast sky
and steadily moving always keeping the crosshair on the
aircraft. Suddenly a piece of cloud comes along, and the camera
loes the aircraft in it. Of course, the air craft is sure to
emerge out of the cloud and the camera should wit for that. But
where exactly should it point in order to pick up its
target. Starting to look al over sky is quite time consuming, and
the air craft may very well pass out of sight during the time the
camera is scouring the sky. A little time series analysis helps
here. During the time the camera was locked onto the air craft,
we knew how its position was changing over time, a time
series. So we have an idea of its speed, acceleration turning etc
just the moment before it disappeared. Well, it won't be very
unreasonable to assume that the aircraft continued the motion
more or less in the same way even when it was hidden behind the
cloud. So we can predict where the aircraft will be at a given
time point in the future. Remember we are talking of distant
future here, may be just a few seconds or at most a minute
ahead. So we continue to move the camera acclording the predicted
path, also keeping an eye on the sky in its vicinity. This
markedly improves the chance of picking up the lost aircraft
again after it emerges. 

So we learned about three types of
prediction. The next video will take up a different application
of time series. 
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 6, Lesson 1, Video 2: Concept: Estimation, prediction, smoothing</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="3.20" done="n" id="s2">
Prediction is definitely the most important aim behind analysing
a time series. 
However, that is not the only 
application. Sometimes time series data are analysed for the
purpose of understanding the process generating the time
series. We shall mention three examples chosen from as diverse
fields as possible to provide an idea about the gamut of
application.

* Let's do a though experiment. Imagine that you are driving down an uneven road. Naturally
everything inside a car is shaking. An accelerometer
embedded in the car is keeping track of the bumpiness of the ride
and produces this  time series. You can see  ups
and downs in it. They are more or less regular except here, where
they seem much more rapid. Clearly, the car was shaking a lot
here, possibly over a particularly rough patch in the road. Now
imagine the same plot, but not in the context of a car ride. This
time consider this as a plot of the market price of some
stock. Then this rough portion denotes a period of greater
volatility. These periods are of great importance of market
analysts. They often try to explain the volatility of the market
in terms of what happened before it. 

* I am sure you use a mobiel phone. You may not be aware that
rather sophisticated time series analysis is needed to keep in
running. Indeed, so important is this application area, that it
has a special name Signal processing, which is often considered a
subject of its own, extending well beyond staistical time series
analysis. Some of the most important tools used in staistical
time series analysis come from this application area. Roughly
speaking, it tries to look for waves or periodic behaviours in a time
series corresponding to the different wavelengths. Information is
encoded in terms of those waves. The idea is used even to detect
cycles in the economic markets.

* One recent example is searching exoplanets. It is not
directly related to this course, but still I mention it because
it is such a unique application. NASA tries to find places in the
universe where life may be supported. Naturally, the focus of
attention is on earth-like planets around far away stars. Now the
stars themselves appear to be tiny dots, so a tiny planet like
earth circling around it is just not visible to even the most
powerful telescope. Quite surprisingly, time series analysis
helps to detect such planets in many cases. When the planet
passes in front of the star, its brightness diminishes a
little. Astronomers observe the brighnesses of the stars and
detect if there is any temporary dip in that series. If so, they
can estimate the size of the planet as well as its orbiting
period by the lengths of  and gaps between the dips. Personally,
I find it an amazing application.


</SESS>
</SCRIPT>

<EXRLIST id="M6L1V2">
</EXRLIST>
</LESSON>

<HEAD2>Module 6: Lesson 2: Plotting</HEAD2>

<STKY><HEAD3>Module 6, Lesson 2, Video 1: Plotting</HEAD3></STKY>
<LESSON>
<EXRLIST id="M6L2V1">

<EXR>Show time series plot. Ask for trend.</EXR>

<EXR>Show plot. Ask for periodicity.</EXR>

<EXR>Show periodic time series. Ask for period.</EXR>
</EXRLIST>



<EXRLIST id="M6L2V2">

<EXR>Plot and identify trend.</EXR>

<EXR>Plot and identify periodic pattern.</EXR>

<EXR>Show liner, quadratic and exponential curves. Ask to plot
RBI data. Identify the pattern.</EXR>
</EXRLIST>
</LESSON>
<HEAD2>Module 6: Lesson 3: Analysis</HEAD2>
<LESSON>
<STKY><HEAD3>Module 6, Lesson 3, Video 1: Trend+Seasonal+Error</HEAD3></STKY>

<SCRIPT id="m/l/v">
<SESS t="3.00" done="n" id="s1">
We had earlier talked about looking through data as opppsoed to
looking at data. We look through data at the underlying
process.  Writing down a clear
statement about what we assume known/unknown about this
underlying process is called the statistical model. 
So far in our course, this process has been a just a distribution, which we
visualised as the shape of a histogram. This sufficed because
the variables that we were working with varied only with chance. 
Like a coin toss, the same coin was tossed in each case. The
value could be related to other random variables, but before
collecting the value we had no a priori reason to suspect a
ifferent behaviour. This, however, is no more true for a time
series. Here I know the time even before measuring the value. So
the process must somehow incorporate the time. Thus a time series
model should be a mixture of a function of time and a
distribution. 

There are many different time series models proposed in the
literature ranging from simple to extremely complex. In this
course we shall satisfy ourselves with a simple model only. Let's
start with an example.

Here is a time series plot. How would you describe the pattern
that you see? It looks much like a straight line with some
undulations. The variable is influenced by both the time and
chance. It is reasonable to say that time influences it as a
straight line, while chance contributes the ups and downs. So a
model could be <M>y_t = a + bt + \epsilon_t,</M>
where <M>\epsilon_t</M>'s are random noise. This is a special
case of a more general form of time series model, where time and
chance enter into the variable as two additive
components. <M>a+bt</M> is the time component
and <M>\epsilon_t</M> is the chance component. And they are
added. Notice that there is no contriution of chance in the time
component, and controbution of time in the chance part. Though we
write <M>t</M> as subscript in <M>\epsilon_t,</M> we consider
them just like coin tosses, all independent and identically
distributed, order does not matter. 

Another model of the same type is where time enters as a
quadratic: <M>y_t = a + bt + ct^2+ \epsilon_t,</M> resulting in a
plot like this. 

Now we may not always be able to come up with a simple
mathemaical formula for the time component. The next video will
discuss a more flexible alternative that suits diverse real life scenarios.
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 6, Lesson 3, Video 1: Trend+Seasonal+Error</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SESS t="2.20" done="n" id="s1">
In the last video we learned about a class of time series moels
where the time component and chance components are added
together.  Such models, while not always applicable, are the
easiest to interpret. The time component is a function of time
that has no randomness in it. If we assume a precise mathematical
form for it, like linear or quadratic as we did in the last
video, then the resultin model becomes too inflexible to use in
most rela life cases. So instead statisticians prefer to use a
time component that may be further decomposed into subcomponents
accounting for various interpretable behaviours. Well, that's
quite a mouthful. Let's digest it with an example. 

Here is a time series. How would you describe it in words. It has overall
slowly rising trend. There are lots ups and downs. On closer look
we notice that even the ups and downs are of two types. There is
seems to be a wave that repeats every 12 months, i.e., an annual
cycle. Other than  that the remaining ups and downs appear to
be just random. 

Accordingly we propose the following model:
trend + cyclic.

Here trend refers to the long term slow overall of the series. It
may go steadily up or down, or may remain at the same level. If
our time series is really long, then the trend pattern may also
change somewhere midway. But whatever the case, trend always
reflects long term behaviour. 

The cyclic component represents any known periodic pattern. For
instance, a daily time series is likely to show a weekly or
biweekly cycle, a monthly time series typically contains annual
cycles, and so on. In fact, some time series may contain cycles
of multiple periods. Then people sometimes refer to them as
seasonal and cyclical patterns.

Now let's see how to isolate these various components from a
given time series.
</SESS>
<JINGLE t="0.1">Extracting components</JINGLE>
<SESS t="1.80" done="n" id="s2">
Here is a time series data set. The first step to analyse it is
to make a plot. The plot will give a visual check that our model
is a reasonable one and also give us a rough idea about the
period of cycle given. In many cases, however, the period is more easily
obtained from the data domain, e.g. a weekly cycle for a daily
data, or annual cycle for monthly data. Then we perform a moving
average. This means taking average of one period worth of the
series at a time. Here we have a weekly cycle. So we average the
first 7, and plot it at the centre. It is as if we are looking at
the series through a window of length 7 and averaging the part of
the seris through the window. Next we move the window one step to
the right and take average. And we go on like this, move the
window and average the visible part. This is what is called
moving average. The result is a shorter series that has less ups
and downs. This is our estimated trend. Now we subtract the trend
from the original series (ignoring the two end). This part should
contain only the cyclical and error part. We stack the weeks one
above the other and average. Thus we get an average value for the
Mondays, another for the Tuesdays, and so on. Finally we subtract
this from the series, and consider the remainder as the error.

The next video will show this in action.
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 6, Lesson 3, Video 1: Trend+Seasonal+Error</HEAD3></STKY>
<SCRIPT id="m/l/v">
<SC t="6" done="n" id="s1">
Create a daily time series from scratch. The trend values along a
line and some day-of-the-week values adding up to 0. Finally
errors as rand()-1. Recover and compare.
</SC>
</SCRIPT>
<EXRLIST id="M6L3V1">

<EXR>Toy data. Hand computation.</EXR>
<EXR>Toy data. Hand prediction.</EXR>

<EXR>Ask for conceptual trend, period from data scenario.</EXR>
</EXRLIST>


<EXRLIST id="M6L3V2">

<EXR>Real data.</EXR>
<EXR>Real data.</EXR>
<EXR>Real data.</EXR>
</EXRLIST>

</LESSON>

<HEAD2>Module 6: Lesson 4: Real life examples</HEAD2>
<LESSON>
<STKY><HEAD3>Module 6, Lesson 4, Video 1: Real life example</HEAD3></STKY>

<SCRIPT id="m/l/v">
<SESS t="0.50" done="n" id="s1">
So far we have given some idea about times series, what they are,
why they are important, and also given a very simple introduction
to modelling them in terms of trend and cyclical components. 

In this lesson we are about to see real life examples of time
series. These data sets are all freely available, and are
retrieved from the internet.  With our limited exposure to time
series analysis, we shall be barely able to do anything beyond
downloading and plotting the data, and noticing important points
about them. Sometimes we shall try to apply moving average to
smooth the time series.
</SESS>
</SCRIPT>
<EXRLIST id="M6L4V1">

<EXR>Ask for source.</EXR>

<EXR>Show plot. Ask for anomaly.</EXR>

<EXR>Show plot. Ask for anomaly.</EXR>
</EXRLIST>


<EXRLIST id="M6L4V2">

<EXR>Real data. Estimate and predict.</EXR>
<EXR>Real data. Estimate and predict.</EXR>
<EXR>Real data. Estimate and predict.</EXR>
</EXRLIST>

</LESSON>

<HEAD2>Module 6: Lesson 5: Review</HEAD2>
<LESSON>
<STKY><HEAD3>Module 6, Lesson 5 , Video 1: Review</HEAD3></STKY>
<STKY><HEAD3>Module 6, Lesson 5 , Video 2: Review</HEAD3></STKY>
</LESSON>

<COMMENT>
Local Variables:
 two-part1: ((format "%cSCRIPT id=\"m/l/v\">\n" 60) (format "\n%c/SCRIPT>" 60))
 two-part2: ((format "%cSESS t=\"0\" done=\"n\" id=\"s1\">\n" 60) (format "\n%c/SESS>" 60))
 dummy: ("<V>[shown]" "</V>")
 tmp: ("<B>" "</B>")
End:
</COMMENT>
</NOTE>@}




