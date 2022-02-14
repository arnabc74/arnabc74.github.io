@{<NOTE> -*- eval: (folding-mode t) -*-
<TITLE>Course: Basic 3: Statistical methods</TITLE>

<HEAD1>Module 1: Estimation</HEAD1>
<SCRIPT id="m1/intro" done="k" t="1:48">
<SESS t="0" done="a" kf="30,60,90,120,150,180,210,240,270" id="s1">
Welcome to the PGDAS course on <B>Statistical Methods</B>. I am your
instructor <B>Arnab Chakraborty</B>.
---
Our journey of learning statistics had started with the Basic
Statistics course. There we had learned some terminology and saw
some simple number crunching tools.
---
 Now that you have also learned
probability theory in a parallel course, we are ready to go
deeper. And that's what we shall do in this course. 
---
This course consists of 6 weeks of lectures. One module per
week.<V>[shown]</V> Each module has 4 lessons.<V>[shown]</V> And
each lesson some prerecorded 
videos and practice problems, as well as a weekly test, that will
be graded.
---
Each test will have 5 problems carrying 2 points each. So we have
10 points per module<V>[shown]</V>. Since we have 6 modules, this accounts for
60 points in all<V>[shown]</V>. The remaining 40 points will come from a final
exam<V>[shown]</V> that will take place within 2 weeks from end of lectures.
---
All the unit test problems will be of the peer review type, where
each student's solutions will be graded by three other students,
and the median score will be taken.
---
We shall use this book 
<B>Mathematical Statistics with Applications by Ramachandran and
Tsokos</B> as our main text book. 
Ocassionally we shall also refer to other sources as and when
needed.
---
And we shall  use <B>LibreOffice Calc</B> as our software.

OK, time to get rolling!
</SESS>
</SCRIPT>
<HEAD2>Module 1: Lesson 1: The concept</HEAD2>
<STKY><HEAD3>Module 1, Lesson 1, Video 1: The concept (population,
sample)</HEAD3></STKY>
<LESSON>
<SCRIPT id="m1/l1/v1" done="k">
<SESS t="1.30" done="a" kf="10,20,30" id="s1">
The world around us is full of unpredictable variations. Unpredictable, yet
the unpredictability has a pattern in it. Man has been studying this
pattern ever since his earliest existence.
---
 There are different ways to deal
with such patterned unpredictability, and statistics is one of them. In
this lesson we shall learn what sets statistics apart from the other
approaches.
---
 This difference is the key to appreciating statistical methods,
their strong points as well as their weak points. 
---
This key concept in a nutshell is this: Whatever data we collect is like a
<B>cup of water from a vast ocean</B>. The cup of water is all that we have to
base our inference on, but it is not the water in the cup that we want to
draw inference about.
---
 The  target of our inference is the entire ocean. The
statistical term for the cup of water is a <B>sample</B>, the ocean being
called the <B>population</B>. 
---
Any serious statistical exercise starts with a precise and clear picture of
the population and its relation with the sample.
</SESS>
<JINGLE t="0.1">Population and sample</JINGLE>
<SESS t="1.70" done="a" kf="10,40,50,90,100" id="s2">
We shall start with a simple example. The very term <B>population</B>
conjures up the vision of the totality of all the people living in a
country. While statistics uses the term in a broader sense, this
nevertheless remains a good picture to keep in mind. 
---
Here is our toy example. Imagine a population consisting of all the people living in a
large country. <V>[men shown]</V> We want to know the height of the
tallest person in our population.<V>[line shown]</V>  
---
Of course, if we had a list of the heights of all the
members of the entire population, then it would have been just a matter of
looking up the maximum, something that a computer could have done easily
for us.
---
 But the point is that we do not have such a list to start with.
 All that we can do  is to draw a random
sample of individuals and measure their heights
only.<V>[highlighted]</V>
---
 There is no guarantee
of course that this sample will contain the tallest person in the
population,...
---
 and so there cannot exist any sure  way to find the maximum
height in the population by looking at just the heights in the sample. The
best that we can hope for is only a reasonable guess.
---
 The precise statistical
term for obtaining  such a reasonable guess
is <B>estimation</B>. Let's try to come up with a good estimation procedure.
</SESS>
<JINGLE t="0.1">Estimation</JINGLE>
<SESS t="3.50" done="a" kf="10,20,30,40,50,60,70,80,90,100,130" id="s3">
 Suppose the heights
of the people in our sample are 5'2'', 5'5'', 5'0'', 5'9'' and
6'3''.<V>[list shown]</V> 
----
Based on this somone estimates the maximum population to be 6'.<V>[6'?]</V> Is this a
good estimate? No! Because even in our sample we have a person taller than
this!<V>[finger]</V>
---
 OK, let's revise our estimate to <B>6'3''</B> then, the maximum in our
sample. That is not as absurd as the last estimate, but still this assumes
that just by randomly selecting 5 persons out of an enormous population we
have managed to get one of the tallest guys in the entire
country!
---
 Not impossible, but not very probable either! So we should better allow some
margin above the sample maximum. How to choose the margin? Here are two ad
hoc suggestions: 
---
* One method could be to use the gap between the top two tallest persons in
the sample as the margin. So we shall compute maximum+gap between
the tallest two.<V>[shown]</V>, we have called this gap the top gap.
 In our case it is
<V>[finger]</V> <B>6'3''-5'9''=6''.</B>
---
 So we estimate the population maximum to be 6'3''+6'' = 6'9''.<V>[shown]</V>

* Another method could be to scale up the sample maximum by a factor 5/4,
which is sample size/(sample size-1),<V>[shown]</V>.
---
These are, as I said, ad hoc suggesions, and one can come up with many such
suggestions. This scenario is indeed common to all
statistical methods. We can think of many ad hoc procedures, and
need to choose the best, or at least a good one among them.
---
 Instead of just blurting out a single number as our
estimate, we are instead trying to come up with a  rule or formula to
produce the estimate from the sample. Like<V>[finger]</V> "sample max +
top gap" or "size/(size-1) * max".
---
Such formulae are called <B>estimators</B>, as opposed to
an <B>estimate</B> which refers to the numerical value that the formula takes for a
given sample. The target quantity that we are trying to estimate
is called a <B>parameter</B>.
---
 Indeed, any unknown quantity regarding the
underlying population is called a parameter, whether or not we
are trying to estimate it. 
---
Our parameter of interest was the population maximum. Had we possesed a complete list
of all the heights in the population, then this would have been a dumb
clerical exercise. No scope of creativty there.
---
 But since we do not have
such a master list available, we can propose and compare between different
estimators. Lots of scope for creativity here! 
---
So here is the take away message that you should never forget. The ultimate
aim of statistics is not to <B>look at data</B>, but <B>through data at
the underlying reality</B>. Sample corresponds to the data, population to
the underlying reality.
</SESS>
</SCRIPT>
<EXRLIST id="m1l1_a.yml">
- typeName: textReflect
  prompt: >
     If we have a sample consisting of the values 2, 5, 1, and
  the estimator for the population mean is the sample mean, then
  what is the estimate? 
  defaultFeedback: >
      The estimate is just the value of the sample mean for the
  given sample: (2+5+1)/2 = 4.

</EXRLIST>
<STKY><HEAD3>Module 1, Lesson 1, Video 2: The concept (sampling distribution)</HEAD3></STKY>
<SCRIPT id="m1/l1/v2" done="k" t="5:35">
<SESS t="1.20" done="a" kf="30,60" id="s1">
In the last video we saw the simplest scenario of <B>sample</B> and
<B>population</B>. Indeed, what we discussed there is what most people would
anyway associate with these concepts. But statisticians use the terms
population and sample in a much more general sense.
---
In most branches of science, we need to make measurements. Now if you measure
the same quantity repeatedly under as identical conditions as you can manage,
still the measurements fluctuate to some extent.
---
 It is hard to pin point the cause behind the variation. But
something imponderable beyond our control changes somewhere.
---
 One cannot avoid noticing the uncanny resemblance of
this with a coin toss. The outcome is random.
</SESS>
<JINGLE t="0.1">Statisticians' perspective</JINGLE>
<SESS t="0.80" done="a" kf="30" id="s2">
Statisticians like to invoke the same population and sample analogy even in
this case. It may require some effort to visualise this at first, but it is
well worth getting used to.
---
 Think of each measurement as picking a random
sample from a population of all possible measurements. As if nature has in
her secret store all these slightly differing values.
---
That is the population of measurements. When you are
making 5 measurements, it is as if you are picking 5 of the stored
measurements and making them public.
---
 To distinguish this abstract usuage of
the term population, people sometimes call it an <B>infinite
population</B>. 
</SESS>
<SESS t="1.90" done="a" kf="30,40,100,110,120" id="s3">
Admittedly this might look like a rather contrived way of looking at
things.  However, there is a theoetical justification behind this
approach. And it comes from the concept of <B> statistical
regularity</B>. 
---
We had discussed this in our Basic Statistics
course. But it boots repetition. 

In certain situations we see that lots of randomness piled together somehow
cancel each other out and a more or less regular behaviour emerges.
---
  Well, this concept makes a somewhat unexpected
appearance in the context of measurements. Suppose that you measure the
same quantity repeatedly keeping the set up as unchanged as
possible. Thus you get lots of numbers.
---
 If you create a histogram<V>[start shown]</V> of these numbers, then you'll see that
a particular shape emerges as you make more and more
measurements. <V>[anim]</V> 
---
The shape will depend on the quantity being measured
and the measurement procedure being followed. This fixed shape corroborates
the idea that there is something fixed sitting unseen beyond our immediate perception
and all our measurements are coming from that.
---
 The shape of the histogram as captured by this curve is
basically a rough picture of that unseen master process. 
---
The more data we collect the better we get an idea of that process. We could
have known it completely if only we could collect an infinite amount
of data. Hence the notion of an <B>infinite population</B>.
---
 We often use the term <B>distribution</B> to mean the same thing. Thus we talk about a
random sample from an infinite population, and sometimes refer to the same
thing as a random sample from a distribution. 
</SESS>
<SESS t="1.40" done="a" kf="30,60,70,80,90,100" id="s4">
You often hear statements like <B>Let's consider a random sample
from such-n-such distribution.</B> It is important to understand what this
means. 
---
In this context, a distribution, or rather <B>probability
distribution</B> to be precise, refers to a particular shape of the
underlying population histogram.
---
 The shape is often depicted as a curve<V>[shown]</V> for a continuous
variable, and a bar chart<V>[shown]</V> for a discrete one. We usually
capture the shape using math formula, called...
---
a <B>probability
density function (pdf)</B> for the continuous case,
and a <B>probability mass function (pmf)</B> for the discrete case.
---
 Suppose that we have some
variable in a data set.  If we
make a histogram of all its values, then the histogram will have that
particular shape.
---
 The shape need not be apparent if we have too few
cases. But as the number of cases grows the histogram will go closer and
closer to that shape. 
</SESS>
</SCRIPT>
<EXRLIST id="m1l1_b.yml">
- typeName: textReflect
  prompt: >
     In a clinical trial we measure blood pressures of 10
  patients twice, once before and once after a medication. 
  Is this like drawing a sample of size 20 from a population?  
  defaultFeedback: >
      No. It is a like drawing a sample of size 10.
      The population consists of all the patients represented by
  these patients (eg, similar to these 10 in terms of gender, age
  group, etc). Each measurement produces a pair (before, after).

</EXRLIST>
<STKY><HEAD3>Module 1, Lesson 1, Video 3: The concept (sampling distribution)</HEAD3></STKY>
<SCRIPT id="m1/l1/v3" done="k" t="4:05">
<SESS t="1.70" done="a" id="s1">
In the last video we have introduced the all important concept
that sets statistics apart from other approaches to analysing
data.
---
 Statistics, as I have already said, looks through data
instead of looking at data. We shall see an important consequence
of this concept now. 
---
In the Basic Statistics course as well as in our  school days we
have learned about computing the mean of a bunch of numbers. You
do not need to be a statistician to do that.
---
 But the way a statistician looks at  mean is not exactly how a layman considers
it. You are given a bunch of numbers. You crunch them with a
formula, and out pops the mean, which is
just another number situated more or less near the centre.
---
 From a layman's perspective the story ends there. But 
for a statistician it is a path leading
towards the mean of the unknown distribution from which the
sample has come.
---
  The observed sample  is just one possible sample that has turned up
randomly. Any conclusion based on that also suffers from the same
randomness. It is the underlying distribution that is the
unwavering truth worth seeking.
---
 When you hear this for the first
time it might not make much sense, besides sounding a bit
theatrical. But the germ of this idea is already there in our
everyday lives, as a little thought experiment will show.
</SESS>
<JINGLE t="0.1">A little thought experiment</JINGLE>
<SESS t="2.10" done="a" kf="10,40,50" id="s2">
Suppose that you are comparing between two fertilisers for a
certain variety of crop. The aim is to see which variety produces
the greater yield.
---
 For this purpose two plots<V>[shown]</V> are chosen as
identical as possible. The same variety of crop is sown in
both. Fertiliser 1 is used in the first, fertiliser 2 in the second.
The yields turn out to be
234 bushels and 235 bushels<V>[shown]</V>.
---
 Here 235 > 234. There can't be any
doubt about that. But is this evidence enough to clearly conclude
that the fertiliser used in the second plot is the better one?
 No, because the margin is so low here.
---
 Just a single bushel, a single bushel out of over 230 bushels. One might say that such
a small difference could very well have resulted from pure chance
variations. That's commonsense.
---
The idea is that if we repeat the
entire experiment all over again but using the same fertiliser
for both the plots,...
---
 even then some minor difference between the
two yields is quite likely, say a bushel or two this way or
that. That is like an inevitable error margin.
---
 One fertiliser can be called better than the other in terms of yield only when
it produces a difference significantly larger than this
margin. Thus you see our common sense has this idea built into
it:
---
 If we repeated the same experiment, some fluctuation is inevitable, and our conclusion
 must not get caught in this fluctuation.
---
Statistics formalises this notion into what is called the
<B>sampling distribution</B>. That's what we shall discuss in the next video.
</SESS>
</SCRIPT>

<EXRLIST id="m1l1_c.yml">
- typeName: textReflect
  prompt: >
    The average horizontal distance between adult human eyes is
  63 mm. and average vertical distance between them is 0 mm. (ie,
  the eyes are situated at the same height when one stands
  keeping the head erect). Now let's say you meet a man with
  horizontal eye distance 70 mm. and another man with vertical eye
  distance 7 mm. Which man will strike you as more odd?
  defaultFeedback: >
      The second man of course. In fact, a man with horizontal
  eye distance 70 mm. is quite common. But a man with vertical
  eye distance 7 mm. is rather rare. So the distance from the
  average is not the only point, we have to take the variability
  in the population into account.
</EXRLIST>

<STKY><HEAD3>Module 1, Lesson 1, Video 4: The concept (sampling distribution)</HEAD3></STKY>
<SCRIPT id="m1/l1/v4" done="k" t="5:53">
<SESS t="1.20" done="a" kf="10,20,30,40,50" id="s1">
The last video introduced the very important concept of <B>sampling
distribution</B>. Having a clear idea about sampling distributions is the key
to understanding the working of most statistical procedures.
---
We shall explain with a familiar example:
estimating the maximum height of people in a vast population.<V>[shown]</V> We
shall compare between two contending procedures.
---
 In both cases we shall start by drawing a sample of size 5
randomly from our population.<V>[highlighted]</V> 
---
 The first procedure will use just the <B>sample
maximum</B>, while the second procedure will multiply the sample max
by  5/4, which is the ratio sample size/(sample
size-1).<V>[formula shown]</V>
---
Once a particular sample of size 5 is drawn, these two estimators
will yield two numbers or estimates. Of course, just by staring at
those two estimates, we can never decide which estimator is
better. That's where sampling distribution comes to our
help.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="4.7" done="r" id="max_114">
Show population of size 10000. Show true max. Draw sample. Find
estimates. Mention repeating this 1000 times. Show the results
already in a different sheet. Show histogram already made. Compare.
</SC>
</SCRIPT>

<EXRLIST id="m1l1_d.yml">
- typeName: textReflect
  prompt: >
     What is a average length of human kidneys? Somebody
  just blurted out an estimate 12 cm. A statistician, however,
  carefully took a random sample of size 5 and found the sample mean, which
  also turned out to be exactly 12 cm. What are the estimators
  here? Name one difference between theor sampling distributions?
  defaultFeedback: >
      The ad hoc estimator is just the constant 12 cm. The second
  estimator is (x1+...+x5)/5, where xi is the length of the i-th
  sampled kidney length. The sampling distribution of the ad hoc
  estimator has zero dispersion (it is just a constant, no
  variation), while the dispersion of the sampling dispersion of
  the second estimator is surely something positive.

</EXRLIST>
<STKY><HEAD3>Module 1, Lesson 1, Video 5: The concept (sampling distribution)</HEAD3></STKY>
<SCRIPT id="m1/l1/v5" done="k" t="2:42">
<TODO>Correct around silence.</TODO>
<SESS t="2.50" done="a" kf="10,20,30,40,70,80,90,100,110,120" id="s1">
We have learned quite a few terms. A <B>parameter</B> is any unknown
quantity related to the underlying distribution. It is a fixed
quantity, part of the ultimate truth.
---
 To estimate it we need an
<B>estimator</B>, which is a formula. It is like a machine that takes a
sample in and produces a number out<V>[shown]</V>. In general any such formula
is called a <B>statistic</B>.
---
 It is a singular noun, no 's' at the
end. An estimator is a just a statistic that is being
used for the purpose of estimation.
---
 Every statistic has its own <B>sampling distribution</B>, its
behaviour when different random samples from the same population
are fed into it.  
---
This is basically what we showed in the last lab session. We
played god. We generated many random samples, evaluated the
statistic for them and made a histogram to provide a visual
representation of the sampling distribution. 
---
While a visual representation is a good thing to have, we can use
techniques like <B>mean</B> and <B>standard deviation</B> to describe the
sampling distribution quantatively. 
---
The mean of the sampling distribution is the value around which the values of the
statistic are expected to hover. This is often called the 
expected value or <B>expectation</B>.
---
 So if the statistic is an
estimator, then the diffrence between this expectation and the true
value of the parameter is a useful thing to have. This is called
the <B>bias: mean value of estimator - parameter</B>.
---
 Of course, you may not be able to compute this since the parameter value is
unknown. But sometimes you can even without knowing the true
parameter value! We shall take this issue up in
the next lesson. 
---
Then you can also consider the standard deviation of the sampling
distribution. That has a special name here: the<B> standard error</B> of
the statistic. Unlike bias, which makes sense only for
estimators, standard error is meaningful for any statistic. 
---
The next video will give us an idea about bias and standard
error using LibreOffice.
</SESS>
</SCRIPT>

<EXRLIST id="m1l1_e.yml">
- typeName: textReflect
  prompt: >
     We have learned about bias and standard error. Which of
  these involve the unknown parameter? 
  defaultFeedback: >
      Bias. As a result it may not be computable based on data alone.

</EXRLIST>
<SCRIPT id="m1/l1/v6" done="k" t="4:59">
<SC t="5" done="r" id="min_116">
Start with a population. Compute min. Draw sample, compute sample
min. Show already computed values. Compute their mean, subtract
true min. Also compute standard error. 
</SC>
</SCRIPT>

<EXRLIST id="m1l1_f.yml">
- typeName: textReflect
  prompt: >
     Suppose that we want to estimate the maximum income of a
population. We plan to use the sample maximum as our
estimator. Can this estimator exceed the value of the parameer
being estimated? 
  defaultFeedback: >
     No. The sample maximum cannot be more than the population
     maximum!
</EXRLIST>

</LESSON>

<HEAD2>Module 1: Lesson 2: Estimating mean</HEAD2>
<LESSON>
<STKY><HEAD3>Module 1, Lesson 2, Video 1: Estimating mean</HEAD3></STKY>
<SCRIPT id="m1/l2/v1" done="k" t="1:53">
<SESS t="1.80" done="a" kf="10,40,50,60" id="s1">
 In each of this and the next two lessons we shall take up a different parameter and
learn about estimating it. 

In the current lesson the parameter to be estimated is the
<B>mean</B>.
---
 Remember that here we are talking about the <V>[shown]population
mean</V>, and not
the sample mean, which we anyway know for sure for the sample at
hand, and hence we do not need to estimate.
---
There is an underlying
distribution. It's best to think
of it as the shape of a histogram<V>[shown]</V>.
---
 This distrbution has a mean<V>[arrow shown]</V>, a fixed number, which is also
unknown. It is this unknown number that we are 
trying to estimate. That is our parameter of interest.
---
 All that we have is a random sample from this distribution,  a bunch of
numbers whose histogram roughly resembles this shape.
---
 Our job is to
obtain a good estimator in terms of this random sample.
---
Here is a simple solution. If the sample histogram closely
resembles the population histogram, and our aim is to estimate
the centre of the population, then why not use the centre of the
sample histogram for that purpose?
---
 In other words, just use the sample mean to estimate the
population mean. 
---
we shall now see the sample mean in action using LibreOffice.
So in the next video we shall go to
the lab to explore
the use of sample mean for estiating the population mean.
</SESS>
</SCRIPT>

<EXRLIST id="m1l2_a.yml">
- typeName: textReflect
  prompt: >
     Suppose that we want to estimate the mean income of a
population. We plan to use the sample mean as our
estimator. Can this estimator exceed the value of the parameter
being estimated? 
  defaultFeedback: >
    Quite possible.
</EXRLIST>

<STKY><HEAD3>Module 1, Lesson 2, Video 2: Lab</HEAD3></STKY>
<SCRIPT id="m1/l2/v2" done="k" t="4:55">
<SC t="6" done="r" id="mean_122">
Normal data already present. Draw a Sample. Find mean. Show lots
of means and histogram already in different sheets. Mention how
adding a constant to population shifts the sample mean.
</SC>
</SCRIPT>

<EXRLIST id="m1l2_b.yml">
- typeName: textReflect
  prompt: >
     If the population distribution is symmetric, then would you
  expect the sampling distribution of the sample mean to be
  symmetric as well?  
  defaultFeedback: >
    Yes. Assuming the sample to be a random one, all values have
  a fair chance to be included, and the formula for the sample
  mean gives equal importance to all the sampled values.
</EXRLIST>
<STKY><HEAD3>Module 1, Lesson 2, Video 3: Sampling distributions of mean</HEAD3></STKY>
<SCRIPT id="m1/l2/v3" done="k" t="5:40">
<SESS t="0.80" done="a" kf="10,20" id="s1">
The lab session in the last video gave us some idea about the
sampling distribution of the sample mean. A more quantitative idea may
be had using its bias and standard error.
---
 Recall that the bias of
an estimator is the <B>E(estimator) - parameter</B>. In
general, this may not be computable, since the parameter value is
unknown.
---
 Here, however, we can compute the bias, and it just turns out to
be zero! So we call sample mean an <B>unbiased</B> estimator of the
population mean.
---
Let's see why sample mean is unbiased for poplation mean.
</SESS>
<JINGLE t="0.1">Proof</JINGLE>
<BC t="4.5" done="r" id="meanbias_123">
Proof of unbiasedness.
</BC>
</SCRIPT>
<EXRLIST id="m1l2_c.yml">
- typeName: textReflect
  prompt: >
     Suppose I consider the sample weighted mean (X1+2X2+3X3)/6. 
     Assuming a random sample, will it be unbiased for the
     poplation mean?
  defaultFeedback: >
     Yes. The same argument as that shown in the video works here
  as well. 

</EXRLIST>

<SCRIPT id="m1/l2/v4" done="k" t="5:34">
<SESS t="1.10" done="a" kf="10,20" id="s1">
In the last video we looked at the bias of sample mean as an estimator
of the poplation mean. 
Next let's turn to the <B>standard error</B> of sample mean.
---
 This is the standard
deviation as computed from the sampling distribution of the sample
mean. 
---
 As may be expected this is closely connected with the standard deviation
of the underlying distribution. If the population standard
deviation is less, so should be the standard error of sample
mean.
---
 Also another thing should be intuitively obvious: the
larger the sample size, the better we can guess the underlying
distribution. So the standard error should decrease with
increasing sample size.
---
 In fact, we can show that the standard
error is 
<B><D>
[[\sigma][\sqrt n]],
</D></B>
where <M>\sigma </M> is the population standard deviation,
and <M>n</M> is the sample size. Let's look at the proof.
</SESS>
<JINGLE t="0.1">Proof</JINGLE>
<BC t="4" done="r" id="meanse_124">
Proof.
</BC>
</SCRIPT>

<EXRLIST id="m1l2_d.yml">
- typeName: textReflect
  prompt: >
     We have a random sample of size 10 from a population. 
     We want to double the precision of the sample mean as an
  estimator of the population mean. How many more samples should
  we draw?
  defaultFeedback: >
      Precision of an unbiased estimator is measured using its standard
  error. We plan to double the precision, so we need to halve the
  standard error. So square root of n needs to be doubled, ie, n
  needs to be four times its present value. So we need a sample
  size 10*4 = 40. Thus we need to increase the sample size by 40-10 = 30.

</EXRLIST>
<SCRIPT id="m1/l2/v5" done="k" t="4:14">
<SESS t="0.30" done="a" kf="30" id="s1">
There is a very important theorem in statistics called the <B>Central
Limit Theorem</B> about the sampling distribution of the mean.
---
 It says that even if you do not know the  population distribution,
but just know its mean and standard deviation, ... then you
basically know the distribution of the sample mean!

</SESS>
<BC t="4" done="r" id="cltstmt_125">
CLT statement.
</BC>
</SCRIPT>
<EXRLIST id="m1l2_e.yml">
- typeName: textReflect
  prompt: >
     A population has mean 15 and standard deviation 3. A random
  sample  of size 100 is drawn from it. Assuming this sample size
  to be large enough, what is the (approximate) sampling
  distribution of the sample mean?
  defaultFeedback: >
      CLT says that the distribution is approximately normal. The
  mean is same as the population mean, 15. The standard deviation
  is population standard deviation divided by square root of
  sample size, ie, 3/10.
</EXRLIST>
<SCRIPT id="m1/l2/v6" done="k" t="4:43">
<SESS t="0.20" done="a" kf="30" id="s1">
Let's look at a practical example. <B>Confidence interval</B>. Let us see ... the
mathematical formulation.
</SESS>
<BC t="5" done="r" id="cltci_126">
CI example.
</BC>
</SCRIPT>

<EXRLIST id="m1l2_f.yml">
- typeName: textReflect
  prompt: >
     A machine produces pipes of a certain length that may be
  specified by a setting in its dashboard. We know from prior
  runs of the machine that standard deviation of the lengths
  produced by the machine is 0.5 cm. We have collected a random
  sample of size 25 from the production line. The sample mean
  length is 100.2 cm. Obtain a 95% CI for the population mean (ie
  the dashboard setting, which we assume unknown to us).

  defaultFeedback: >
        [[./exraux3/cisol.png]] 
   Notice the formula bar (the input line).

</EXRLIST>
</LESSON>

<HEAD2>Module 1: Lesson 3: Estimating proportions</HEAD2>
<LESSON>
<STKY><HEAD3>Module 1, Lesson 3, Video 1: Estimating proportions</HEAD3></STKY>
<SCRIPT id="m1/l3/v1" done="k" t="4:55">
<SESS t="2.00" done="a" kf="10,20,30,40,50" id="s1">
In the first lesson of this week we had learned about the concept
of estimation. We are now learning how to apply this concept to
various parameters of interest.
---
 In the last lesson we learned how to estimate
the population mean. In this lesson we shall estimate <B>population proportion</B>. 
---
First let's understand the importance of the problem with a real
life example. Suppose that an <B>election</B> is imminent in a
country. There are two major contending parties. Each striving
its best to win the election.
---
 What will they not give to know the result of the election
beforehand!  If only they knew where their
support base is weaker, they would be able to focus more effort
in those regions.
---
 In abstract terms this is the problem of estimating a proportion, 
the proportion of the people who would vote for that
party. <V>[proportion of supporters]</V>
---
As yet another application, consider  a <B>casino</B>. They use
various gambling devices there, slot machines, roullette wheels
etc. They need to be very carefully tuned in order to rake money
for the house.
---
 For instance, if a roullette wheel is slightly
tilted resulting in certain numbers showing up more often and the
gamblers get a hint of the that, then that means ruin for the
house.
---
 So the casino owner has to keep an eye on the unbiasedness of
his devices. How can he do that?  Let's consider the simplest
gambling device, a coin<V>[actually show]</V>.
---
 Given a coin how do you find its <B>probability of
showing head</B>? That is an example of a population proportion. Unlike the radius, thickness or mass of the coin,
its probability of head is not a directly observable feature. 

That's where estimation of a population proportion becomes important.
</SESS>
<JINGLE t="0.1">A simple solution</JINGLE>
<SESS t="2.20" done="a" kf="10,20,30,70,80,90" id="s2">
How would you estimate the <B>probability of head</B> of a coin? What is
the commonsense method? Just toss the coin a large number of
times and find the proportion of times you get head.
---
 Say I toss the coin <B>1000</B> times, and find <B>465</B> heads. Then I estimate the
probability of head as <B><M>[[465][1000]=0.465.</M></B> Of course,
what you get in this way is the <B>sample proportion</B>.
---
 But if the sample is large enough, then it should be close to the population
proportion, thanks to statistical regularity.
---
Similarly for the election problem we can draw a sample of voters
and try to determine their political leanings. Then find the
proportion based on the sampled voters.  
---
There is another equivalent way of looking at estimating
population proportion that may be understood using this voter
example.
---
 Associate a number 0 or 1 with each voter in the
population according as the voter is against or for the party in
question.<V>[shown]</V> This creates a new variable.
---
 Notice that the population
mean of this variable is precisely the proportion we are trying
to estimate. Because when you sum, you are basically counting the
1's. 
---
Thus estimation of population proportion is just a
special case of estimation of population mean. So we may use
sample mean of this variable as before. It is easy to see that
this sample mean is just the sample proportion. 
---
The advantage of this line of thought, considering proprtion as a
special case of mean, may not be readily apparent. The main
advantage is that  sample proportion inherits all the
properties of the sample mean.
---
 This will make our life easier when we shall try to work with the sampling distribution of
sample proportion.

But first let's look at a little hands on computation.
</SESS>
</SCRIPT>
<EXRLIST id="m1l3_a.yml">
- typeName: textReflect
  prompt: >
     If a variable takes only the values 0 and 1, then  what is
  the sum of squares of the values minus the sum of all the values?
  defaultFeedback: >
      Just zero. Because 0^2=0 and 1^1=1. 
</EXRLIST>
<STKY><HEAD3>Module 1, Lesson 3, Video 2: Lab</HEAD3></STKY>
<SCRIPT id="m1/l3/v2" done="k" t="4:45">
<SC t="5" done="r" id="prop_132">
Voting data already present. Draw a Sample. Find mean after ifelse. Show lots
of proportions and histogram already in different sheets. 
</SC>
</SCRIPT>
<EXRLIST id="m1l3_b.yml">
- typeName: textReflect
  prompt: >
     Sample proportion based on a random sample is a categorical
  variable. Is this statement correct? 
  defaultFeedback: >
      No. In principle, it can take all values between 0 and 1.

</EXRLIST>
<STKY><HEAD3>Module 1, Lesson 3, Video 3: Lab</HEAD3></STKY>
<SCRIPT id="m1/l3/v3" done="k" t="4:43">
<SESS t="1.80" done="a" kf="10,20,30,40,50,60" id="s1">
The lab session in the last video gave us some idea about the
sampling distribution of the sample proportion. As in the case
sample mean, a more quantitative idea may
be had using its <B>bias</B> and <B>standard error</B>.
---
 We know  that the bias of an estimator is the <B>expectation of
the estimator - parameter</B>. In 
general, this may not be computable, since the parameter is
unknown.
---
 But in certain special cases the bias may be computed
indirecly via mathematical reasoning even without knowing the
value of the parameter. This was the case for sample mean, and
this is also going to be the case with sample proprtion.
---
 And that is hardly unexpected because as we have already
mentioned  sample proportion
is a special case of sample mean, it is the mean of a 0-1 veriable. 
---
Sample mean was <B>unbiased</B> for population mean. So here sample
proportion is unbiased for population proportion. Thus, while the
sample proportion is not guaranteed to equal the population proportion
but it is likely to hover centred around the true value.
---
Next let's turn to the <B>standard error</B>. This is the standard
deviation of the sampling distribution of the sample
proportion. Again we shall invoke the corresponding result for sample
mean.
---
 There the standard error was 
<B><D>
[[\sigma][\sqrt n]],
</D></B>
where <M>\sigma </M> is the population standard deviation,
and <M>n</M> is the sample size.
---
 Now our variable takes only the values 0 and 1. 
So <M>\sigma</M> may be... simplified further. 
</SESS>
<BC t="3" done="r" id="propse_133">
Let
the population proportin be <M>\theta.</M> Then <M>\sigma </M> is 
<D>
\frac1N\sum x_i^2-(\bar x)^2 = \theta - \theta^2 = \theta(1-\theta).
</D>
Becuase <M>x_i^2 = x_i</M> since <M>x_i</M> is either 0 or
1. Thus the standard error is 
<D>
[[\theta(1-\theta)][\sqrt n]].
</D>
</BC>
</SCRIPT>
<EXRLIST id="m1l3_c.yml">
- typeName: textReflect
  prompt: >
     A random sample of 100 items has  exactly 23 defective
  items. Estimate the population proortion od defectives as well
  as the standard error of the estimator.
  defaultFeedback: >
      Estimate for population proortion od defectives is just the
  sample proportion 23/100.
      Its estimated standard error is 0.23*(1-0.23)/10.

</EXRLIST>
<SCRIPT id="m1/l3/v4" done="k" t="5:27">
<SESS t="0.80" done="a" kf="10,20,30,60,70,100" id="s1">
We have a large store full of items,<B> <M>\theta</M> proportion
of which are defective</B>. This <M>\theta</M> is unknown. We want to
estimate it.
---
 For this we have drawn a <B>random sample of 100</B> items,
and found <B>73 defective</B> items. This gives us a point
estimate <M>[[73][100]].</M><V>[anim]</V>
---
 But we want a <M>95\%</M> CI, ie,
two numbers <B><M>L</M> and <M>U</M></B> based on our sample such that 
<B><M>P(L\leq \theta \leq U ) = 0.95.</M></B> Let us see how the central
limit theorem ... helps us here.
</SESS>
<BC t="5" done="r" id="propci_134">

</BC>
</SCRIPT>
<EXRLIST id="m1l3_d.yml">
- typeName: textReflect
  prompt: >
     Repeat the estimation process shown in the video if the
  sample size is 200, and the number of defectives in it is 34. 

  defaultFeedback: >
      
</EXRLIST>
<STKY><HEAD3>Module 1, Lesson 3, Video 2: Lab</HEAD3></STKY>
<SCRIPT id="m1/l3/v5" done="k" t="6:36">
<SESS t="2.60" done="a" kf="10,20,30,40,50,60,70,80,90,100" id="s1">
In case of estimating population  mean we had used
sample mean. Now sample mean is not robust against outliers. So
if we suspect presence of outliers, a robust altenative like
trimmed mean may be preferable.
---
Now sample proportion is a special case of sample mean.
But we do not have to worry about outliers here, because here our
variable takes only the values 0 and 1 by design. So no question of
extreme values creeping in.
---
 However, there is a problem from a
different direction, as we are about to discuss. 

We had been pretty close to this problem when we talked about the
election scenario.
---
 There our suggestion was to sample some voters
and find out their political leanings. Now a voter is entitled to
privacy. He/she may not agree to reveal his/her political
leaning.
---
 Even worse, a voter may simply lie. This poses a
different problem, the problem of respondents trying to hide
sensitive information. 

The  problem also occurs in a rather different context. 
---
Suppose we have a <B>multiple choice question with 4 options</B>
exactly one of which is known to be correct. We want to estimate
the proportion of students who know the correct answer.
---
 If we
simply take a sample of students, ask the question, and find the
proprtion of correct answers, then that won't be a good estimator
[qn: biased up or down?] as a student may have answered correctly
by chance.
---
So here we need to model the students' thought process. Either a student
knows the answer or not.<V>[tree shown]</V> In the first case, she answers
correctly<V>[shown]</V>, but in the second case she makes a
guess<V>[shown]</V>, 
say a random
guess<V>[tree grows]</V>.
---
Let the true probability of her knowing the
correct answer be <M>\theta.</M><V>[shown]</V> So this is <M>1-\theta.</M>
When she guesses,  she has <M>[[14]]</M> chance of getting the
correct answer<V>[shown]</V>, and <M>[[34]]</M> of getting it wrong.
---
 Then the probability of her
giving the correct answer is <B><M>\theta + (1-\theta)/4.</M></B>
<V>[finger expl]</V> It is
this thing that is estimated well by the sample
proportion, <M>p</M> say, of correct answers. 
---
So we may say 
<B><D>
\theta + [[14]](1-\theta) \approx p,
</D></B>
hence <B><M>\theta\approx [[4p-1][3]].</M></B>
---
This is not entirely intuitive. Also, if this turns out to be
negative, we should of course take the estimated <M>\theta </M> to be 0. 
---
 A similar
application of this idea is used to estimate population
proportion of sensitive issues like political leanings. The
method is called randomised response.
</SESS>
<JINGLE t="0.1">Randomised response</JINGLE>
<SESS t="1.30" done="a" kf="10,20,30,90" id="s2">
<B>Randomised response</B> refers to situations where the respondents
add a layer of extra randomness to hide the truth. The student
guessing in an MCQ was one example where the randomisation was
unplanned. Here is a planned version of the same.
---
 Again consider the election scenario with two contending parties. We pick a
random sample of voters and ask them: <B>"Will you vote for party
A?"</B> But in order to protect their privacy you also hand them a
fair die<V>[shown]</V>...,
---
 ask them to roll it in private, and <V>[scheme shown]</V> answer truthfully if
the die shows 6, and lie if the die shows something else.
---
 Thus, let's say I am a voter favouring party A.<V>[finger]</V> I
roll my die, get a <B>5</B>, 
so I answer "No". My friend is against party A, she gets a 6, and
she also answers "<B>No</B>". 
---
Let's see how we may estimate the proportion of A supporters from
the responses we thus obtain.
</SESS>
<JINGLE t="0.1">Estimation</JINGLE>
<SESS t="1.00" done="a" kf="10,20,30,40,50,60,70" id="s3">
 A voter is either for or against party A, with probabilities <M>\theta</M>
and <M>(1-\theta),</M><V>[tree top shown]</V>
respectively.
---
 Suppose he is for A. <V>[finger]</V> Then the die may show a 6 or not,
probabilities <M>[[16]]</M> and <M>[[56]].</M><V>[tree bot left
shown]</V> Similarly if he is against A.<V>[bot right shown]</V>
---
Accordingly there
are two ways one may answer "Yes".<V>[finger]</V>
---
 The total probability is 
<B><D>
\theta \times [[16]] + (1-\theta)\times [[56]].
</D></B>
This is estimated by the sample proportion of "yes".
---
 If this
proportion is <M>p,</M> then 
<B><D>
\theta \times [[16]] + (1-\theta)\times [[56]]\approx p.
</D></B>
So <B><M>\theta \approx [[5-6 p][4]].</M></B>
---
This is called <B>Warner's method</B>. There are different variations of
the same idea in use.
</SESS>
</SCRIPT>

<EXRLIST id="m1l3_e.yml">
- typeName: textReflect
  prompt: >
     Consider an MCQ with 4 options with exactly one correct.
  Unknown proportion p of students know the correct answer, the
  others guess one of the options randomly. If in a random sample
  of 100 students 86 have got the correct answer, then what will
  be an estimate of p?
  defaultFeedback: >
      p + (1-p)/4 is approximately 86/100. So p is approximately 0.81.

</EXRLIST>

</LESSON>

<HEAD2>Module 1: Lesson 4: Estimating dispersion</HEAD2>
<LESSON>

<STKY><HEAD3>Module 1, Lesson 4, Video 1: Estimating dispersion</HEAD3></STKY>

<SCRIPT id="m1/l4/v1" done="k" t="3:52">
<SESS t="1.60" done="a" kf="10,20,30,40" id="s1">
We are continuing with our plan of estimating various parameters
following the idea presented in the very first lesson of this
module. We have already learned how to estimate population mean,
and population proportion.
---
 In this lesson we shall attack
<B>population dispersion</B>. Now dispersion is just an intuitive
concept, it cannot be a parameter. We need some conrete measure
of dispersion to act as our parameter.
--- 
<B>Population variance</B> and <B>population standard deviation</B> are the two
most popular choices.
---
The need for this estimation could be felt even when we learned
to estimate population mean using sample mean. There the standard
error was <B><M>[[\sigma][\sqrt n]].</M></B>
---
Here <M>\sigma </M> is the population standard deviation,
and <M>n</M> is the sample size.

 This quantitiy gave us an idea about the precision of our estimator. But how
can it be useful, because it involves <M>\sigma,</M> which is
unknown? 
---
So we need to estimate <M>\sigma</M> or
equivalently <M>\sigma^2.</M> 
---
Throughout this lesson keep this picture at the back of your mind.
There is an underlying
distrbution (the unknown truth). It's best to think of it
as the shape of a histogram. The spread of this histogram is what
we have in mind.
---
 A population with low  scatter is often easier to
work with, as all the members are more or less similar. A
population with wide scatter requires much more effort to
explore. 
---
So prior to any detailed exploration of a
population, we need to estimate its variance to get an idea of
how much work lies ahead.
</SESS>
<JINGLE t="0.1">A simple solution</JINGLE>
<SESS t="1.30" done="a" kf="10,20,30" id="s2">
We already know a simple solution from our experience so far with
estimating population mean and proportion. Just use the sample
analog.
---
 By the way, this idea of estimating a population
parameter by using the corresponding sample quantity has a name. It
is called the <B>plugin principle</B>. 
---
It is justified on the ground
that the sample histogram closely resembles the population
histogram. Here this principle suggests
using sample variance as an estimator of population
variance, and...
---
 sample standard deviation as an estimator of
population standard deviation. 
---
By the way, we had noticed earlier in the Basic Statistics course
that there are two alternative definitions of sample variance
(and hence of sample standard deviation). One is<V>[move]</V> 
<B><D>
[[1n]]\sum (x_i-\bar x)^2
</D></B>
and the other is 
<B><D>
[[1][n-1]]\sum (x_i-\bar x)^2.
</D></B>
---
LibreOffice, as well as most other standard statistical softwares,
use the second formula by default. Earlier we had glossed over this point
in our basic Statistics course. But here we shall give a more detailed
exposition. 
---
But first it is time to go to the lab in the next video.
</SESS>
</SCRIPT>

<EXRLIST id="m1l4_a.yml">
- typeName: textReflect
  prompt: >
     A botling plant is supposed to produce bottles of  a fixed
  weight. But due to inherent randomness in its mechanism there
  is some variation. Let the population variance be s. Estimate s
  from the random sample:
    10.3, 10.2, 9.8, 9.9, 9.9, 10.0.
  Use the formula with n-1 in the denominator.
  defaultFeedback: >
      Sample variance is 0.0037, and this is a reasonable
  estimate of the population variance.

</EXRLIST>
<STKY><HEAD3>Module 1, Lesson 4, Video 2: Lab</HEAD3></STKY>
<SCRIPT id="m1/l4/v2" done="k" t="5:37">
<SC t="6" done="r" id="var_142">
Normal data already present. Draw a Sample. Find variance. Show lots
of variances and histogram already in different sheets. Mention how
adding a constant to population shifts leaves the result unaffected.
</SC>
</SCRIPT>
<EXRLIST id="m1l4_b.yml">
- typeName: textReflect
  prompt: >
     The video  above showed the sampling distribution of sample
  variance as a histogram. What can you say about its skewness?
  Positive or negative or zero?
  defaultFeedback: >
      Positive.
</EXRLIST>

<STKY><HEAD3>Module 1, Lesson 4, Video 3: Sampling distributions</HEAD3></STKY>
<SCRIPT id="m1/l4/v3" done="k" t="5:30">
<SESS t="1.10" done="a" kf="10,20,30,40" id="s1">
The lab session in the last video gave us some idea about the
sampling distribution of the sample variance. A more quantitative idea may
be had using its bias and standard error.
---
 The bias of
an estimator is the <B>mean of the estimator - parameter</B>. In
general, this may not be computable as a number, since the parameter is
unknown.
---
 But in case of sample mean as well as sample proportion it
turned out to be zero. So there the estimators were unbiased. But
the situation somewhat different for sample variance.
---
 For one thing the estimator 
<B><D>
[[1n]]\sum (x_i-\bar x)^2
</D></B>
is not unbiased.
---
 We really cannot compute the bias as a
number, only express it as a formula involving the unknown parameter.
Let's do so.
---
The expected value of this
estimator is 
<B><D>
[[n-1][n]]\times \sigma^2.
</D></B>
---
So the bias is <B><M>-[[1n]] \sigma^2.</M></B>

Let's prove this fact.
</SESS>
<JINGLE t="0.1">Proof</JINGLE>
<BC t="5" done="r" id="varbias_143">
Proof
</BC>
</SCRIPT>

<EXRLIST id="m1l4_c.yml">
- typeName: textReflect
  prompt: >
     Consider the sample variance with n in the denominator. We
  have learned that it is a biased  estimator of population
  variance. Is it an underestimate or an overestimate?
  defaultFeedback: >
      Underestimate, because the bias is negative. See the video
  for the exact expression of bias.

</EXRLIST>
<SCRIPT id="m1/l4/v4" done="k" t="2:04">
<SESS t="1.70" done="a" kf="10,20" id="s1">
The proof of this fact <V>[shown]</V>
that we saw in the last video may be too technical
for your taste. 
---
It has one implication, however, that may 
be appreciated without going too deep into mathematics.
---
Notice that the expected value<V>[finger]</V> is a known multiple
of <M>\sigma^2.</M> This <M>[[n-1][n]]</M> is known because the
sample <M>size</M> <M>n</M> is known.
---
 Also, it is not random, though the sample itself is random,
because the sample size is known even
before the sample has been drawn.
---
  So we may just divide our estimator by this known constant
to make the expected value exactly equal to <M>\sigma^2.</M> When
we do this we arrive at
<B><D>
[[1][n-1]]\sum (x_i-\bar x)^2.
</D></B>
---
So now you know where that alternative estimator came from.

Next we should turn to the standard error. Unfortunately, the
formula is rather complicated. So we shall not torture ourselves
with that formula here.
---
 However, as we may guess, the standard
error will go down as the sample size increases.

Incidentally, it might interest you to know the shape of the
sampling distribution.
---
 Even though we assume a nice symmetric
bell shape for the population, the sampling distribution is
asymmetric, or skewed to the right, to use a precise mathematical
term. We have already seen the shape in the last lab session.
</SESS>
</SCRIPT>
<EXRLIST id="m1l4_d.yml">
- typeName: textReflect
  prompt: |-
     We have a random sample from a population: 
       2.3, 4.2, 2.1, 3.2.
  Estimate the variance of the sample mean.
  defaultFeedback: >
      The variance of sample mean is sigma^2/n = sigma^2/4, where
  sigma^2 is the population variance. Now an
  unbiased estimator of sigma^2 is sample variance with n-1 in
  the denominator: 0.92. So the answer is 0.92/4 = 0.23.

</EXRLIST>

<STKY><HEAD3>Module 1, Lesson 4, Video 4: Alternatives</HEAD3></STKY>
<SCRIPT id="m1/l4/v5" done="k" t="5:28">
<SESS t="1.40" done="a" kf="10,20" id="s1">
Sample variance (whether with an <M>n</M> or a <M>n-1</M> in the
denominator) is a natural estimator of population variance.
But it suffers from lack of robustness.
---
Suppose that there is a little spike in our underlying distribution.<V>[shown]</V> 
A distribution, as we have mentioned earlier, is basically the
shape of a histogram.
---
The spike<V>[finger]</V> indicates a little contaminating
value, an extreme value that just does not fit with the rest of
the values.
---
Now because it is just one bad point as opposed to many many good
points, the population variance is not influenced much by it. But imagine
what may happen when you draw a random sample of much smaller
size.
---
 If that spike somehow gets into your sample it might wreak
havoc. Because there are only a handful of good values to counter
it. As a result the sample variance will move far from the
population value. 
---
So we need something more robust. Something that does not care
much about extreme points. <B>Median Absolute Deviation (MAD)</B>
is one good option. Let's quickly recall the definition
and computation of MAD.
</SESS>
<SC t="3.5" done="r" id="mad_145">
[Computation of MAD]
</SC>
<SESS t="0.90" done="a" id="s2">
 However, it is rather difficult to compute its bias, because its formula
involves abolute value, and that makes mathematical computation of its
expected value difficult. 
---
Now there is one point that must be bourne in mind. Our aim is to
estimate population dispersion, and not necessarily population
variance.
---
 Do not consider MAD as an estimator of population
variance or population standard deviation. Think of it as an
estimator of population MAD. 
</SESS>
</SCRIPT>

<EXRLIST id="m1l4_e.yml">
- typeName: textReflect
  prompt: >
     Consider this data set [[./exraux3/compare.csv]].
  Compute both MAD as well as sample standard deviation (using
  either n or n-1 in denominator). Compare them. What do you
  conclude about the data?
  defaultFeedback: >
      SD = 98 and MAD = 1. Surely there is some outlier somewhere!

</EXRLIST>
<R>
cw('exraux3')
set.seed(35343)
value = trim(rnorm(100,mean=20))
value[43] = 1000
csv(value,'compare.csv')
MAD = median(abs(value-median(value)))
SD = sqrt(var(value))
</R>
<SCRIPT id="m1/l4/v6" done="k" t="4:07">
<SESS t="0.30" done="a" kf="30" id="s1">
In the last video we talked about using sample MAD to estimate
population dispersion, as captured by the population MAD. 
Similar is the case with
<B>interquartile range</B>. Let us quickly recall its computation. 
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="4" done="r" id="iqr_146">
Show IQR computation.
</SC>
</SCRIPT>


<EXRLIST id="m1l4_f.yml">
- typeName: textReflect
  prompt: >
     Compute IQR from this data set [[./exraux3/compare.csv]].  
  defaultFeedback: >
      21 - 19 = 2.

</EXRLIST>
</LESSON>

<EXRLIST id="m1_add.yml">
- typeName: peerReview
  prompt: >
    Consider the data set [[./exraux3/length.csv]]. These are
  lengths of a random sample of bolts taken from a production
  line. Estimate the population mean length and also find an
  estimate of the standard error of its estimate. Show the
  formulae you are using.

  Rubric:
   1) Mean = 5.209 cm. (0.5 point)
   2) Standard error = sigma/sqrt(100) = sigma/10 (1 point)
   3) Estimated sigma = 0.04 (0.5 point)

- typeName: peerReview
  prompt: >
    Consider a huge population where every person is either left
  handed or right handed. We draw a random sample of
  size <M>n</M> from this population and report a variable
  "handedness" that takes the values 0 and 1, respectively, for
  "right" and "left". We want to estimate the population variance
  of this quantity. Suggest (with proof) an unbiased estimator of
  this. Simplify as much as as possible.

  Rubric:
   1) Sample variance (1 point)
   2) Simplification: (1 point)
        (p - p^2)*n/(n-1), where p is sample proportion

- typeName: peerReview
  prompt: >
    A random sample of size 100 drawn from a production line
  contains 30 defective items. Use CLT to find an approximately 95%
  confidence interval for population proportion of defectives.

  Rubric:
    1) [0.3 - a, 0.3 + a] form (1 point)
    1) a = 0.3*(1-0.3)/10 * 1.96 (1 point)

- typeName: peerReview
  prompt: >
    If the standard error of the mean of a sample of size 100 is
  0.4, then what minimum sample size would you need to sample in order
  to achieve standard error less than or equal to 0.1?

  Rubric:
    1) Formula for standard error (1 point)
    1) 0.4/0.1 = 4. So need to make sample size 4^2 = 16
    times. So required sample size is 1600 (1 point)

- typeName: peerReview
  prompt: > 
    Suppose that we estimate the minimum value in a population by
  the minimum of a random sample drawn from it. Then what can you
  say about the sign of the bias? Justify your answer.

  Rubric:
    1) Formula for bias  (1 point)
    2) Sample min can never be less than population min. So bias
    must be nonnegative (1 point)
</EXRLIST>

<HEAD2>Module 1: Lesson 5: Review</HEAD2>
<LESSON>
<STKY><HEAD3>Module 1, Lesson 5 , Video 1: Review</HEAD3></STKY>
<STKY><HEAD3>Module 1, Lesson 5 , Video 2: Review</HEAD3></STKY>
</LESSON>

<HEAD1>Module 2: Test of hypotheses</HEAD1>
<SCRIPT id="m2/intro" done="k" t="1:19">
<SESS t="0" done="a" kf="30" id="s1">
In the first week we learned about estimation. Guessing the value
of unknown parameters. We learned about two types of estimation:
point estimation where our guess for a parameter value took the
form of a single number, and confidence intervals...
---
 where we provided an interval as our guess, like the parameter will lie
between this and that value with 95% probability.
---
In this module we shall tackle something less ambitious. We shall
not be directly concerned with finding the value of a
parameter.
---
 We shall remain content with answering just yes-or-no
type questions about a parameter. Like I do not know your age, nor
do I want to know it.
---
 I am just curious if you are are below 30
or not. That's all. A simple yes or no. The technique we shall
employ for guessing answers to such questions based on data 
is called <B>test of statistical hypotheses</B>.
---
And that's what we shall learn this week!

The week's structure will remain as before. 4 lessons, practice
problems, and finally a unit test.
OK, let's start with our first lesson!
</SESS>
</SCRIPT>
<HEAD2>Module 2: Lesson 1: Concept of test</HEAD2>
<STKY><HEAD3>Module 2, Lesson 1, Video 1: The concept of test (sound of water)</HEAD3></STKY>
<LESSON>
<SCRIPT id="m2/l1/v1" done="k" t="5:24">
<SESS t="1.50" done="a" kf="30" id="s1">
In this module we shall learn about <B>test of statistical
hypotheses</B>. What is that? You may ask. Well, it's a long story
with many details that might scare beginners away.
---
 We shall go into
those details later. For now let's start with a simple
non-mathematical example. 
---
Here I have a sealed container, and I want to know if it is half
filled with water. How do I ascertain that? Remember: my aim is
not to find the actual content of the container,...
---
 but just to
provide a yes/no answer to the question: Is it partly filled with
water?

Why not just open it and see?
---
 Well, it  is sealed, and I
cannot open it. So guess work is my only option. 
---
Let's start by feeling  the weight. It's not empty. But it could
be water or wood or something else.
---
 Let's shake it, and listen to the sound. It does not sound like water at all. It actually
sounds like...any way who cares! That it does not sound like
water is all I need to know. That's enough info for me to
conclude that it cannot be half filled with water.
---
Test of statistical hypotheses is just a formal way of carrying
out this same common sense procedure.
</SESS>
<JINGLE t="0.1">More formally</JINGLE>
<SESS t="1.40" done="a" kf="10,20,30,40,50,60,70,80,140" id="s2">
The set up started with two possibilities: either the container
is <B>partly full of water</B> or <B>not that</B>. In statistical parlance we call
these  two <B>hypotheses</B>. 
---
One of them is called the <B>null hypothesis</B>
the other is called the <B>alternative hypothesis</B>. We shall learn
later how to choose which one to call the null and which one to
call alternative.
---
 But to keep going let's say "partly filled with
water" is our null hypothesis. We denote the null hypothesis by
the symbol <B><M>H_0</M></B> and the alternative one
by <B><M>H_1</M></B>. 
---
The two hypotheses must cover all possibilities, and must not
overlap. Thus, it should not be possible to have a situation
where neither hypothesis holds or both the hypotheses
hold. 
---
 Deciding in favour of one of these hypotheses is called a
<B>test of hypotheses</B>. Opening the container and peeping inside
would have given the answer for sure, but that was impossible by
the rule of the game.
---
 So guessing based on imperfect indirect
knowledge is the only option. Hence we have <B>statistical</B>
hypotheses testing.
</SESS>
<JINGLE t="0.1">Test statistic</JINGLE>
<SESS t="2.00" done="a" kf="10,20,30,40,50" id="s3">
When we picked up the container, felt its weight and gave it a shake,
and listened to the sound,
we were collecting <B>data</B>, some useful and some not. The weight did
not help us at all, but the sound did.
---
 The relevant aspect of the data is called the <B>test
statistic</B>. 
Here we meet the term
statistic again, a quantity computed based on the sample.
---
 Since
it is being used for testing, so the term test statistic. Its
choice crucially depends on the two hypotheses we are trying to
distinguish between.
---
 For instance, had we tried to distinguish
between water and milk, sound would have been of little value,
because either would have sounded about the same.
---
  If the two
hypotheses were water versus empty, then weight itself would have
provided enough clue.
---
The test statistic should be some aspect of the data that behaves
very differently under the two hypotheses. In order to decide if
the null hypothesis is true we need to know the behaviour of the
test statistic under the null hypothesis,...
---
 ie. the sound of water
in our toy example. This is called the <B>null distribution</B> of the
test statistic.
---
We compare the observed value of the test statistic with its
null distrbution. If the observed value is too extreme compared
to what is expected for the null distrbution, then we naturally
cast our vote in favour of the alternative hypothesis.
---
 This decision is customarily called <B>Rejecting <M>H_0</M></B>.
If, on the other hand, the observed value
of the test statistic is nothing incongruous with the null
distrbution, then we <B>Accept <M>H_0.</M></B>
</SESS>
</SCRIPT>
<EXRLIST id="m2l1_a.yml">
- typeName: multipleChoice
  prompt: >
We have a random sample of patients. We have found the
proportion of COVID infections among them. Which of the
following is a valid hypothesis to be tested?      
  defaultFeedback: >
      Remember the hypothesis is about the unknown population
  quantities, the parameters, and not the known sample quantities.
  shuffleOptions: true
  options:
  - answer: The population proportion is 0.5
    isCorrect: true
    feedback: >
       Yes, a hypothesis must be completely in terms of
  parameters, and not any sample quantity.
  - answer: The sample proportion is 0.5
    feedback: >
      
  - answer: The  sample proportion is less than the population proportion
    feedback: >
</EXRLIST>      

<STKY><HEAD3>Module 2, Lesson 1, Video 2: The concept of test (sound of water)</HEAD3></STKY>
<SCRIPT id="m2/l1/v2" done="k" t="6:38">
<SESS t="0.60" done="a" kf="30,60" id="s1">
In the last video we talked about comparing the observed value of
the test statistic with its null distribution, ie, how the test
statistic is expected to behave if the null hypothesis were true.
---
This comparison may be done in a couple of ways:

* using <B>p-value</B>
* using <B>critical value</B>
---
The p-value technique is what is used by most standard
statistical softwares and is the easier to explain. So we shall
start with that.
</SESS>
<JINGLE t="0.1">p-value</JINGLE>
<SESS t="1.40" done="a" kf="10,20,30,40,50" id="s2">
In the Basic Statistics course we had already discussed <B>p-value</B> as a means of checking if a
given value is too extreme compared to a bunch of numbers. This
is precisely what we need here.
---
 We know the <B>null distribution</B>,
ie, the type of values that the test statistic is expected to
take if the null hypothesis were true.
---
 And we are to compare the
<B>observed value of the test statistic</B> with these. If the value is
too extreme, then we shall reject <M>H_0</M>, else we shall
accept <M>H_0.</M> 
---
As we have already learned in the Basic Statistics course, the
p-value is basically the chance that the test
statistic may be more extreme  than the observed value assuming
the null hypothesis is true.
---
 If this is small, then the observed
value is already too extreme. and we reject <M>H_0.</M> Clearly
smaller p-values favour rejection of <M>H_0.</M>
---
 How small is
small enough? A commonly used threshold is <B>5%</B>. If you want to be
more liberal use 1%. Whatever threshold you use is called
the <B>level of significance</B> of the test. 
---
It is possible to use a mathematical curve
to find p-values. Let's understand this...using pictures.
</SESS>
<BC t="4" done="r" id="pval_212">
Show points along a numberine explain p-value. Draw
histogram. Approx by curve. Explain by area.
</BC>
<SESS t="0.50" done="a" kf="30,60,90" id="s3">
Thus the pvalue technique for test of statistical hypotheses is
to <B>compute the test statistic</B>, <B>compute the p-value</B> and
reject/accept <M>H_0</M>...
---
 according as the p-value is below or
above 0.05<V>[shown]</V>. Statistical softwares generally just give you 
the p-value, leaving the choice of the cut off to you.
</SESS>
</SCRIPT>

<EXRLIST id="m2l1_b.yml">
- typeName: textReflect
  prompt: >
     What do you do if the p-value is above the level of significance? 
  defaultFeedback: >
      You accpet the null hypothesis.
</EXRLIST>

<STKY><HEAD3>Module 2, Lesson 1, Video 3: Lab</HEAD3></STKY>
<SCRIPT id="m2/l1/v3" done="k" t="5:23">
<SESS t="0.20" done="a" id="s1">
In this video we shall take a closer look at the concept of
p-value in the context of test of hypotheses.
</SESS>
<SC t="5" done="r" id="pval_213">
Toy example: start with data and some arbit test
statistic.  Give lots
of typical values in a different sheet. Find p-value based on
them. Accept or reject. Mention that this is an exploded view,
not recommended in practice.
</SC>
</SCRIPT>

<EXRLIST id="m2l1_c.yml">
- typeName: textReflect
  prompt: >
     If the cut-off for p-value is raised from 5% to 10%, am I
  being more liberal towards accepting the null hypotheses? 
  defaultFeedback: >
      No, just the opposite. A p-value of 0.07 would now lead to
  rejection of the null hypotheses, while earlier it would have
  led to acceptance.

</EXRLIST>

<STKY><HEAD3>Module 2, Lesson 1, Video 4: Critical value method</HEAD3></STKY>
<SCRIPT id="m2/l1/v4" done="k" t="5:11">
<SESS t="1.80" done="a" kf="10,20,30,40,50,60,70" id="s1">
The <B>p-value method</B> is simple, but leaves one important question
unanswered. How do we choose the test statistic? This
question is not terribly important for us in this course,...
---
 because we shall be using standard softwares where the test statistic is
already built in. But still it is good to have an idea. And that
is where the <B>critical value method</B> will help us. 
---
Incidentally, it will also expose us to some more statistical
jargon. 

In a statistical hypothesis testing scenario our conclusion is
based only on indirect evidence, and hence liable to
errors. There are two types of errors. Let's discuss them.
---
 There are two hypotheses that cover all possibilities without any overlap
<V>[H0 and H1 shown in column headed truth]</V>. Accordingly we have two possible verdicts:
<B>accept <M>H_0</M> and reject <M>H_0</M></B><V>[shown as row
with head verdict]</V>.
---
So we have a tabular structure with 4 cells.<V>[shown]</V> These two cases
correspond to correct decisions.<V>[finger]</V> <M>H_0</M> correct, and we have
rightly accepted it. Here <M>H_0</M> does not hold, and we have
indeed rejected it.
---
 These two cases correspond to errors. Here we
have rejected <M>H_0</M> even though it is actually correct, and here
we have accepted a wrong <M>H_0.</M> These two are called type
I and type II errors.<V>[shown]</V>
---
 Notice that if we swap the
labels <M>H_0</M> and <M>H_1</M>, then the  types are also
swapped. The convention is to call the <B>more serious</B> of the two
errors Type I, an accordingly label the hypotheses as <M>H-0</M>
and <M>H_1.</M>
---
Let's understand this with an example.
</SESS>
<JINGLE t="0.1">An example</JINGLE>
<SESS t="1.20" done="a" kf="30" id="s2">
Suppose that I have a tumour in my hand. I am worried about its
being cancerous. So there are two possibilities: it is cancerous
or it is not. These are my two hypotheses.
---
 I visit a doctor, who
makes diagnostic measurements (ie collects data) and either says
"Yes, it is cancer" or "No, it isn't".<V>[table shown]</V> Now let's look at the two
errors.
---
 Here<V>[finger]</V> I do not have cancer, but the doc says cancer. So I
pass a few sleepless nights, curse my fate, and spend some money
to get my harmless tumour treated.
---
 Now let's see the consequence
of the other error. I do have cancer, but the doc says, "Don't
worry, you're just fine!" I feel very happy, go home, cancer
spreads, and RIP.
---
I hope you'll agree that the latter error is the more serious of
the two. So we shall call that our Type I error. Now type I error
is the error of rejecting a correct <M>H_0.</M> So we label the
two hypotheses accordingly. 
</SESS>
<JINGLE t="0.1">Level of significance</JINGLE>
<SESS t="1.20" done="a" kf="30,60" id="s3">
Since Type I error is the more serious, we naturally want to
guard against that first. We set an upper bound on the
probability of committing that error. This upper bound is called
the <B>level of significance</B> or the <B>size</B> of the test.
---
 Common choices are 5% and 1%. Subject to this we choose a test that minimises
the probability of the other error. This minimisation dictates
the choice of the test statistic, as well as of the cut off
value, or <B>critical value</B>, as it is called.
---
In this approach we have to  compute the test statistic from the data and
compare it against the critical value. Depending on the side of
the critical value our test statistic lands, we either accept for
reject <M>H_0.</M>
---
However, in our course we do not need to worry about all
these. The softwares already know the best test statistic to use
in each case, and so the simpler p-value approach will give the same
result as the more ambitious critical value approach.
</SESS>
</SCRIPT>

<EXRLIST id="m2l1_d.yml">
- typeName: multipleChoice
  prompt: >
      If the level of significance of a test is 0.05, this means:
  defaultFeedback: >
    Remember that level of significance is the maximum
  permissible probability of rejecting a correct null hypotheses.      
  shuffleOptions: true
  options: 
  - answer: >
  If the null hypothesis is true then the chance of
  rejecing it is at most 5%.
    isCorrect: true
    feedback: >
      
  - answer: The chance of making a wrong decision is at most 5%.
    feedback: >
      
  - answer: >
    If the null hypothesis is false, then the chance of accepting it is at
    most 5%.
    feedback: >
      
</EXRLIST>

<SCRIPT id="m2/l1/v5" done="k" t="6:01">
<BC t="6" done="r" id="binom_215">
A huge lot of items. Proportion of defective items is \theta
unknown. 
The lot is is good if H_0: \theta \leq 0.2  vs H_1: \theta > 0.2. Accept a
lot based on a sample 
of 10 iff all ok. Compute type I and type 2 prob.
</BC>
</SCRIPT>

<EXRLIST id="m2l1_e.yml">
- typeName: textReflect
  prompt: >
     Consider the scenario shown in the video. But now we have the
  null hypothesis theta = 0.5. A sample of size 2 is drawn. We
  accept it if only if at least one item is ok. Compute type I error probability.
  defaultFeedback: >
      We reject if and only both the items are defective. Under
  the null hypothesis the chance of this happening is 0.5*0.5 =
  0.25, which is the required answer.


</EXRLIST>

</LESSON>
<HEAD2>Module 2: Lesson 2: One sample t-test</HEAD2>

<STKY><HEAD3>Module 2, Lesson 2, Video 1: one-sample t-test</HEAD3></STKY>
<LESSON>
<SCRIPT id="m2/l2/v1" done="k" t="6:54">
<SESS t="2.00" done="a" kf="30" id="s1">
There are many different types of tests of statistical hypotheses
suited for different purposes. We shall talk about quite a few of
them this week.
---
 Let's start with the one that is possibly
the easiest to understand and has wide application. We shall
start with an example. 
---
We all use bottled liquids, milk, shampoo, oil, medicines. The
container bears a label telling us the amount of the content. How
does the manufacturer ensure that the amount is as it should
be?
---
 Of course, if we fill each bottle manually we may
painstakingly measure out the right amount and pour it in. But
these bottles are not packaged manually. The amounts are poured
out by some automated device, and churned out by the hundreds.
---
 If some setting somewhere goes off a bit, it will have a disastrous
effect. So the manufacturer has to keep a constant eye on the
process. And test of statistical hypotheses plays the role of
that eye.
---
First, we must understand that even when the bottling plant is working
satisfactorily, there is bound to be some inevitable random variation among the
amounts of the contents in the bottles. 
---
 The extent of this variation is typically a property of the machine
itself,  its precision, and may be expected to hold through out. 
But even with the precision in place, the setting may get shifted 
over time. And that's what we need to guard against. 
---
This calls for a <B>test of mean</B>. Again,
be careful here: this mean is the population mean. 

The procedure is this: We take some bottles from the production line, open
them and actually measure their contents.
---
 That's our data. We want toy know if the population
mean is shifted from its advertised value or not. Let's
understanding this: using some concrete numbers.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="3.5" done="r" id="sc_onet_221">
Start with a population. Draw a sample. Draw another
sample. Shift population. Draw
another sample.  Compute means of all three samples. 
Point out that the difference between the first two is ignorable,
but not so for the third.
</SC>
<JINGLE t="0.1">Back to theory</JINGLE>
<SESS t="1.00" done="a" kf="10,20" id="s2">
So we take our null hypothesis <B><M>H_0: \mu = 50</M></B> and the alternative
hypothesis <B><M>H_1: \mu \neq 50.</M></B>
 Be careful here, this <M>\mu </M> is the population mean,
 the unknown quantity depending on the current possibly faulty condition of the
machine. 
---
Had it been just the sample mean, then we could just
have computed it and checked if it is equal to 50. 

Even here, we do need to compare the sample mean with 50, but since the sample mean is
just an approximation of the population mean, we should allow some
margin.
--- 
A sample mean just a little off from 50 should not be an
excuse to stop the production process and call for the
repairman. 
---
The question is how to choose the margin. And that's what we
shall discuss in the next video.
</SESS>
</SCRIPT>
<EXRLIST id="m2l2_a.yml">
- typeName: textReflect
  prompt: >
     In order to test the null hypothesis that the population of
  a random sample of a continuous variable is 50, a student
  proposes to reject the null hypothesis if and only if the
  sample mean equals 50. Is it a good test?
  defaultFeedback: >
      Not at all. Even if the population mean is indeed 50, the sample
  mean will almost deviate slightly from 50 due to random
  error. So you'll never accept the null hypothesis.

</EXRLIST>
<STKY><HEAD3>Module 2, Lesson 2, Video 2: one-sample t-test</HEAD3></STKY>
<SCRIPT id="m2/l2/v2" done="k" t="5:58">
<SESS t="3.40" done="a" kf="10,20,30,40,50,60,70,80,90,100" id="s1">
We are learning test of population mean. In the last video we
discussed a real life scenario where such a test is called
for. Let's quickly recall the set up, but this time in an
abstract way. 
---
Our set up consists of a population, an underlying distribution
with an unknown <B>mean <M>\mu.</M></B> In our bottling plant example
this is the population of all bottles that the machine can churn
out in its current possibly faulty setting.
---
 We have an <B>advertised value <M>\mu_0</M></B> for <M>\mu.</M> We want to
test <B><M>H_0: \mu =\mu_0</M> versus <M>H_1: \mu \neq \mu_0.</M></B>
---
 In certain other situations it may be known a priori that <M>\mu</M> cannot fall
below <M>\mu_0.</M> Then we can just test againt <B><M>H_2: \mu >
\mu_0.</M></B>
---
 Similarly, other situations may call for testing against <B><M>H_3: \mu <
\mu_0.</M></B>
 These are called respectively
<B>two-tailed, upper-tailed and lower-tailed</B> alternatives.
---
We have a random sample from the population <B><M>X_1,...,X_n.</M></B>
We compute <B><M>\bar X</M></B> and are about to compare this
with <M>\mu_0.</M>
---
 We intuitively feel that we should
reject <M>H_0</M> in favour of <M>H_1</M> not just if <M>\bar X</M> is slightly
different from <M>\mu_0,</M> but only if <M>\bar
X</M> is too far away from <M>\mu_0.</M>.
---
 Similarly we should reject <M>H_0</M> in favour of <M>H_2</M>
(or <M>H_3</M>) if <M>\bar X</M> is much larger (or smaller)
than <M>\mu_0</M>. 
---
The question now is "how large is too large?" The answer, as you
might have guessed already, depends on the dispersion present in
the population.
---
 When you are measuring an agricultural plot a
shift of a few centimetres during measurement is nothing serious,
but during an eye operation using laser beams, a shift of even a
10th of a millimetre may be disastrous. 
---
Hmmm...dispersion present in the population. How can we know
that? The population is that underlying unknown truth. Well,
yes. But not everything has to be unknown about the
population.
---
 For instance, many machines come with a rating of its
inherent precision, and even though we suspect that the mean has
shifted, we may have reason to believe that the dispersion is
still at its advertised value.
---
 If that is the case, then we are in luck. Let's call this <B>known 
population standard deviation <M>\sigma.</M></B> Then our test statistic is 
<B><D>
Z = [[(\bar X - \mu_0)][\sigma/\sqrt{n}]].
</D></B>
---
Its null distribution is <B><M>N(0,1)</M></B> which involves no unknown quantity,
and may be used to compute critical values or p-values.
---
Don't bother too much about this formula or the null distribution. 
These are already built
into all standard statistical softwares. However, you should
quickly recognise the denominator as the standard error
of <M>\bar X.</M>
---
 Notice the letter <M>Z.</M> Well, this test is
called the <M>Z</M>-test of mean.
</SESS>
<SESS t="1.20" done="a" kf="10,20,30,40,50"  id="s2">
So far we have discussed the case where we are in luck: the
population standard deviation is known. Our machine has possibly
slipped in the mean, but still holding its advertised
precision.
---
 In most situations, however, we are not this lucky. If
we suspect that our machine has drifted away from its advertised
mean, we are equally unsure about its current standard
deviation.
---
 Well, nothing to despair even then. If you do not
know <B><M>\sigma,</M></B> just estimate it!
 So our test-statistic now becomes 
<B><D>
t = [[(\bar X - \mu_0)][\hat \sigma/\sqrt{n}]],
</D></B>
---
Here <V>[finger]</V>
<M>\hat \sigma</M> is the sample standard deviation
with <M>n-1</M> in the denominator. The rest is basically same as
the test with known <M>\sigma.</M> 
This is the <B>one sample <M>t</M>-test.</B>
---
Of course, for the sake of complteness, we should also mention the null
distribution. 
 For z-test it was <B><M>N(0,1)</M></B> and for
the <M>t</M>-test it is something called <M>t_{(n-1)}</M><V>[shown]</V>.
---
Anyway, they are built into standard softwares. So
let's not torture ourselves with their not too apetising
mathematical forms. Instead it is time to see these things in action.
</SESS>
</SCRIPT>
<EXRLIST id="m2l2_b.yml">
- typeName: textReflect
  prompt: >
     t-test is used  the population standard deviation is
  unknown. True or false?
  defaultFeedback: >
     True. If the population standard deviation is known, then we
  use z-test.

</EXRLIST>
<STKY><HEAD3>Module 2, Lesson 2, Video 2: Lab</HEAD3></STKY>
<SCRIPT id="m2/l2/v3" done="k" t="6:21">
<BC t="6" done="r" id="onet_223">
Toy data. Full computation. Mention t-distribution. df.
<R>
set.seed(23261)
x = as.numeric(format(rnorm(6,mean=10),digit=2))
m=mean(x)
v=var(x)
n=length(x)
(m-11)*sqrt(n)/sqrt(v)
t.test(x,mu=11)
t.test(x,mu=11,alt="greater")
</R>
</BC>
</SCRIPT>
<EXRLIST id="m2l2_c.yml">
- typeName: textReflect
  prompt: >
     What is the degrees of freedom in a t-test if the sample
  size is 20? 
  defaultFeedback: >
      20-1 = 19.

</EXRLIST>
<SCRIPT id="m2/l2/v4" done="k" t="5:02">
<SC t="5" done="r" id="sc_zt_224">
z test and one sample t-test.
</SC>
</SCRIPT>
<EXRLIST id="m2l2_d.yml">
- typeName: textReflect
  prompt: >
     Consider this data set [[./exraux3/length.csv]] that stores
  the lengths of a random sample of bolts.  Test at 5% level of
  significance the null hypothesis that the population mean is 5 cm.
  defaultFeedback: >
      The t-statistics is 10.14. The p-value is nearly 0, and so
  < 0.05. Hence we reject the null hypothesis to conclude that at
  5% level of significance the population mean of the bolts
  differ from 5 cm.

</EXRLIST>
<R>
cw('exraux3')
set.seed(3534)
length = trim(rnorm(100,mean=5.2,sd=0.2))
csv(data.frame(length),'length.csv')
</R>

</LESSON>
<HEAD2>Module 2: Lesson 3: Paired t-test</HEAD2>
<LESSON>
<STKY><HEAD3>Module 2, Lesson 3, Video 1: Paired t-test</HEAD3></STKY>
<SCRIPT id="m2/l3/v1" done="k" t="5:05">
<SESS t="4.30" done="a" kf="10,20,30,40,50,60,70,80,90,100,110,120,130,140,150" id="s1">
As we have already said, there are many different types of tests
of statistical hypotheses 
suited for different purposes. We have already talked about the
t-test, or one-sample t-test, to be more precise. 
---
It was used to compare mean of a population with some given
value. Like here is a sample, do you think that the population it
comes from has mean equal to 50? That was pretty useful as it
stood. But we can do more with the idea. 
---
In this lesson we shall talk about a related
test, which is basically an application of what we have learned in
the last lesson. As usual, we shall start with an example. 
---
Often measurements are done in pairs. Like you do something, and
want to see the effect. Then you make two measurements, one before
and one after that activity. 
---
You have a medication for <B>insomnia</B>, say. Then you randomly
select some <B>patients</B>, and measure their
<B>daily average amounts of  sleep</B>.
<B>before</B> the medication starts, and then
again for the same set of patients <B>after</B> the medication is over.
---
 Another scenario that leads to paired
observations is where you have two similar, but different aspects of
something that you want to compare.
---
 Like you want to compare
 <B>salaries</B> of husbands and wives. You randomly select some <B>households</B>
with earning couples.
and compare the 
<B>husband's salary with the  wife's salary</B> within the same household.
---
 Or may be you have two different ways to measure the amount of
<B>active ingredient</B> in a tablet. You want to compare them. So you
take a random asortment of <B>tablet</B>s, break each tablet into two
halves and apply the <B>two methods</B>, one to each half, and record
the measurements.
---
There are many other possible scenarios. But we shall continue to use
the insomnia medication scenario as our running example. 
Imagine that there is a random sample of such patients, and we have two
measurements for each, one before and one after the medication.<V>[shown]</V>
---
 We are interested in knowing if the medication had any effect. Our
null hypothesis is <B><M>H_0: </M> no good effect vs <M>H_1:</M> some
good effect.</B>
---
 Clearly, we should look at the amount of increase in
the sleep. So we should subtract the before values from the after
values.
---
 We can express the hyptoeses mathematically like this. The
null hypthesis says:<V>[move]</V> on an
average the after values are the same as the before values.<V>[shown]</V> The
alternative says: the  after values are larger.<V>[shown]</V>
---
 Again, be careful here. The hypotheses are in terms of
the population means<V>[finger]</V>, these <M>\mu</M>'s are the
population means, and not the sample means. 

We have a population of patients.
---
 As each patient produces two measurements, one before
and one after, each patient is like a pair of numbers. So we have
a population of pairs.
---
 If in each pair we subtract the first from
the second, we get a population of differences. We want to to
know that if the mean of this population is zero or positive.
---
 In this case we are ruling out the possibility that the mean may be
negative, ie, the medication actually backfires, and reduces the
amount of sleep. 
---
We can now perform a t-test on the difference. This is called <B>paired
t-test</B>. 
---
Notice the adjective "paired". This is important. Here we have
two sets of measurements, the ones made before the medication and
the ones made afterwards.
---
 But these are not just like two
unordeeed sets. The first measurement in this set and the first
measurement of that set both correspond to the same patient. This
common aspect provides the pairing between them. 
---
Now it is time to take a look at paired t-test in practice.
</SESS>
</SCRIPT>
<EXRLIST id="m2l3_a.yml">
- typeName: textReflect
  prompt: >
     In order to test if male  programmers earn more than
  female programmers the monthly incomes of 50 randomly selected
  male programmers and 50 randomly selected female programmers
  have been collected. Is this data set appropriate for a paired t-test?
  defaultFeedback: >
      No. There is no pairing here. For example, the first male
  value has nothing to with the first female value. Such a
  situation calls for different tye of t-test, that we shall
  learn soon.  
</EXRLIST>

<STKY><HEAD3>Module 2, Lesson 3, Video 1: Paired t-test</HEAD3></STKY>
<SCRIPT id="m2/l3/v2" done="k" t="6:30">
<SC t="6.5" done="r" id="sc_pairt_232">
Medication data. Peform the test.
</SC>
</SCRIPT>

<EXRLIST id="m2l3_b.yml">
- typeName: textReflect
  prompt: >
     We want to test if the class 10 scores differ significantly
  from the class 12 scores for students in a certain state. A random  sample
  of students are selected from those who have appeared for both
  the exams in that state, and their scores are recorded in
  [[./exraux3/marks.csv]]
  Perform a paired t-test at 5% level. 
  defaultFeedback: >
      The test statistic is -2.91. The p-values is 0.005 <
  0.05. So we reject the null hypothesis to conclude that at 5%
  level of significance the two means differ.

</EXRLIST>
<R>
cw('exraux3')
set.seed(33332)
marks10 = sample(10:100,100,rep=T)
marks12 = sample(30:100,100,rep=T)
csv(data.frame(marks10,marks12),'marks.csv')
t.test(marks10,marks12,paired=T)
</R>
<STKY><HEAD3>Module 2, Lesson 3, Video 1: Paired t-test</HEAD3></STKY>
<SCRIPT id="m2/l3/v3" done="k" t="6:03">
<SESS t="2.10" done="a" kf="0,10,20,30,40,50" id="s1">
In the last video we saw paired t-test in action. Here we shall
look at it from a more abstract viewpoint, and also consider the
assumptions on the underlying distribution that are needed. 
---
We start with a data matrix with 2 continuous variables whose
values are paired. Let's pause for a moment and understand this
concept.
---
 Suppose we have two sets of agricultural plots, each set
has 5 plots.<V>[rectangles shown]</V> In the first set we have sown paddy and in the
second we have sown wheat.<V>[shown]</V>
---
 We measure the yields of all the
plots. Thus we have 5 paddy yields and 5 wheat yields. We
create a 5x2 data matrix out of them.<V>[shown]</V>
---
 Is this suitable for
paired t-test? No, because the two columns are not paired. You
might as well shuffle the values within a column without
losing any information. 
---
Now compare this with  a similar situation. A new chemical
spray has been been proposed that is supposed to enhance the
yield of paddy.
---
 To test its efficacy 5 plots are taken<V>[shown]</V>, 
and paddy is sown in them.
---
 Then each plot is divided into
two equal halves<V>[shown]</V>, and the spray is applied to only one half.

---
 The yields from the two halves are measured separately, resulting in 5
with-spray yields and 5 without-spray yields. Again we get a
5x2 data matrix.<V>[shown]</V> Is this data set suitable for a paired t-test?
---
The answer is Yes. The fact that the same plot is split into two
halves provide the pairing. The two halves in the same pair share
common soil type or irrigation.
---
Now let's come back to ... the mathematical set up.
</SESS>
<BC t="4" done="r" id="bc_pairt_233">
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
</BC>
</SCRIPT>
<EXRLIST id="m2l3_c.yml">
- typeName: textReflect
  prompt: >
     In the pair t-test statistic as well as the 1-sample t-test
  static we are dividing by the sample standard deviation. Why?
  Can you see the need for this intuitively?
  defaultFeedback: |-
      We are basically trying to see if the sample mean (in case
  of 1-sample t-test) or the sample mean of the differences (in
  case of the paired t-test) is close to zero or not. Now
  "close to zero" is to be interpreted with respect to the
  variability of the quantity. When we measure distance of the
  stars even an error of a few light years is "good enough"
  because the variability of the measurement is very high. But
  for eye surgery an error of even 0.1 cm is serious, because
  there the aparatus is much more precise. The sample standard
  deviation gives us an idea of this variability.

</EXRLIST>
<SCRIPT id="m2/l3/v4" done="k" t="6:13">
<BC t="6" done="r" id="pairt_234">
Toy data. Full computation. Mention t-distribution. df.
<R>
set.seed(23263)
x = as.numeric(format(rnorm(6,mean=3),digit=2))
y = as.numeric(format(rnorm(6,mean=3),digit=2))
z = y - x
m=mean(z)
v=var(z)
n=length(x)
(m-0)*sqrt(n)/sqrt(v)
t.test(z,alt="greater")
</R>

</BC>
</SCRIPT>
<EXRLIST id="m2l3_d.yml">
- typeName: textReflect
  prompt: |-
     Consider this toy data set and compute the paired t-test
  statistic for equality of means:
  | X | Y |
  |---+---|
  | 2 | 3 |
  | 4 | 4 |
  | 3 | 4 |
  | 2 | 2 | 
  What are the degrees of freedom?
  defaultFeedback: >
      Test statistic value is -1.73, degrees of freedom are 3.

</EXRLIST>
<R>
t.test(c(2,4,3,2),c(3,4,4,2),paired=T)
</R>

</LESSON>

<HEAD2>Module 2: Lesson 4: Two-sample t-test</HEAD2>
<LESSON>

<STKY><HEAD3>Module 2, Lesson 4, Video 1: 2-sample</HEAD3></STKY>
<SCRIPT id="m2/l4/v1" done="k" t="6:42">
<SESS t="2.80" done="a" kf="10,20,30,40,80,90,100,110,120,130,140" id="s1">
In the last lesson we learned about the paired sample
t-test. What we are going to learn in this lesson is deceptively
similar to that. It is called <B>two sample t-test</B>, or sometimes
called the <B>independent samples t-test</B>.
---
 This latter terminology is more suggestive, and clearly expresses its difference from a
paired sample t-test. Here also we have two sets of numbers, but
instead of being paired they are indepenedent. 
---
Let's spend some time appreciating the difference. While
discussing paired t-test we had mentioned an example where we
were assessing the effectiveness of a spray in increasing
agricultural yields. The set up there was like this.<V>[shown]</V>
---
 We had halved a number of plots, and applied the spray to only one half
and measured the yields of the halves separately. Now this is pretty cumbersome
to carry out in practice. So instead here is a different more
easily implementable set up.
---
 We start with a bunch of more or
less identical plots, say 9.<V>[shown]</V> Then we pick 4 plots randomly out
of them and apply the spray only to those.<V>[shown]</V> So we have 4
yields from these, and 5 from the others.<V>[finger]</V>
---
The resuting data look like this.<V>[shown]</V> 
So now we have to compare 4 numbers with 5 numbers. Clearly there is no pairing between
elements of these two sets. They are indepenedent. Even the sizes of these two sets are
different, one is 4, the other 5.
---
 Here we need a different type
of t-test, the <B>two-sample t-test or the independent samples
t-test.</B> 
---
The first step  is to compute the
average yield from both the groups, call them <M>\bar x</M>
and <M>\bar y</M> and subtract one from the other.<V>[shown]</V>
---
 It is not enough to  check that it is more than or less than
zero.  We must remain
aware that our conclusion is to hold for the population means,
for which the sample means are just approximations.
---
 So we need to
have an idea about how good the approximations are, ie, the
variability of the yields within the two populations must be taken
into account. 
---
Here we face an unexpected problem. It may be the case that the
variability within the two populations are the same. Or it could be
that there is no such guarantee. Accordingly we have two different tests:
<B>homoscedastic</B> and <B>heteroscedastic</B>. 
---
Let's consider the cases one by one.
</SESS>
<TODO>chop silence:done</TODO>
<JINGLE t="0.1">Homoscedastic and heteroscedastic</JINGLE>
<BC t="3" done="r" id="bc_twot_241">
In the homoscedastic case,  the dispersion is the same in
both the groups. Here we use this test statistic.<V>[shown]</V>
---
 For the
heteroscedastic case the dispersion may be different
in the two  groups. There we use a this test statistic.
<V>[shown]</V>
---
 The formulae are somewhat complicated, but their null
distributions are simpler. They are 
always <M>t</M>-distributions with different degrees of
freedom.
---
 In the homoscedastic case it is <M>m+n-2,</M><V>[shown]</V>
In the hetescedastic
case it is complicated. 
They are complicated,
but they have a pattern. In both the cases the numerator is the
difference of the two sample means, and the denominator is an
estimator of its standard error.

So let's see how to perform two-sample <M>t</M>-test using LibreOffice.
</BC>
</SCRIPT>
<EXRLIST id="m2l4_a.yml">
- typeName: textReflect
  prompt: >
     In order to test if boys run faster than girls on an average
  20 boys are 20 girls are chosen at random and for each of them
  the time to run 100 m is recorded. Is this an appropriate set
  up for a 2-sample t-test?
  defaultFeedback: >
      Yes. However, in practice we should be more precise about
  the scope of the study, like age group training level etc. 

</EXRLIST>
<STKY><HEAD3>Module 2, Lesson 4, Video 1: 2-sample</HEAD3></STKY>
<SCRIPT id="m2/l4/v2" done="k" t="6:06">
<SC t="6" done="r" id="sc_twot_242">
Homo and hetero 2-sample t-test
[data.ods]
</SC>
</SCRIPT>
<EXRLIST id="m2l4_b.yml">
- typeName: textReflect
  prompt: >
     Here is a data set of 20 boys' and 20 girls' running time
  for a 100 m sprint. [[./exraux3/runtime.csv]]

Perform both a homo
  defaultFeedback: >
      For the homoscedastic test, the test statistic is -4.53
  with p-value 1. So we accept (say at 5% level of significance)
 the null hypothesis that boys do
  not run faster than girls.
      For the heteroscedastic case, the test statistic is again
  the same, and so is the p-value, and the conclusion.
</EXRLIST>
<R>
cw('exraux3')
set.seed(6868)
boy = 16+sample(0:20,20,rep=T)/10
girl = 17+sample(0:20,20,rep=T)/10
csv(data.frame(boy,girl),'runtime.csv')
t.test(boy,girl,alt='greater',var.eq=T)
t.test(boy,girl,alt='greater',var.eq=F)
</R>
<STKY><HEAD3>Module 2, Lesson 4, Video 1: 2-sample</HEAD3></STKY>
<SCRIPT id="m2/l4/v3" done="k" t="4:00">
<SESS t="3.30" done="a" kf="10,20,30,40,50,60,70" id="s1">
We have seen how there are two versions of
2-sample <M>t</M>-tests based on <B>homo and heteroscedastic</B> set
ups. 
---
Both these tests seek to achieve the same basic aim,
comparing the means of two populations. Then why are there two
different tests? Well, because they work under two different set
ups. 
---
So the important question now is: given a real life problem, how
on earth are we to know which t-test we should use? The homoscedastic one
or the heteroscedastic one?
---
The answer depends on the <B>standard deviations of the two
populations</B>. If the two standard deviations are known to be equal, then we
are in the homoscedastic set up, otherwise (ie if the equality is not
known for sure) then we are in the heteroscedastic
set up.
---
 Now the population standard deviations are typically unknown. So there is no sure
way of knowing if we are in a homoscedastic set up or a
heteroscedastic one.
---
However, we may guess, or to use a more precise statistical term,
test the hypothesis of homoscedasticity against that of
heteroscedasticity. And there is indeed a standard test for that,
the <B><M>F</M>-test</B>. We shall learn about this in this video.
---
First we need some new symbols. We are talking about equality of
two population variances (or equivalently equality of standard deviations).
---
Remember that here we have two populations, and one sample has
been drawn from each, independently of the other. So each
population has its own standard deviation.
---
 We call these <B><M>\sigma_1</M> and <M>\sigma_2.</M></B> Then we are trying to
test <B><M>H_0: \sigma_1 = \sigma_2</M> vs <M>H_1: \sigma_1 \neq
\sigma_2.</M></B> 
---
We have already mentioned in the first lesson of this module, how
the best test statistic may be obtained by restricting the
probability of type I error, and minimising the probability of
type 2 error subject to that.
---
 Well, if we follow that rather
mathematical process, we finally arrive at a test statistic, which
is quite intuitive. It is 
<B><D>
[[\sum_i (x_i-\bar x)^2/(m-1)][\sum_j (y_j-\bar y)^2/(n-1)]].
</D></B>
---
Here <M>m</M> is the size of the sample from the first
population, and <M>n</M> is that for the second.

The numerator is just the sample variance for the first sample,
and the denominator is the sample variance  for the second
sample.
---
 If the two population variances are indeed the same, ie,
if <M>H_0</M> holds, then this quantity should be close to 1. How
close? That answer is given by the null distribution.
---
 Again, that is a complicated beast, but fortunately people have already
computed it. It is called an <B><M>F</M>-distribution with degrees
of freedom <M>m-1</M> and <M>n-1.</M></B>

Let's see it in practice in the next video.
</SESS>
</SCRIPT>
<EXRLIST id="m2l4_c.yml">
- typeName: textReflect
  prompt: >
     Again consider the same set up as in the last exercise. But
  this time we have 10 boys and 12 girls taking part. If we want
  to carry out an F test for homoscedasticity then what will be
  the two degrees of freedom? 
  defaultFeedback: >
      The first degrees of freedom is #boys-1 = 10-1=9. The
  second degrees of freedom is #girls-1 = 12-1=11.

</EXRLIST>
<STKY><HEAD3>Module 2, Lesson 4, Video 1: 2-sample</HEAD3></STKY>
<SCRIPT id="m2/l4/v4" done="k" t="5:58">
<SC t="6" done="r" id="sc_ftest_244">
F-test.
[ftest.ods]
</SC>
<R>
p(2,4,4)
set.seed(3346)
x1 = 20+trim(rnorm(100))
y1 = 10+trim(rnorm(100))

x2 = 10+trim(rnorm(100,mean=1))
y2 = 10+trim(rnorm(100,sd=0.5))
csv(data.frame(x1,y1,x2,y2),'ftest.csv')
</R>
</SCRIPT>
<EXRLIST id="m2l4_d.yml">
- typeName: textReflect
  prompt: >
     Perform an F-test  for homoscedasticity at 5% level of
  significance using the boys' and girls' running time data in
  [[./exraux3/runtime2.xlsx]]. 
  defaultFeedback: >
   [[./exraux3/runtime2sol.png]]
   The p-value shown in yellow is > 0.05. So at 5% level of
  significance we accept the null hypothesis of homoscedasticity.
</EXRLIST>
<R>
cw('exraux3')
set.seed(68681)
boy = 16+sample(0:20,12,rep=T)/10
girl = 17+sample(0:20,12,rep=T)/10
csv(data.frame(boy,girl),'runtime2.csv')
</R>

</LESSON>

<R>
cw('exraux3')
set.seed(2363476)
x = trim(rnorm(100,mean=11))
csv(data.frame(x),'meantest.csv')
t.test(x,mu=10)
</R>

<R>
cw('exraux3')
dat = read.csv('tablet.csv')
t.test(dat[,2],dat[,3],pair=T)
</R>
<EXRLIST id="m2_add.yml">
- typeName: peerReview
  prompt: >
    I am trying to test the null hypothesis that a particular
  coin is fair against the alternative that it is not fair. I
  toss the coin twice and reject the null hypothesis if and only
  if both tosses show the same outcome. What is the probability of type I error
  here?

  Rubric:
    1) Type I error means rejecting H0 when it is true. H0 is
    true means the coin is fair. Rejection of H0 means both
    tosses show the same outcome (HH or TT). (1 point)
    2) Probability is 0.5*0.5 + 0.5*0.5 = 0.5. (1 point)
- typeName: peerReview
  prompt: >
    I have performed a test to get a p-value 0.08. Should I
  accept the null hypothesis at 5% level of significance? 
  What about 10% level of significance?

  Rubric: 
    1) 5%: accept (1 point)
    2) 10%: reject (1 point)

- typeName: peerReview
  prompt: >
    Here is a random sample [[./exraux3/meantest.csv]] from a population with unknown mean
    and variance. Perform a test of hypothesis of the null
    hypothesis that the population mean equals 10 against the
    two-tailed alternative. Clearly mention whether you
    accept/reject the null hypothesis at 5% level of significance.

  Rubric:
    1) test statistic: 11.1, df = 99, p-value = 0. (1 point)
    2) Conclusion: At 5% level of significance reject H0:
    mean=10. (1 point)

- typeName: peerReview
  prompt: >
    There are two methods (NIR and HPLC) to find the amount of the active
    ingredient in a tablet. To compare them a random asortment of
    tablets are taken. Each tablet is halved and one method is
    applied to each half. The resulting data set is in [[./exraux3/tablet.csv]]. Perform
    a suitable test at 5% level of significance to test the null hypothesis that both the
    methods give basically the same result. Clearly mention
    whether you accept/reject the null hypothesis.

   Rubric:
     1) Paired t-statistic: -0.54, df = 9, p-value = 0.61 (1 point)
     2) Since p-value >= 0.05, at 5% level of significance we accept H0: both methods give
     same result. 

- typeName: peerReview
  prompt: >
    If we perform a homoscedastic two-sample t-test using two
    samples of sizes 5 and 8, then what will be the degrees of
    freedom? What will the degrees of freedom be for an F-test to
    test equality of variance using the same two samples?

  Rubric:
    1) For the t-test: 5+8-2 = 11.
    2) For the F-test: 5-1 = 4 and 8-1 = 7.


</EXRLIST>
<HEAD2>Module 2: Lesson 5: Review</HEAD2>
<LESSON>
<STKY><HEAD3>Module 2, Lesson 5 , Video 1: Review</HEAD3></STKY>
<STKY><HEAD3>Module 2, Lesson 5 , Video 2: Review</HEAD3></STKY>

</LESSON>

<HEAD1>Module 3: Goodness of fit and independence</HEAD1>
<SCRIPT id="m3/intro" done="k" t="2:31">
<SESS t="1.90" done="a" kf="30"  id="s1">
We are about to start our 3rd week. Last week we learned about
tests of hypothesis. This week we shall discuss 
two important applications of that concept.
---
Tests of hypothesis allow us to guess answers to yes-or-no
questions. Here is some such questions: Is smoking related to lung
cancer? Or does one's chance of getting admitted to some reputed
institute depend on one's religion?
---
 These and other such questions
are of great social importance. These are all yes-or-no
questions relating two categorical variables. Are you a smoker
(yes/no) with do you have lung cancer (yes/no).
---
 Or the relation between  your
religion (which is a categorical variable) and whether you
got admitted (yes/no). How do we go about answering such
questions based on data? That's one thing we shall learn this
week.
---
The other thing is slightly less obvious. We have learned about
distribution of a variable. In many cases we want to know if the
distribution is of some ideal type.
---
 Like here is a coin. Is it fair? Here is a Roullette wheel, it
is supposed to be perfectly balanced. Is it really so? Or look at
the gender distribution among the employees, is it really free of
bias?
---
 So you have an ideal distribution (or ideal class of
distributions in mind) and  some  data from a real
distribution. You want to answer the question:
---
 Does the real distribution (which you do not know beyond 
having a sample from it) really belong to or fit into that ideal
class. Such tests are called <B>goodness-of-fit</B> tests. 
---
We shall learn about them this week.

We shall work exclusively with categorical variables and
contingency tables. Lesson 1 will remind us
about them. 
</SESS>
</SCRIPT>
<HEAD2>Module 3: Lesson 1: Contingency tables</HEAD2>

<STKY><HEAD3>Module 3, Lesson 1, Video 1: Contingency tables</HEAD3></STKY>
<LESSON>
<SCRIPT id="m3/l1/v1" done="k" t="5:15">
<SESS t="1.30" done="r" kf="10,20,30,40,50" id="s1">
In the Basic Statistics course we talked about pivot tables, and
had mentioned how one special 
 type of pivot table
 has much more important use than the rest.
---
 These are the <B>contingency table</B>s. We had only touched upon the subject
in that course. Now is the time for a fuller exposition.
---
Let's start with a brief recap.
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
corresponding count. <V>[Explain by pointing].</V>
---
It should be quite easy to create such a contingency table in
LibreOffice, as we have already learned how to create a general
pivot table. Anyway, here is a little lab session, in case you
need one.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="4" done="r" id="sc_cont_311">
[Screencast: Make contingency table.]
lr.ods
</SC>
</SCRIPT>

<EXRLIST id="m3l1_a.yml">
- typeName: textReflect
  prompt: >
           Create a contingency table from this data set: [[./exraux3/typedef.csv]].
  defaultFeedback: >
      [[./exraux3/typedefsol1.png]]
</EXRLIST>

<STKY><HEAD3>Module 3, Lesson 1,  Video 2: Contingency table</HEAD3></STKY>
<SCRIPT id="m3/l1/v2" done="k" t="2:49">
<SESS t="1.10" done="a" kf="10,20,30" id="s1">
<TODO>Chop silence: done</TODO>
Contingency tables are very important objects in statistics. How
do we use them?
---
 They are used to  explore relation
between two categorical 
variables. We had a taste of this in the Basic Statistics
course. An example would help to jog our memory.
---
We often want to answer questions like <B>"Is smoking related to
cancer?"</B>. Or what is the relation between <B>education level and
income group</B>? Does the chance of <B>admission to an educational
institute depend on one's gender</B>? 
---
All these questions are trying
to connect two categorical variables. In the first case smoking
habit (Y/N) with cancer (Y/N).
---
 In the second case, educational
level (preschool, school,  college and above)
and income level (low, middle, high). In the third case admission
status (admitted / rejected) and gender (male /
female). 
---
Contingency tables help us to understand such relations.
</SESS>
<JINGLE t="0.1">Joint distribution</JINGLE>
<SESS t="1.00" done="a" kf="30,60,70,80" id="s2">
We have learned about frequency distributions in our Basic
Statistics course, and seen how they lead to probability
distributions via statistical regularity. 
---
Well, contingency tables do the same thing too. They are also
frequency distribution tables of categorical variables, not of just one categorical
variable, but multiple ones simultaneously. 
---
Thus we do not merely
ask questions like "how many males are there in my sample?", or "how
many lefthanded persons?" We ask both the questions together,...
---
 like "how many lefthanded males are there in the sample?" We call
these  <B>joint frequency distributions</B>.
---
 Just as we could
construct bar charts based on frequency distributions, we can
create bar charts based on joint frequency distrbutions<V>[shown]</V>. Here
each bar is like a 3D pillar, one pillar per cell.
---
Suppose we make the height of each bar depict not the
 frequencies, but the <B>relative frequencies</B>, ie the cell frequncies
 divided by the total sample size.
---
 Then statistical
 regularity will kick in. As the sample size increases, the bar
 plot will converge to a fixed shape. This shape is called the
 <B>joint probability distributions</B> of categorical
variables.
</SESS>
</SCRIPT>

<EXRLIST id="m3l1_b.yml">
- typeName: textReflect
  prompt: >
     We have made a contingency table with education level
  (prescool, school, college, higher) and
  income group (low, middle, high), based on a random
  sample of 1000 persons. Assuming that this sample size is large
  enough, what probability does the releative frequency of the
  (1,1)-th cell approximate?
  defaultFeedback: >
    The probability that a randomly selected person from the
  population will have preschool education level and be in the
  low income group.
</EXRLIST>
<STKY><HEAD3>Module 3, Lesson 1,  Video 4: Contingency table</HEAD3></STKY>
<SCRIPT id="m3/l1/v3" done="k" t="3:13">
<SESS t="3.00" done="a" kf="10,50,60,70,80" id="s1">
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
marginals are fixed, not random. However,  the col marginals
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
level distribution for men...
---
 differ significantly from that for
women, then the third scheme is not suitable, as there we are
starting by fixing the responsibility level counts.
---
  The first
scheme may also not be suitable if there happen to be too few men (or two
few women) in the sample. Here the second scheme is the best
suited for the purpose.
</SESS>
</SCRIPT>
<EXRLIST id="m3l1_c.yml">
- typeName: textReflect
  prompt: >
     A statistician suggests using the following sampling scheme
  to create a contingency table between gender and
  responsibility levels: Draw a random sample of size 100 such
  that al the marginals are fixed: 50 persons of
  each gender AND 25 persons of each responsibility level. What
  would you say to this plan?
  
  defaultFeedback: >
    You really cannot carry this out in practice without first
    creating a contingency table in a non-random way! Such a
    contingency table will not be suitable for statistical analysis.
</EXRLIST>
<STKY><HEAD3>Module 3, Lesson 1,  Video 5: Contingency table</HEAD3></STKY>
<SCRIPT id="m3/l1/v4" done="k" t="2:40">
<SESS t="1.60" done="a" kf="10,20,30,50,90,120,130,140,150,160" id="s1">
<TODO>Chop silence:done.</TODO>
Contingency tables tell us how multiple categorical variables
vary together. So far we have been considering the simplest
possible scenario, just two categorical variables.
---
 As a result our contingency tables are all 2-way or
2-dimensional. While these are indeed the most commonly used, it
is quite possible to have higher dimensional 
contingency tables, as well.
---
 A 3-way contingency table will not look like a flat rectangle
drawn on a piece of paper, but as a 3-dimensional block. Or like
a stack of rectangles, one rectangle per layer.
---
 Let's take an example. Suppose we want to study the relation
between 3 categorical variables, say, <B>gender</B>, <B>educational
level</B>
and <B>income group,</B>
---
 We consider  two levels
under gender <V>[shown]</V>, 4 under educational
level <V>[shown]</V>, and 3 under income group<V>[shown]</V>.
---
So we shall have a <B>3-way
contingency table</B>,which is <B><M>2\times4\times 3</M></B> in
size.
---
Here we commonly refer to the first variable as the
<B>layer</B>, the second as the <B>row</B>, and last as
 the <B>column</B>. It is as if a 3-way contingency table consists of
 layers, each layer holding a 2-way contingency table.
---
Thus, gender is the layer variable, educational level is the
row variable, and income group is the column variable. Such
 tables are generally printed  layer by layer, where each layer is
a 2-way table. 
---
Most of the concepts that we have learned about 2-dimensional contingency
tables readily generalise for higher dimensional contingency
tables, as well. For example, we may talk about association
between the variables.
---
However, a higher dimensional contingency table allows more
variety. For instance,  income group and educational level may
be associated in one way in the male layer, but  differently in
the female layer.  
---
We had some brush with such strange behaviours of
 multi-dimensional contingency tables in our Basic Statistics
 course already. 
---
In the next video we shall remind ourselves how to construct a 3-way contingency
table from raw data using LibreOffice.
</SESS>
</SCRIPT>
<EXRLIST id="m3l1_d.yml">
- typeName: textReflect
  prompt: >
     What will be size of a contingency table that shows gender
  (M/F) as layer, responsibility levels (Manager/Clerk/Support)
  as rows and income groups (High/Middle/Low) as columns?
  defaultFeedback: >
      2x3x3
</EXRLIST>
<STKY><HEAD3>Module 3, Lesson 1,  Video 6: Contingency table</HEAD3></STKY>
<SCRIPT id="m3/l1/v5" done="k" t="6:24">
<SC t="6" done="r" id="sc_simp_315">
[Screencast: 3-way simpson's paradox example. Just construction.]
simp.ods: victim, defendant, death penalty
</SC>
</SCRIPT>
<EXRLIST id="m3l1_e.yml">
- typeName: textReflect
  prompt: >
     If all the cell frequncies are doubled in the example shown
  in the video, will Simpson's paradox still be there? 
  defaultFeedback: |-
     Yes, because we are working with ratios. So doubling
  everything will have no effect.
</EXRLIST>
</LESSON>

<HEAD2>Module 3: Lesson 2: Independence test</HEAD2>
<LESSON>
<STKY><HEAD3>Module 3, Lesson 2, Video 1: Independence test</HEAD3></STKY>

<SCRIPT id="m3/l2/v1" done="k" t="6:50">
<SESS t="6.10" done="a" kf="10,20,30,40,50,60,70,80,90,100,110,120,130" id="s1">
In this video we shall discuss the most important application for
contingency tables: <B>testing independence between two categorical
variables.</B> 
---
Let's work through an example to build up the idea. We had
already seen this in the Basic Statistics course. Here we shall
develop the idea further. 
---
Let's start with an example. We want to see if there is any
association between <B>educational level</B> and <B>income group</B>.
---
 We have four educational
levels (<B>Preschool, School, College and Univ</B>) and 
three income groups (<B>High, Mid and Low</B>) and  we have a
population of people in mind,...
---
we draw a random sample from it, and
ask the people in the sample about their income groups and educational
levels. This will fill up a 3x4 contingency table.<V>[empty table trans]</V>
---
Notice that  I have not told you the entries in the cells. All
that I have given are the marginals. So you know the proportions of the
three income groups in the sample,...
---
 and also the proportions of
the four educational levels. Assuming that the sample is
representative enough, these are good approximations for the
population proportions.
---
Now suppose I pick a random person from the population, then
what is the chance that he/she belongs to the high income group? It
is<V>[finger]</V> this 60 by this 300, which is 1/5.
---
 Now suppose, just for the sake of argument,  I tell you that income group
is independent of educational level. What does that mean? That
means even if I whisper in your ear that the randomly selected
person has never been to school,...
---
 you'll have no reason to change your answer to the first
question. You'll still say that the 
probability of that person's being in the high income group is 1/5.
---
 This is true about all the
persons. In particular about<V>[finger]</V> all the 41 persons in this preschool
group.
---
 So out of these 41 persons each has 1/5 chance  of being
in the high income group. So the expected number of persons in
this cell is 41/5 = 8.2.<V>[shown]</V>
---
 Am I making sense? It's like I toss a coin with
1/5 chance of head. If I toss it 41 times, then the expected
number of heads is 1/5 of 41, ie, 8.2.
---
 Don't worry about it's not being a whole number, it is just the result of the numeric
computation. We mean the frequency in that cell should be near
about that number. Now notice how we arrived at this number.
---
 It is <B>row total times column total by grand total</B>. This holds for all the
cells. So we can compute the expected frequencies for all the
cells. <V>[shown]</V>
---
All these are under the assumption that income group and
educational level are independent. Now we also have some observed
frequencies in the cells.<V>[shown]</V>
---
 If these observed frequencies are more
or less like the expected frequencies, then we do not have reason
to suspect any association between the two variables. Otherwise,
this table itself is an evidence against the assumed
independence. 
---
The next question therefore is about how to compute the
difference between the expected and the observed
frequencies. Computing the difference between two numbers is easy,
you just subtract on from the other.
---
 But here we have two sets
of numbers. Some of them may be close, while some may be far
apart. We need some kind of a pooling across all the cells. Here
is our first attempt. 
---
<B><D>
\sum_{ij} (e_{ij} - o_{ij}).
</D></B>
where <M>e_{ij}</M>'s are the expected frequencies
and <M>o_{ij}</M>'s are the observed ones.
---
Unfortnately this will just give a zero, because this is just
subtracting the grand total from itself. The problem is that
positive differences are cancelling off negative differences.
---
 But
for us a difference is a difference, we do not care about the
sign. So we get rid of the sign by squaring:
<B><D>
\sum_{ij} (e_{ij} - o_{ij})^2.
</D></B>
---
That's better, but should all the cells be considered with equal
importance? If for a cell we have expected frequency 20000 and
observed frequency is just 10 more than that, then the squared
difference is 100.
---
 If for another
cell the expected frequency is 5 and observed is 10 more than that, then also
the squared difference is 100. Shouldn't these 100's be treated
differently?
---
 In the first case the 100 is where the expected
frequency was large, 20000, while in the second case the same
amount came from a smaller expected frequency, just 5.
---
 So, relatively, the second case is a more serious departure from
independence. So we update the formula to 
<B><D>
\sum_{ij} [[(e_{ij} - o_{ij})^2][e_{ij}]].
</D></B>
---
We have already met this quantity in our Basic Statistics
course. It is called the <B><M>\chi^2</M>-statistic</B>. Large values of
this makes us go against the null hypotheses of independence.
---
How large is large? We shall get into those questions. But first
a little lab session is in order. That's what we shall do in the
next video.
</SESS>
</SCRIPT>
<EXRLIST id="m3l2_a.yml">
- typeName: textReflect
  prompt: |-
     Fill in the expected frequencies in this contingency table
  assuming independence.
     |       | Female | Male | Total |
     |-------+--------+------+-------|
     | Blue  |        |      |    24 |
     | Brown |        |      |    38 |
     | Black |        |      |    54 |
     |-------+--------+------+-------|
     | Total |     71 |   45 |   116 |

  defaultFeedback: |-
     |       |   Female |      Male | Total |
     |-------+----------+-----------+-------|
     | Blue  | 14.68966 |  9.310345 |    24 |
     | Brown | 23.25862 | 14.741379 |    38 |
     | Black | 33.05172 | 20.948276 |    54 |
     |-------+----------+-----------+-------|
     | Total |       71 |        45 |   116 |
      

</EXRLIST>
<R>
rw = c(24,38,54)
cl = c(71,45)
gt = 116
outer(rw,cl)/gt
sum(rw)

</R>
<STKY><HEAD3>Module 3, Lesson 2, Video 1: Independence test</HEAD3></STKY>
<SCRIPT id="m3/l2/v2" done="k" t="6:08">
<BC t="6" done="r" id="chistat_322">
Hand computation (whorl)
<R>
obs = matrix(c(35,129,10,33),2)
rtot = c(45,162)
ctot = c(164,43)
gtot = sum(obs)
expc = matrix(0,2,2)
expc[1,1] = rtot[1]*ctot[1]/gtot
expc[1,2] = rtot[1]*ctot[2]/gtot
expc[2,1] = rtot[2]*ctot[1]/gtot
expc[2,2] = rtot[2]*ctot[2]/gtot
expc
(obs-expc)^2/expc
sum((obs-expc)^2/expc)
</R>
</BC>
</SCRIPT>

<EXRLIST id="m3l2_b.yml">
- typeName: textReflect
  prompt: |-
     Compute chisquare value from this contingency table:
       |    |  W | NW |
       |----+----+----|
       | W  | 34 | 25 |
       | NW | 98 | 34 |
 
  defaultFeedback: |-
     Here are the expected frequencies
     |    |         W |       NW |
     |----+-----------+----------|
     | W  | 1.1256652 | 2.518437 |
     | NW | 0.5031382 | 1.125665 |
     The chisquare value is 5.27.
</EXRLIST>
<R>
obs = matrix(c(34,98,25,34),2)
rtot = apply(obs,1,sum)
ctot = apply(obs,2,sum)
gtot = sum(obs)
expc = matrix(0,2,2)
expc[1,1] = rtot[1]*ctot[1]/gtot
expc[1,2] = rtot[1]*ctot[2]/gtot
expc[2,1] = rtot[2]*ctot[1]/gtot
expc[2,2] = rtot[2]*ctot[2]/gtot
expc
(obs-expc)^2/expc
sum((obs-expc)^2/expc)
</R>
<SCRIPT id="m3/l2/v3" done="k" t="4:58">
<SC t="6" done="r" id="sc_chistat_323">
Compute <M>\chi^2</M> by raw computation and automatically.
</SC>
</SCRIPT>

<EXRLIST id="m3l2_c.yml">
- typeName: textReflect
  prompt: |-
     Compute chisquare value using LibreOffice using the same
  contingency table as in the last exercise:

       |    |  W | NW |
       |----+----+----|
       | W  | 34 | 25 |
       | NW | 98 | 34 |
 
  defaultFeedback: |-
     Here are the expected frequencies
     |    |         W |       NW |
     |----+-----------+----------|
     | W  | 1.1256652 | 2.518437 |
     | NW | 0.5031382 | 1.125665 |
     The chisquare value is 5.27.

</EXRLIST>

<STKY><HEAD3>Module 3, Lesson 2, Video 1: Independence test</HEAD3></STKY>
<SCRIPT id="m3/l2/v4" done="k" t="6:08">
<SC t="6" done="r" id="sc_chidemo_324">
Idea of null distribution of <M>\chi^2.</M> Show a
population. Draw sample compute. Redraw and compute again. Show
difference. Show precomputed values in a different sheet. Make
hist.
chidemo.ods
</SC>
<R>
p(3,2,4)
set.seed(346346)
ser = 1:10000
gender1 = sample(c('male','female'),10000,rep=T)
type1 = sample(c('A','B','C'),10000,rep=T)
gender2 = sample(c('male','female'),10000,rep=T)
type2 = sample(c('A','B','C'),10000,rep=T)
val = numeric(1000)
for(i in 1:1000) {
   ind = sample(10000,500)
   val[i] = chisq.test(gender2[ind],type2[ind])$stat
}
csv(data.frame(ser,gender1,type1),'actual.csv')
csv(data.frame(ser,gender2,type2),'indep.csv')
csv(val,'samp.csv')
</R>
</SCRIPT>
<EXRLIST id="m3l2_d.yml">
- typeName: checkbox
  prompt: >
      Which of the following statements is/are true?
  defaultFeedback: >
      Sampling distribution means the behaviour of a statistic if
  fresh samples are drawn from the same population
  repeatedly. Null distribution is the special case where the
  population is as specified by the null hypothesis.
  shuffleOptions: true
  options:
  - answer: Null distribution is a special case of sampling distribution.
    isCorrect: true
    feedback: >
      
  - answer: Sampling distribution is a special case of sampling distribution.
    feedback: >
      
  - answer: Null distribution and sampling distribution are synonymous.
    feedback: >
      
  - answer: >
      Null distribution and sampling distribution are
      unrelated concepts.
    feedback: >
      

</EXRLIST>


<STKY><HEAD3>Module 3, Lesson 2, Video 1: Independence test</HEAD3></STKY>
<SCRIPT id="m3/l2/v5" done="k" t="2:58">
<SESS t="2.20" done="a" kf="10,20,30,40,50,60,70" id="s1">
In the last lab session we have got a taste of the null
distribution of the <M>\chi^2 </M> statistic. The process we used
there was cumbersome. Statisticians have found a smarter method,
albeit an approximate one.
---
 They have seen that if the sample size
is large, and so are all the expected frequencies (say <B>sample
size at least 30 and each expected frequency at least 5</B>, as a
rule of thumb),...
---
 then the shape of the histogram looks like this<V>[shown]</V>. 
Of course this is just the general shape, there could be
variations. 
---
To be precise the general shape gives a family of distributions,
called the <B><M>\chi^2 </M> distributions</B>. Each member of the
family is identified by a number called the <B>degrees of
freedom</B>.
---
 The larger the degrees of freedom, the more spread out
the shape. For example this<V>[shown]</V> has higher degrees of freedom than
this.
---
Given a contingency table there is a simple way to work out the
degrees of freedom of the null distribution. It is just 
<B>(nrows -1) times (ncols - 1)</B>.
---
 When you compute the numbers of
rows and columns, don't include the totals. We are counting only
the numbers of categories of the two variables.
---
 For instance, in the educational level vs income group example<V>[shown]</V>, the degrees of
freedom are (4-1)(3-1) = 6.
---
What happens if you have just one row or only one column? Is the
degree of freedom 0 then? Well, you do not need to worry about
that case.
---
 A caegorical variable should have at least two
categories, because otherwise it is just a constant! So you'll
always have at least 2 rows and 2 columns.
---
Of course, as a practicing statistician in the modern age, you
really do not have to remember all these. All standard
statistical softwares have these things built in. 

The next video will demonstrate this in action.
</SESS>
</SCRIPT>
<EXRLIST id="m3l2_e.yml">
- typeName: textReflect
  prompt: >
     If the degrees of freedom of a chisquare distribution
  increases, then how will its variance change?  
  defaultFeedback: >
     It will increase. Think about the shapes shown in the
  video. Higher the degrees of freedom, the more spread out the shape.
      
- typeName: textReflect
  prompt: >
     What can you say about skewness of a chisquare distribution
  based on the shapes shown in the video? 
  defaultFeedback: >
    Positively skewed.
      

</EXRLIST>
<STKY><HEAD3>Module 3, Lesson 2, Video 1: Independence test</HEAD3></STKY>
<SCRIPT id="m3/l2/v6" done="k" t="5:19">
<SC t="5" done="r" id="sc_chind_326">
<M>\chi^2 </M> test.
[eduinc: use menu, then show]
</SC>
</SCRIPT>
<EXRLIST id="m3l2_f.yml">
- typeName: textReflect
  prompt: >
     Carry out chisqure test of independence using this data set 
     [[./exraux3/bodygender.csv]] about the gender and body type
  of a random sample of persons. 
  defaultFeedback: >
      [[./exraux3/bodygendersol.png]]
      Notice how we decide about the accept/reject decision. 
      A computer will not do that for you. But a test is
  meaningless unless you clearly mention your final decision.

</EXRLIST>

</LESSON>
<HEAD2>Module 3: Lesson 3: Permutation test</HEAD2>
<LESSON>
<STKY><HEAD3>Module 3, Lesson 3, Video 1: Permutation test</HEAD3></STKY>
<SCRIPT id="m3/l3/v1" done="k" t="5:27">
<SESS t="2.70" done="r" kf="10,20,30,40,50" id="s1">
We have seen in the last video how the <M>\chi^2</M> statistic
may be used for testing independence between two categorical
variables.
---
 We first compute the <M>\chi^2 </M> statistic using a
special formula and then check if it is too large. If it is, then
we suspect that the two categorical variables are not
independent, else our verdict goes for independence.
---
 How do we
check for the value being too large? We employed
the <M>p</M>-value method. Now, <M>p</M>-value compares a given
number to a distribution, the null distribution in our case.
---
 That is, how the <M>\chi^2 </M> statistic is expected to behave had
the two categorical variables really been independent. 

Thus there are two steps:
---
* First, <B>finding the <M>\chi^2 </M> value</B>
* Second, <B>comparing it with the null distribution.</B>
---
How are we computing the null distribution? Well, we as
practising statisticians are not computing it ourselves, but
letting the computer do it for us using mathematics.
---
 Now most mathematical reasoning requires certain assumptions, and
<B>statistical regularity</B> is one of the major assumptions
here.
---
 Statistical regularity creates regular behaviour out
of randomness, when a large amount of randomness is piled
together carefully.
---
 So we need a large amount of randomness, ie,
a large sample. In particular for the <M>\chi^2</M> distribution
to hold, each of
the expected frequencies must be large as well.
---
 How large? Well, the larger the better, but a commonly used  rule of thumb sets
the threshold as <V>[ineqs shown]</V>low as 5. If the total sample size is at least
30  and expected frequencies in all
the cells in the table are at least 5,...
---
then we may safely use the null distribution provided by the
computer, says the rule. But 
what happens if some expected frequency drops below 5? Well, the
first step is still meaningful. 
---
The <M>\chi^2 </M> statistic still makes sense. 
It is sort of a distance between the observed
frequencies and the frequencies expected under independence.
---
 The only problem is that the null distribution prescribed for it by
the computer is not accurate any more.

In such a situation we use a different technique called
<B>permutation test</B>.
---
 The idea behind the test is quite intuitive,
though the final procedure is a bit too sophisticated for
LibreOffice. But still let me explain with an example. 
</SESS>
<JINGLE t="0.1">An example</JINGLE>
<BC t="3" done="r" id="bc_chiperm_331">
[Go fast]
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
</BC>
</SCRIPT>

<EXRLIST id="m3l3_a.yml">
- typeName: textReflect
  prompt: >
     In the video we kept the mother fixed and randomly shuffled
     the children. Could we serve the same purpose  if we randomly
     shuffled the (mother, child) pairs?
  defaultFeedback: >
      No, then the contingency table would not changed at all. We
  need to break the (mother, child) pairings randomly.
</EXRLIST>

<SCRIPT id="m3/l3/v2" done="k" t="5:42">
<SC t="6" done="r" id="sc_shuffle_332">
Randomise using random permutation.
[cards.ods: random number, show change. Fix, sort, then show that
fixing was not needed]
</SC>
</SCRIPT>
<EXRLIST id="m3l3_b.yml">
- typeName: textReflect
  prompt: >
    Create a column of numbers 1,2,...,100 in
  LibreOffice. Compute the mean of the first 50 in a cell using a
  formula like =average(a1:a100). Then randomly shuffle
  the column 10 times. See the average values change. Can you
  guess the Expectation of this random average?
  defaultFeedback: >
      Since any of the 100 numbers have the same change of coming
  to the top 50 positions, the expected value is the just the
  average of 1,...,100, which is 50.5.
</EXRLIST>
<SCRIPT id="m3/l3/v3" done="k" t="5:15">
<SESS t="0.5" done="a" id="s1">
We have seen one complicated method. Now we shall see a simpler but
crude method.
</SESS>
<BC t="5" done="r" id="imerge_332">
Merging.
<R>
set.seed(135317)
obs = matrix(c(46,34,5,2,47,78),2)
rtot = apply(obs,1,sum)
ctot = apply(obs,2,sum)
gtot = sum(obs)
(exp = outer(rtot,ctot)/gtot)
obs = matrix(c(51,36,47,78),2)
rtot = apply(obs,1,sum)
ctot = apply(obs,2,sum)
gtot = sum(obs)
(exp = outer(rtot,ctot)/gtot)
sum((exp-obs)^2/exp)

</R>
</BC>
</SCRIPT>
<EXRLIST id="m3l3_c.yml">
- typeName: textReflect
  prompt: >
     If we use chisquare test of independence based on a 3x4
  table where the last two columns had to be merged, then what
  degrees of freedom would you have? 
  defaultFeedback: >
      3 rows, (4-1)=3 columns. So degrees of freedom is (3-1)(3-1)=9.
</EXRLIST>
<STKY><HEAD3>Module 3, Lesson 3, Video 2: Permutation test lab</HEAD3></STKY>
<SCRIPT id="m3/l3/v4" done="k" t="6:41">
<SC t="6" done="r" id="sc_chiperm_334">
Permutation test: do one set of randomisation. Then show
many <M>\chi^2 </M> values in a different sheet. 
[whorlperm.ods]
</SC>
</SCRIPT>
<R>
p(3,3,4)
set.seed(25235)
dat = read.csv('whorlperm.csv')
n = nrow(dat)
chisq.test(dat[,1],dat[,2])
tmp = numeric(1000)
for(i in 1:1000) {
  ord = order(runif(n))
  tmp[i] =  chisq.test(dat[,1],dat[ord,2])$stat
}
csv(tmp,'1.csv')
lohist(tmp,'tmp')
</R>

</LESSON>
<HEAD2>Module 3: Lesson 4: Goodness of fit test</HEAD2>
<LESSON>
<STKY><HEAD3>Module 3, Lesson 4, Video 1: Goodness of fit test</HEAD3></STKY>

<SCRIPT id="m3/l4/v1" done="k" t="6:36">
<SESS t="1.60" done="a" kf="10,20,30,40" id="s1">
In statistics and probability we often talk about an <B>unbiased
coin</B>, a coin that when tossed is equally likely to show either a
head or a tail.
---
 We use such coins to make impartial decisions, like which
team should bat first in a cricket tournament. Now here is a
coin<V>[real]</V>. I want to know if it is unbiased. How do I go
about it?
---
Well, no amount of staring at it will take me anywhere. I can
start by tossing it a large numbr of times, say <B>1000</B>
times. Let's say I get <B>523 heads and 477 tails</B>. May I conclude
from it that the coin is unbiased?
---
 Well, ideally I should have
obtained <B>500</B> heads and as many tails. But a coin toss is random
after all, so we can never guarantee an exact 50% even for an
unbiased coin.
---
 So close enough to 500 is what we should look for. So the
all important question now is: Are 523 and 477 close enough to
500?  
---
Note the similarity of this situation with the independence test
that learned in the last lesson. We have<V>[finger]</V> observed frequncies 523
and 477 and expected frequncies 500 and 500.
---
 And we are trying to
test if the observed frequncies are too far away from the
expected ones. Let's try ... the <M>\chi^2 </M> statistic here.
</SESS>
<BC t="5" done="r" id="coin_341">
 We compute the differences between the  the observed and the
expected frequncies, square them divide by the expected
frequencies and sum. 

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
</BC>
</SCRIPT>

<EXRLIST id="m3l4_a.yml">
- typeName: textReflect
  prompt: >
     Suppose that we are performing a test similar to that shown
  in the video to test the fairness of a die. What degrees of
  freedom should we use?
  defaultFeedback: |-
      A die has 6 faces. So degrees of freedom should be 6-1=5.

</EXRLIST>
<STKY><HEAD3>Module 3, Lesson 4, Video 1: Goodness of fit test</HEAD3></STKY>
<SCRIPT id="m3/l4/v2" done="k" t="5:24">
<SC t="6" done="r" id="sc_hugli_342">
[nsshugli.ods] Equal prob.
</SC>
</SCRIPT>

<EXRLIST id="m3l4_b.yml">
- typeName: textReflect
  prompt: |-
     Carry out goodness of fit test for the probabilities 0.2,
  0.3 0.5 using the following data. 
   | Type  | Frequency |
   |-------+-----------|
   | A     |        35 |
   | B     |        24 |
   | C     |        41 |
   |-------+-----------|
   | Total |       100 |

  defaultFeedback: >
   [[./exraux3/gofsol.png]]

</EXRLIST>
<STKY><HEAD3>Module 3, Lesson 4, Video 1: Goodness of fit test</HEAD3></STKY>
<SCRIPT id="m3/l4/v3" done="k" t="4:23">
<SESS t="2.80" done="a" kf="10,20,30,40,70,80,90,100" id="s1">
In the last two videos we learned to perform a goodness-of-fit test
for some completely specified distribution, ie, a distribution
where the probabilities for all the categories were specified as
numbers.
---
 Sometimes we need to fit a distribution with unspecified parameters in
it. Then the procedure is similar but not entirely the same. 

Let's start with an example. 
---
You should have learned about the <B>Poisson distribution</B> in your
probability course, and have possibly also learned there that it
is used for modelling the probabilities of <B>rare events</B>. In case this
sounds new to you, here is a quick refresher. 
---
Consider this event:  a soldier
getting killed by a horse kick. Fortunately for the soldiers,
such events  occur pretty rarely. They usually get to die more
glorious deaths.
---
 Even if you count all such
unfortunate deaths in a band of soldiers for a whole year, the
number should be quite low, often just zero. This is an example
of a rare event.
---
 Now there is a belief supported by some
mathematical arguments that the probability of observing exactly <M>k</M>
such events  is ...
---
<B><D>
e^{-\lambda} [[\lambda^k][k!]]
</D>
for <M>k=0,1,2,...</M></B> This is called the Poisson distribution
with parameter <M>\lambda</M>, which is (population) average number of events.
---
We want to test if this belief holds true for our data
set. <V>[Prussian horse kick data raw]</V>
[Describe data]
---
We first summarise the data in the form of a frequency
distribution table.<V>[shown]</V>
---
 We need to know the probabilities, which
depend on the unknown <M>\lambda </M>. Of course, that is not a
problem, as we can estimate it by the sample average from the raw data. 
<B><D>
\hat \lambda = 0.7
</D></B>
---
 Then we have the probabilities or, rather, the estimated
probabilities<V>[shown]</V>. From these the expected frequencies are found
easily, by multiplying these with this total.
---
Now we compute
the <M>\chi^2 </M> statistic as usual.

So far so good. Next we need the null distribution. It is a chisq
distribution. The df is 
<B>#cat - 1 - #est param</B>.
---
 Here we have
just 4 categories. So the degrees of freedom should be 4-1=3. But
no, here we have estimated one parameter, and so the degrees of
freedom will be one less than 3, ie, 2. 

The rest is as before. We shall see the computational details in the next video.
</SESS>
</SCRIPT>
<EXRLIST id="m3l4_c.yml">
- typeName: textReflect
  prompt: >
     If are testing goodness of fit of a categorical variable
  with 5 categories against a distribution  with two estimated
  parameters, then what will the degrees of freedome be? Assume
  that each category has expected frequency at least 5, and the
  sample size is large enough.
  defaultFeedback: >
      #categories-1-#estimated parameters = 5-1-2=2.

</EXRLIST>
<STKY><HEAD3>Module 3, Lesson 4, Video 1: Goodness of fit test</HEAD3></STKY>
<SCRIPT id="m3/l4/v4" done="k" t="6:46">
<SC t="6" done="r" id="sc_kick_344">
Prussian data lab.
[kick.ods]
</SC>
</SCRIPT>

<EXRLIST id="m3l4_d.yml">
- typeName: textReflect
  prompt: >
     Carry out the same analysis as shown in the video, but with
  this data set [[./exraux3/fitpoi.csv]]. Do you think that the
  fit with a Poisson distribution is good at 5% level of significance? 
  defaultFeedback: >
      [[./exraux3/fitpoisol.png]].
      The estimated lambda in the green cell is the sample mean.
      Notice the yellow cell. How we have taken the last category
  as ">=5" to cover all possibilities. Similarly, the blue
  probability is computed to keep the total 1. 
</EXRLIST>
<R>
cw('exraux3')
count = sample(0:5,200,rep=T)
csv(data.frame(count),'fitpoi.csv')
</R>
<SCRIPT id="m3/l4/v5" done="k" t="6:09">
<SESS t="0.5" done="a" id="s1">
Did you notice one thing in the last video? The last category was
"3 or more". In the raw data we had 4 as the maximum number of
deaths. So why not have one category for 3 and another for 4?
---
Because then the expected frequncies become too small for the
chisq null distribution to hold. We shall
discuss this issue in this video with a different data.
</SESS>
<BC t="5" done="r" id="gmerge_345">
Merging.
<R>
set.seed(135317)
x = rpois(50,lambda=1)
table(x) 
50*(1-sum(dpois(0:4,lam=1)))
# 0     1     2     3     4    5 
#19    22     4     2     2    1
#18.39 18.39  (9.20  3.07  0.77 0.18)=13.21
ob = c(19,22,9)
ex = c(18.39,18.39,13.21)
k=sum((ob-ex)^2/ex)
1-pchisq(k,df=2) #0.36
</R>
</BC>
</SCRIPT>
<EXRLIST id="m3l4_e.yml">
- typeName: textReflect
  prompt: >
     Suppose that we have to merge some categories in a frequency
  distribution for performing a chisquare goodness of fit test
  against a completely specified distribution. 
  If the  original frequency distribution had 6 categories,and
  the merged frequency distribution has 4, then what degrees of
  freedom should we use?
  defaultFeedback: >
      Since the test is done based on the merged frequency
  distribution, which has 4 categories, the degrees of freedom
  should be 4-1=3.

</EXRLIST>

</LESSON>
<EXRLIST id="m3_add.yml">
- typeName: peerReview
  prompt: >
    Consider this data set [[./exraux3/typedef.csv]] where a
  each item in a random sample of items of three different types have been
  classified as defective or non-defective. Carry out a
  chi-square test to assess if there is any association between
  type and defectiveness. Use 5% level of significance.

  Rubric:
    1) The solution: [[./exraux3/typedefsol.png]]
    2) Compute the correct p-value (1 point)
    3) Write the conclusion (1 point)

- typeName: peerReview
  prompt: >
    A certain plant can be of three types that we call types A,
  B, C  and D. Theory predicts their proportion of occurence in
  nature as 0.1, 0.4, 0.2 and 0.3. A random sample of 100 such plants
  have been been collected and classified in
  [[./exraux3/plant.csv]]. Test at 5% level of significance
  whether these satisfy the predicted proportions.

  Rubric:
    1) The solution: [[./exraux3/plantsol.png]]
    2) Compute the correct p-value (1 point)
    3) Write the conclusion (1 point)

- typeName: peerReview
  prompt: >
    What are the assumptions that you must check before carrying
    out chi-square test of independence?

  Rubric
  ------
    1) Size of the sample must be large (say >= 30)
    2) Each expected cell frequency should be large (say >= 5)

- typeName: peerReview
  prompt: |-
    A statistician is carrying out a test of goodness of fit of
  categorical variable against a distribution involving one
  unknown parameter. If the categorical variable has 5 different
  values each with expected frequency >= 5, then what degrees of
  the freedom should she use for the chi-square test? Explain.

  Rubric:
    1) 5-1-1 = 3 (1 points)
    2) Explanation: #category-1-#(estimated param) (1 point)

- typeName: peerReview
  prompt: |-
    Consider this incomplete 2x2 contingency table:
     |        | A   | B | Total |
     |--------+-----+---+-------|
     | Male   | *   |   |   230 |
     | Female |     |   |    y  |
     |--------+-----+---+-------|
     | Total  | 100 | x |       |
  If the expected frequncy under the assumption of no association
  is 46, then Find x-y.

   Rubric:
     1) The expected frequncy is 46 = 230*100/(grand total). So
        grand total is 500. (1 point)
     2) So x = 500 - 100 = 400
           y = 500 - 230 = 270
        Thus x-y = 130.  (1 point)
</EXRLIST>
<R>
cw('exraux3')
type = sample(c('A','B','C'),500,rep=T)
defective = sample(c('Yes', 'No'),500,rep=T)
csv(data.frame(type,defective),'typedef.csv')
</R>

<R>
cw('exraux3')
set.seed(434665)
type = sample(c('A','B','C','D'),100,rep=T,prob=c(0.1,0.2,0.3,0.4))
csv(type,'plant.csv')
</R>
<HEAD2>Module 3: Lesson 5: Review</HEAD2>
<LESSON>
<STKY><HEAD3>Module 3, Lesson 5 , Video 1: Review</HEAD3></STKY>
<STKY><HEAD3>Module 3, Lesson 5 , Video 2: Review</HEAD3></STKY>
</LESSON>

<HEAD1>Module 4: ANOVA</HEAD1>
<SCRIPT id="m4/intro" done="k" t="2:53">
<SESS t="2.50" done="a" kf="30"  id="s1">
We have learned about two important arms of statistical inference
in the first two weeks: estimation and testing. The third week
taught us two applications of testing.
---
 This week we shall learn about another important application
area. <B>Analysis of Variance or 
ANOVA</B> for short.
---
 What is it? Well, we shall need to spend some
time to wrap our brain around the basics. We shall do so in the
first lesson. 
---
But for now let me tell you
where it is applied. Imagine any set up where you have some inputs
and some output,...
---
 like your washing machine. The various settings as well as the
nature of the clothings you put 
into it are the inputs, and the quality of cleaning is the
output.
---
 In order to assess the performance of the machine (whether as a
designer or a user) you naturally want to explore the
input-output relation. ANOVA is the first step to that.
---
 It will let you make decisions like
"This knob is basically useless" or
"That setting has hardly any effect unless you are washing silkens." 
---
That's just one example. It doesn't have to be about a physical
machine like a washing machine. It could be like teaching a
student. That's also like a machine...conceptually.
---
 The inputs are the various pedagogic techniques, audio visual systems,
instructiin language, etc
and output is say the marks the student obtains in a final
exam.
---
 And we want to decide which inputs really matter, and which
don't. That's something ANOVA will let you answer.
---
As yet another example, consider a plot of agricultural land. You
sow some variety of crop, apply a certain fertiliser, use some
irrigation method. These are you inputs. The output is the yield
of your harvest.
---
 Again, ANOVA techniques help you to answer
questions like whether a fertiliser is really good or not.
---
We can go on and on like this. A doctor might consider a patient
as a machine, the medicines etc as input and some diagnostic
measurement as the output. An engineer may consider a production
process as the machine, and so on.
---
It is remarkable how the same reasoning may be applied to all
these diverse fields. And that's what we are about to explore
this week.
</SESS>
</SCRIPT>
<HEAD2>Module 4: Lesson 1: ANOVA concept</HEAD2>
<LESSON>
<STKY><HEAD3>Module 4, Lesson 1, Video 1: ANOVA story</HEAD3></STKY>
<SCRIPT id="m4/l1/v1" done="k" t="3:56">
<SESS t="2.80" done="a" kf="30,50,80,110,140,150,160,170,190" id="s1">
Suppose that you have entered a room, that you haven't been to
before<V>[shown]</V>. There  you find a lamp that is on. And two switches like
these, one turned on, the other off. 
---
Just by looking at these can
you conclude which switch controls the  lamp? Since only this
switch is on, and so is the lamp, it is natural to guess that it
is this switch that controls the lamp.
---
 OK, let's now try to turn
the lamp off. We flick the switch<V>[shown]</V>. Well, nothing happens. We now
try the other switch<V>[shown]</V>. Aha, now the lamp responds.
---
So what's the conclusion now? Which switch really controls the
lamp? This second switch of course!
---
This simple example contains an important maxim: when we want to
understand the relation between input and output it is more
reliable to link changes in the input with changes in the output
than value of the input to the value of the output. 
---
The switch whose state (on/off) matches the state of the lamp
need not be the one controlling it. The switch whose change of
state corresponds to the lamp's change of state is the actual
controller. 
---
There are plenty of real life examples demonstrating this maxim. I
am ill, I take a drug and get cured in a week<V>[shown]</V>. Does that prove
that the drug is effective?
---
 Not until I compare this with a
similar situation where the drug is not taken.<V>[shown]</V> May be then also I
would have been cured in a week<V>[shown]</V>. 
---
In that case, the input changed from drug to no drug, but the
output remained the same. So the drug is not effective.  That's why it is
important to see how the output changes when the input changes. 
---
This basic principle sits at the heart of what we shall discuss
in this module. In many branches of science as well as in
everyday life we often have to understand the input-output
relation of a system that we treat as a blackbox unit.<V>[shown]</V>
---
 If the unit is a blood pressure patient<V>[move, shown]</V>, then the
input could be a drug that may be administered in different doses
and output could be the  blood pressure measured after medication.
---
If the unit is a spring<V>[shown]</V>, then the input could be the load hung
from it, and the output would be the elongation of the spring.
---
 There could be multiple inputs as well. In a typical agricultural
experiment<V>[shown]</V>, the unit is a plot,  the inputs could
be the variety of crop, the fertiliser used,  and the output would be the yield.
</SESS>
<JINGLE t="0.1">What are we trying to find?</JINGLE>
<SESS t="0.60" done="a" id="s2">
The main aim here is not really to assess the input-output
relation but to check which inputs influence the output and which
do not. 
---
This is like a preliminary step before embarking upon a
formal analysis to estimate the relation.
---
 And it is here that our
maxim plays an important role. Change the inputs one at a time
and see if the output also changes accordingly.

The next video will illustrate this with a concrete example.
</SESS>
</SCRIPT>

<EXRLIST id="m4l1_a.yml">
- typeName: textReflect
  prompt: >
     The students who join a particular tutorial centre perform well in the
  final exam. Can I conclude from this that the tutorial really
  helps to well in the exam.
  defaultFeedback: >
      No. Here is one objection: 
       We need to also compare with similar students who have
  not joined that centre. May be the exam is so easy that
  everybody does well. 
</EXRLIST>
<STKY><HEAD3>Module 4, Lesson 1, Video 1: ANOVA story</HEAD3></STKY>
<SCRIPT id="m4/l1/v2" done="k" t="3:54">
<SESS t="3.30" done="a" kf="10,15,20,50,60,90,120" id="s1">
The example that I am going to discuss here is painfully
real. Indeed so much so, that I have to hide behind symbolic
notation lest I hurt anybody's personal feeling. 
---
In a certain country the people are of two religions. Call them
<B>Religion 1 and Religion 2</B>. A commonly held belief in that country
is that Religion 2 is <B>against education</B>. 
---
And even a cursory glance at the populace seems to provide ample evidence in favour
of this belief. If you take a random sample of people following
Religion 1, and another random sample of people following
Religion 2,...
---
 then indeed the educational achievements of the
latter group would be far below that of the former. Since
education is a good thing, and people following Religion 2 have
less education,...
---
 so it is claimed that Religion 2 is bad, and
keeps its followers backward. But is this conclusion indeed justified?
---
Well, here we can visualise this as a blackbox system.<V>[shown]</V> Religion
is the input and education is the output.
---
 We see that a change in
Religion (ie, comparison between people of different religions)
leads to change in education. So apparently the conclusion seems
justified.
---
Now in that country Religion 1 used to be only religion, and there used to be
much oppression against the poor class. This class sought to
build a separate identity and fight back, and that's how Religion
2 gained currency.
---
 Even now  Religion 2 is embraced chiefly by
the poorer people of the country. 

Let's take a second look at our blackbox in light of this new information. 
---
So now we have  another input into our blackbox, <B>income</B>. 
This opens up a whole new interpretation. Is it really
religion that determines the educational level or is it the
income?
--- 
It is quite possible that poorer people get
less education, and since followers of Religion 2 are mostly
poor, we see a greater number of less educated persons among
them.
---
 A conclusion can be drawn by changing only a single factor
at a time, ie by comparing the educational levels of the rich and
poor within the same religion, and comparing religions among
people of similar financial status.
---
 Our earlier conclusion was that most the variation in the
education was due to diference in religions. Let's show variation
with a double arrow,<V>[shown]</V> the thicker the arrow the more
the variation. 
---
 The religion arrow was thicker meaning it accounted for  the
lion's share of the output variation, while this arrow was much thinner. 
---
In the new interpretation<V>[shown]</V> this arrow becomes big and this
becomes smaller. 
---
This idea of accounting for different parts of the variability in
the output by variation in the inputs is called <B>ANalysis Of
VAriance or ANOVA</B>. Because we are splitting or analysing the
variation and assigning the parts to different heads.
</SESS>
</SCRIPT>

<EXRLIST id="m4l1_b.yml">
- typeName: textReflect
  prompt: >
     Consider the last exercise once again. Come up with another
  objection in light of the video you just watched. 
  defaultFeedback: >
         May be there is some hidden factor like financial
  status. Only rich students can afford to join that institute,
  and being rich they also afford better education elsewhere.

</EXRLIST>
<STKY><HEAD3>Module 4, Lesson 1, Video 1: ANOVA story</HEAD3></STKY>
<SCRIPT id="m4/l1/v3" done="k" t="3:50">
<TODO>Chop some faltering+silence:done</TODO>
<SESS t="3.40" done="a" kf="10,20,30,40,50,60,70" id="s1">
When we draw a blackbox like this<V>[shown]</V> it looks like a machine that
takes this input and produces that output. Now the output of a machine is
supposed to be completely determined by its inputs.
---
 However, consider this example, where the unit is a plot, input is crop
variety and  output is yield.<V>[shown]</V> Even if I take two
identical plots, sow the same variety,
is it guaranteed that the yield will be exactly the same?
---
 No, there are
bound to be many imponderable factors that will make the two
yields slightly different. In order to show this schematically in
our box diagram we add this input<V>[shown]</V> and call it the random
error.
---
 Now when we ascribe parts of the output variation to
different inputs, the part that we could not explain using the
other inputs, all those imponderable effects are put under this
head.
---
To appreciate let's consider comparing the yields of three
different varieties of the same crop. There are say 5 fields
under each variety, so 15 fields in 
all. We measure the yield of each plot, and that's our output.<V>[shown]</V> 
---
Here we have shown all the output values in a number line. So we have 15
points. We have shown the varieties using different
colours. There are 5 points of each colour.
---
 Here the points of
the same colour are all tightly together with ample gap between
the points of different colours. What can we conclude from this?
 That the varieties are really different in terms of yield.
---
 Why are the points of the same colour  not exactly together?
That is because of random error. Thus, random error has its
contribution no doubt, but the effect of the varieties is far
stronger.
---
 We denote this using arrows like this. 
A fat arrow for the variety input, and a thin one for the random
error.<V>[shown]</V>
---
Compare this with this situation.<V>[shown]</V> Now the points of
different colours are all mixed together. Shall we say here that
the varieties really have much effect on the yield?
---
 No, here chance plays the dominating role. So now the random error gets
the fatter arrow<V>[shown]</V>, and to maintain the same total, the variety
input gets the slender arrow.
---
This simple example introduces possibly the most important
concept in the whole of ANOVA: using the variation due to the random
error input as the yard stick.
---
 We say that an input has significant effect on the output if and
only if its effect is appreciably larger than what we anyway expect from mere
chance. 
---
Thus ANOVA is not only just about ascribing variablities
in the output to the different inputs (including random error),
but also expressing the variations contributed by all the inputs in terms
of that due to the random error. 
</SESS>
</SCRIPT>

<EXRLIST id="m4l1_c.yml">
- typeName: multipleChoice
  prompt: >
           We take 2 girls and  2 boys from the same class in the same
  school. We consider their mathematics marks and physics
  marks. Consider this as a blackbox system with inputs gender and
  subject (and random error) and output marks. Then which of the
  following differences sheds light on the contribution of the
  random error input?

  defaultFeedback: >
      You must compare outputs of two units for which gender and
      subject are the same.
  shuffleOptions: true
  options:
  - answer: between physics marks of the two girls
    isCorrect: true
    feedback: >
      
  - answer: between math marks and physics marks of the same boy 
    feedback: >
      
  - answer: between math marks of a boy and that of a girl
    feedback: >
      
  - answer: between math marks of a girl and physics mark of boy.
    feedback: >
      
      

</EXRLIST>
<STKY><HEAD3>Module 4, Lesson 1, Video 1: ANOVA story</HEAD3></STKY>
<SCRIPT id="m4/l1/v4" done="k" t="7:32">
<SESS t="2.30" done="a" kf="30,60,90,120,150,180" id="s1">
We have already presented the two important pillars of
ANOVA. Let's start by reminding ourselves.<V>[box shown]</V>
---
* One, splitting the variation<V>[shown]</V> in the output into components
  ascribable to the various inputs including the random error.
---
* Two, using the variation due to the random error as the yard
  stick of how much variability we must endure, and measuring the
  variations due to the other inputs relative to that.
---
Traditionally this idea is presented in the form of a table
called the <B>ANOVA table</B>. These tables have many intricate details
that need not concern us here.
---
 But it is important to know the basic structure.<V>[shown]</V>
We have shown only the most 
important columns:<V>[finger]</V> source, this SS stands for Sum of Squares,
then F and finally p.
---
 The table has one row for each of the arrows (including
the random error and output). The total row stands for the
output. 
---
 The source column tells us which  row is
for which input<V>[anim shown]</V>.
---
 In our schematic box diagram, these double arrows denote
variabilities, fatter means higher variability, thinner means
lower variability.
---
 These are quantified<V>[finger]</V> as something called the
Sums of Squares, or SS  for short. These populate the second
column in our table<V>[anim shown]</V>.
---
 This total sum of squares is the
total variablity in the output, which is being decomposed into
sums of squares due to the different sources. 
---
After this come a few more
columns which are of technical nature and hence would be skipped
here. Finally we want to express the different sums of squares
relative to this error sum of squares.
---
 In other words, we divide
these by this. Again, there are some technicalities that I am
skipping here. But the F column does basically this. Now we check
if any of these numbers is too large.
---
And this too large is measured as usual by a p-value, that's why
we have the last column.
 Any of these p-values falling below 0.05 indicates that the
corresponding source has a significant effect on the output.  
---
As you can see, I am glossing over certain details, partly
because the math is a bit involved, and mostly because they play
no role in the interpretation of the result.
---
 And interpretation of the table is what we, as practising statisticians, are
primarily interested in. Still let me give you a taste of the
mathematics in a particularly simple case.
</SESS>
<JINGLE t="0.1">A simple mathematical analysis</JINGLE>
<BC t="4" done="r" id="bc_aovss_414[ab]">
Consider our number line example once again. We had three
varieties of the same crop and measured the yields from 15 plots,
5 for each variety.<V>[shown]</V> 
---
The variability among the points of the same colour indicate the
contribution of the random error. The variability among point
clusters of the different colours is due to the contribution of
the varieties.
---
 To express these variabilities mathematically, let
us introduce a notation system. We shall denote the yields by the
letter <M>y.</M><V>[shown]</V> Also we shall attach a numbering scheme to the
15 plots.
---
 Each plot will be indexed by a pair <M>(i,j),</M><V>[shown]</V>
where <M>i</M> denotes the <B>variety</B> sown in it (<M>i=1,2,3</M>)
and <M>j</M> is like a <B>roll number</B> that runs from 1 to 5 within
the same variety.
---
 Then the yield from the <M>(i,j)</M>-th plot
will be denoted by <M>y_{ij}.</M> 
---
Thus the dots of the same colour correspond to <M>y_{ij}</M>'s
with the same <M>i</M> and different <M>j</M>'s. Let's mark the
centres of each colour cluster.<V>[shown]</V>
---
The centre of the <M>i</M>-th cluster is <V>[finger]</V> <M>\bar
y_{i\bullet}.</M> Note the dot in place of the <M>j</M> index,
over which which we have averaged.
---
The variability
in the first cluster therefore may be quantified as 
<B><M>\sum_j(y_{1j}-\bar y_{1\bullet})^2.</M></B>
---
 Similarly for the other
colours. So the total contribution of chance is the
sum <B><M>\sum_i\sum_j (y_{ij}-\bar y_{i\bullet})^2.</M> </B>
---
On the other hand, when we want to measure the contribution due to
the varieties, we consider dots of each color as a single class
and measure the variability between the classes.
---
 For this imagine all the points in the same class to be concentrated at the center
of the class.<V>[finger]</V> Let the overall mean be <M>\bar
y_{\bullet\bullet}.</M><V>[shown]</V>
---
 Then the variability between the classes
corresponds to <B><M>\sum 5 (\bar y_{i\bullet}-\bar
y_{\bullet\bullet})^2.</M> </B>
---
Finally, the total variability present in the output, ie.,
all <M>y_{ij}</M>'s is <B><M>\sum_i \sum_j (y_{ij}-\bar y_{i\bullet})^2.</M> </B>
---
It comes as a pleasant surprise that we have the following
algebraic identity:
<B><D>
\sum \sum (y_{ij}-\bar y_{i\bullet})^2 = \sum J (\bar y_{i\bullet}-\bar
y_{\bullet\bullet})^2 + \sum_i\sum_j (y_{ij}-\bar y_{i\bullet})^2.
</D></B>
---
We shall prove this in the next video, and is exactly what we expected
intuitively. It is one of those moments where intuition is
borne out by mathematics exactly. 
---
When we write an ANOVA table we write precisely these quantities:
<B><PRE>
------------
Source    SS
------------
Variety  BSS
Error    ESS
------------
Total    TSS
------------
</PRE></B>
</BC>
</SCRIPT>
<EXRLIST id="m4l1_d.yml">
- typeName: textReflect
  prompt: >
     If we add 5 to all the outputs corresponding to i=1, then
  which sum of
  squares would not change? 
  defaultFeedback: >
      The Error SS. It never points of one colour with points of
  a different colour.

</EXRLIST>
<STKY><HEAD3>Module 4, Lesson 1, Video 1: ANOVA story</HEAD3></STKY>
<SCRIPT id="m4/l1/v5" done="k" t="5:46">
<BC t="6" done="r" id="aovid_415[abc]">
Proof of the 1-factor ANOVA identity.
</BC>
</SCRIPT>


</LESSON>
<HEAD2>Module 4: Lesson 2: ANOVA terms and data layout</HEAD2>
<LESSON>

<STKY><HEAD3>Module 4, Lesson 2, Video 1: ANOVA terms</HEAD3></STKY>
<SCRIPT id="m4/l2/v1" done="k" t="4:36">
<SESS t="2.10" done="a" kf="10,20,30,40,50,60,70,80" id="s1">
<TODO>Chop a slight silence:done</TODO>
When dealing with an ANOVA problem, it is important to think about
the blackbox diagram<V>[shown]</V>. There must be<V>[finger]</V>
at least one input apart from 
the inevitable random error input, and exactly one output.
---
 The traditional theory of ANOVA requires the output to be <B>continuous,</B>
and the random error input to be continuous as well. The other
inputs may be categorical or continuous. 
---
If all the <B>non-random inputs are categorical we call it an ANOVA</B>
set up. If all the non-random inputs are <B>continuous we generally
call it a regression set up</B>.
---
 If there is at least one categorical and one continuous
non-random input, then it is an ANCOVA set 
up.<V>[shown]</V> Here ANCOVA means <B>ANalysis of COVAriance</B>.
---
The categorical inputs are called <B>factors</B> and the continuous
inputs are called <B>covariates</B> in ANOVA parlance. 
---
If there are exactly <M>k</M> categorical inputs and no
continuous input, then we have a <M>k</M>-factor ANOVA.
---
 If we also have at least one
continuous input, then it is <M>k</M>-factor ANCOVA. The number
of covariates does not feature in the nomenclature.
---
 This terminology however, is not entirely standard. Some people use
the term <M>k</M>-factor ANOVA only when each factor combination
occurs exactly once in the data set. This is what Libreoffice
uses as well. It will be clear when we see examples in the lab.
---
In this module we shall focus on only 1-factor and 2-factor
ANOVA. 

Next let us understand the nature of data that we need in order
to carry out ANOVA.
</SESS>
<JINGLE t="0.1">Data</JINGLE>
<SESS t="2.30" done="a" kf="30,60,70,100,130,160,170,200" id="s2">
The main aim in ANOVA is to explore a blackbox system to see
which inputs have any appreciable effect on the output. For this
it is important to keep two  basic principles in mind: 
---
* First, <B>change each input</B>

* Second, <B>change them one at a time. </B>
---
Let's take a closer look at the first<V>[shown]</V>. If you are interested in
assessing if a drug is effective, it is not enough to apply the
drug to some patients and see its effect.
---
 You must also not give the drug to some other similar patients,
and see the difference between the patients who got the drug and those who
didn't.
---
 This gives rise to the wellknown concept of <B>placebo</B> in
clinical studies, where a dummy drug is given to one group and
the true drug is given to the other group.
---
 The dummy drug has no medical value, it is just to keep the patients happy so that
no psychological effect creeps in. The group of patients who did
not get the real drug is usually called the <B>control
group</B>. 
---
The other group that gets the real drug is the <B>treatment
group</B>.
---
Next we come to the second point: <B>changing the inputs one at a time</B>.
If you always change multiple inputs simulateneously it
will be impossible to figure out which input caused the output to
change.
---
 It's like I have a fever. My wife suggests visiting an
alopathic doctor while a friend suggests seeking homeopathic
medication. Unwilling to displease either, I take both types of
medicine, and get cured.
---
 Now which doctor should get the credit?
Or may be the medicines reacted together to form a new chemical
which actually cured me!
---
 Such a situation where two or more inputs have
changed together so that the change in output cannot be clearly
ascribed to either is called <B>confounding</B>. And this should better
be avoided. The next video will discuss how.
</SESS>
</SCRIPT>
<EXRLIST id="m4l2_a.yml">
- typeName: textReflect
  prompt: >
     In order to assess the effectiveness of a drug we take a
  random sample of  10 male patients and 10 female patients. Then
  we apply the drug   to the men and the placebo to the
  women. What's wrong with this   approach? 
  defaultFeedback: >
      Gender effect is confounded with drug effect. If the men
  heal quickly, it could be because of the drug or because
  somehow men have better resistance to that particular ailment.

</EXRLIST>
<SCRIPT id="m4/l2/v2" done="k" t="4:02">
<SESS t="3.70" done="a" kf="30,60,90,120,150,180,210,240,270,300,330" id="s1">
To avoid confounding we have to collect our data carefully. Let's
consider this situation.<V>[shown]</V>
We have<V>[finger]</V> a drug whose effectiveness we are trying
to test, as measured by its influence on  blood pressure.
---
We suspect that smoking habit might influence the
effectiveness. 

So we have two inputs drug and smoking habit. We
know that each input should be changed.
---
 Now I have two values for <B>smoker</B>: <B>yes and no</B>. 
But I have only one <B>drug</B>. How do I change that
input? Well, in order to assess effectiveness of the drug we need
to compare it with the effect of applying no drug.
---
 And just not to let a patient feel any different psychologically, we disguise
the "no drug" externally as a "drug" (like a harmless tablet or
syrup, saline injection) called a placebo.
---
 Thus we have two possible values for the drug input: <B>real and
placebo</B>.
---
So I have a 2x2 layout<V>[shown]</V>. It is important that I have
representatives from all the 4 cells.<V>[finger]</V> That is, I must give the
real drug to some smokers, placebo to some other smokers,...
---
 the real drug to some non-smokers and also the placebo to some
non-smokers.
---
To assess the effecacy of the drug <V>[finger]</V> we can then
compare this group with this, and this group with this. But if we
just confine our study to these cells,...
---
 ie, give the real drug to only smokers and placebo to only
non-smokers then drug effect and smoking effect will be confounded.
---
 This way of laying out the
patients in a rectangular array allowing for all possible
combinations is called a <B>factorial design</B>. 
---
The same principle of changing only one input at a time when
applied to the random error input  gives
rise to another concept called <B>replication</B>. Remember that random
error is an input<V>[finger]</V>, that we have no control
on.
---
 So it is always changing. In order to let it change alone we just have to hold all
the other inputs fixed for some time. Let's understand this with
the drug example. We have the 2x2 layout.
 Let's have at least two patients per cell<V>[shown]</V>
---
 When we compare the outputs for the patients in the
same cell their variation must be solely due to the random error
input, and so we can form an idea about the inevitable amount of variability
that we may expect due to chance alone.
---
 As we know this amount is
very important, as this is going to be yard stick w.r.t which all
the other variabilities are to be measured.
---
If the units are human beings, then we often assign them to
different groups <B>blind</B>ly, ie, without telling them their true
groups. If there are two drugs, they are given identical external
appearance.
---
 Sometimes even the experimenter is not allowed to
know the true groups until the data collection and analysis is
finished. This is called <B>double blind</B>. Such experiments
are most commony used in the clinical trials. 
</SESS>
</SCRIPT>
<EXRLIST id="m4l2_b.yml">
- typeName: textReflect
  prompt: >
     The more repeated measurements we take keeping the
  (non-random) inputs  fixed, the better we get to know the
  variability due to the random error input. Can you connect this
  with the standard error formula of sample mean that you had
  seen in module 1?
  defaultFeedback: >
      There we had sqrt(n) in the denominator. So more the sample
  size the more precise if sample mean as an estimator. These two
  are not exactly the same concept, but similar in their effect.

</EXRLIST>
<STKY><HEAD3>Module 4, Lesson 2, Video 1: ANOVA terms</HEAD3></STKY>
<SCRIPT id="m4/l2/v3" done="k" t="4:55">
<SESS t="0" done="r" id="s1">
In order to perform ANOVA we need our data to be laid out in a
particular format. While most softwares use a standardised form,
LibreOffice and MS-Excel use a slightly simpler format. Let's
understand the standard format first.
</SESS>
<JINGLE t="0.1">Standard format</JINGLE>
<BC t="4.5" done="r" id="aovlay_422">
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
Placebo. There are three age groups, Young, Midle, Old. Two
genders Male and Female. So imagine that we approach each patient
with a blank form where the variable names are fields. We fill in
the blanks approapriately for each patient. Collating all the
filled in forms we get a data matrix like this. This is the data
layout required by most standard statistical softwares like R, SAS,
SPSS, Systat, Stata. 
</BC>
</SCRIPT>

<EXRLIST id="m4l2_c.yml">
- typeName: textReflect
  prompt: >
     We have collected data on the marks of 10 boys and 8 girls
  in mathematics, statistics and physics examinations. Our aim is
  to see the effect of gender and subject on marks. If the data
  are presented as a data matrix in the format discussed in the
  video above, then what will the size of the matrix be?
  defaultFeedback: >
      18 rows and 3 columns. One row per student. One column for
  gender, one for subject and one for marks.

</EXRLIST>
<SCRIPT id="m4/l2/v4" done="k" t="5:44">
<SESS t="0.60" done="r" kf="30" id="s1">
In the last video we learned about the data required by most
standard statistical software for ANOVA. However, LibreOffice expects a
different layout, which is somewhat more intuitive.
---
 First let me
admit that LibreOffice cannot handle ANOVA in its full
generality. It can handle only 1-factor and 2-factor ANOVA.
---
 The simple data layout that LibreOffice expects is possible only for
these simple cases. So let's simplify our example to retain only
the Drug input. Then we have a 1-factor ANOVA set up. <V>[box
diag shown]</V>
---
Here we have just a single input (except the random error
input), and a single output. Now LibreOffice expects the output
values for the different values of the input in different
columns. Let's see this in the lab.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="5" done="r" id="sc_oneway_424">
One-way LibreOffice layout.
oneway.ods
</SC>
</SCRIPT>

<EXRLIST id="m4l2_d.yml">
- typeName: textReflect
  prompt: >
     Consider this data set [[./exraux3/stan.xlsx]]. How would
  you arrange this for 1-factor ANOVA in LibreOffice? 
  defaultFeedback: >
      [[./exraux3/lib.png]]

</EXRLIST>
<SCRIPT id="m4/l2/v5" done="k" t="4:57">
<SESS t="1.80" done="r"  kf="30,60,90,120,150" id="s1">
In this video we shall learn about the <B>2-factor layout</B> of
data. Just as for 1-factor layout, there are two versions
possible here, a simple one used by LibreOffice and a general one
used by most standard softwares. 
---
Either way, we start from the box diagram<V>[shown]</V>, two inputs (plus the
random error input) and one output. Both the inputs are factors,
ie, categorical variables,...
---
 like in an agricultural study<V>[shown]</V> the
variety of crop and the fertiliser. Here the unit is a plot of
land, and the output the yield.
---
 If there are 3 varieties and 2
fertilisers, then we have a 3x2 rectangular layout<V>[shown]</V>. In each cell
we should better have at least 2 plots to get a good idea about
the variation caused by the random error input by itself.
---
 However, LibreOffice
deals with the simplest case, where there is just a single plot
per cell. This suits well with its spreadsheet nature.
---
 You just 
write the yields as in a rectangle with row headings as well as
column headings.
---
We shall soon see this in action in the lab. But before that let
me tell you the general layout that is accepted by other
softwares.
---
 Here each arrow (input/output, but not random error)
is a variable, and hence get a column of its own.<V>[shown]</V> Each case gets
its row. If there are multiple plots per cell, then we just have
as many rows for that input combination.
</SESS>
<JINGLE t="0.1">Lab</JINGLE>
<SC t="3" done="r" id="sc_twoway_425">
Two-way in Libre Office
[twoway.ods]
</SC>
</SCRIPT>

<EXRLIST id="m4l2_e.yml">
- typeName: textReflect
  prompt: >
     Consider this data set [[./exraux3/stan2.xlsx]] for a 2-factor ANOVA in the standard
  format. Convert this to LibreOffice format. 
  defaultFeedback: >
      [[./exraux3/lib2.png]]

</EXRLIST>

</LESSON>
<HEAD2>Module 4: Lesson 3: ANOVA table</HEAD2>
<LESSON>
<STKY><HEAD3>Module 4, Lesson 3, Video 1: ANOVA table</HEAD3></STKY>
<SCRIPT id="m4/l3/v1" done="k" t="1:29">
<SESS t="1.50" done="a" kf="10,20,30,40,50,60,70,80" id="s1">
We have aleady seen <B>ANOVA table</B>s. They sit at the heart of ANOVA
and is the traditional way to present the result of ANOVA. Let us
take an example. We are comparing <B>three varieties</B> of paddy and <B>two
fertilisers</B> in terms of the yield.
---
So we have 6 plots<V>[shown]</V>, these <V>[finger]</V> are under fertiliser 1,
these under 2. Similarly, these are under variety 1, these under
variety 2, these under 3.
---
To understand ANOVA tables it is important to visualise the set up
as a blackbox diagram<V>[shown]</V>.
---
 In the basic version of the ANOVA table there are as many rows as the
number of input arrows (including the random error).<V>[shown]</V>  Plus there
is one total row for the output arrow.<V>[shown]</V>
---
 The very first column is called the <B>Source</B> column and
describes each input arrow. The last 
non-total<V>[finger]</V> row is always reserved for the random
error.
---
The next column is for the variabilities called <B>sum of
squares</B>. To understand this we need 
to go back to our basic identity. And that's what we shall do in
the next video.
</SESS>
</SCRIPT>

<EXRLIST id="m4l3_a.yml">
- typeName: textReflect
  prompt: >
     What is the last row before the "total" row used for? 
  defaultFeedback: >
     For the random error input. 

</EXRLIST>
<SCRIPT id="m4/l3/v2" done="k" t="6:14">
<SESS t="0" done="r" id="s1">
Now we shall learn about the ANOVA table. Many text books present
it as a crowd of formulae, which often look pretty
scary. Actually the 1-way ANOVA table is just a fancy way of
expressing...the basic identity. 
</SESS>
<BC t="6" done="r" id="aovexpl_432">
Basic identity BSS, WSS. Their positions in ANOVA table. df. The
other columns. Explain F test.
</BC>
</SCRIPT>
<EXRLIST id="m4l3_b.yml">
- typeName: textReflect
  prompt: >
     What is the interpretation if the entry in the F column is singificantly large? 
  defaultFeedback: >
     The input  has significant effect on
  the output. 

</EXRLIST>
<STKY><HEAD3>Module 4, Lesson 3, Video 1: ANOVA table</HEAD3></STKY>
<SCRIPT id="m4/l3/v3" done="k" t="6:38">
<SC t="6" done="r" id="sc_onecomp_433">
Fake data, one way.
[oneway.ods]
</SC>
</SCRIPT>
<EXRLIST id="m4l3_c.yml">
- typeName: textReflect
  prompt: >
     Use LibreOffice to construct 1-factor ANOVA table for the
  data in [[./exraux3/stan.xlsx]]. 
  defaultFeedback: >
      [[./exraux3/aov1.png]]

</EXRLIST>
<SCRIPT id="m4/l3/v4" done="k" t="4:42">
<BC t="6" done="r" id="bc_model_434">
Start with 1-way set up, cast it as model. Explain a 2-way set
up. Mention additive. Refer to non-additive to come later.
</BC>
</SCRIPT>
<EXRLIST id="m4l3_d.yml">
- typeName: textReflect
  prompt: >
     Is the following model a 2-factor ANOVA model?
       y_ij = a + b_i + e_ij,
     where e_ij's come from a normal distribution with 0 mean.
  defaultFeedback: |-
      No, it is a 1-factor ANOVA model.

</EXRLIST>
<SCRIPT id="m4/l3/v5" done="k" t="6:30">
<BC t="6.3" done="r" id="aov2expl_435">
2-way ANOVA table. Brief explanation.
[aov2.png]
</BC>
</SCRIPT>

<EXRLIST id="m4l3_e.yml">
- typeName: textReflect
  prompt: |-
     Consider first and last columns of 2-factor ANOVA table:
      | Source     | ... | p-values |
      |------------+-----+----------|
      | Crop       | ... | 0.01     |
      | Fertiliser | ... | 0.13     |
      | Error      | ... | ---      |
      |------------+-----+----------|
      | Total      | ... | ---      |
     Which of the inputs has/have significant effect on the
  output at 5% level of significance?
  defaultFeedback: >
      Crop, but not fertiliser, because the p-value from crop is
  below 0.05, but not the other p-value.

</EXRLIST>
<SCRIPT id="m4/l3/v6" done="k" t="5:54">
<SC t="5" done="r" id="sc_twocomp_436">
2-way ANOVA with LibreOffice.
[twoway.ods]
</SC>
</SCRIPT>
<EXRLIST id="m4l3_f.yml">
- typeName: textReflect
  prompt: >
     Construct 2-factor ANOVA table with LibreOffice for the data
  set [[./exraux3/stan2.xlsx]]
  Which of the two inputs has/have significant effect on the 
  output at 5% level of significance? 
  defaultFeedback: >
  [[./exraux3/aov2tab.png]]    
  Neither input has significant input, because both the p-values
  are > 0.05.
</EXRLIST>
</LESSON>
<HEAD2>Module 4: Lesson 4: Interaction</HEAD2>
<LESSON>
<STKY><HEAD3>Module 4, Lesson 4, Video 1: Interaction (through story)</HEAD3></STKY>
<SCRIPT id="m4/l4/v1" done="k" t="5:11">
<SESS t="1.90" done="a" kf="10,22,33,44,55,66,77,88" id="s1">
We had started our discussion of ANOVA with a story, the story of
a room with a lamp and two switches. The actual circuitry that
connected the switches to the lamp, ie,  the inputs to the output,
was unknown,...
---
 a blackbox, and we had to try out various values for
the inputs and observe the output values for them in order to get
an idea of the inner working of the blackbox. 
---
Well, we are back to a similar room<V>[shown]</V>, again two switches and a
lamp. But this time everything is turned off. Our aim as before
is to figure out the input output relation.
---
 Let's start by
flicking this switch<V>[shown]</V>. Well, nothing happens. Looks like this is
not our switch. OK, let's return
it to its original state.<V>[shown]</V> Now we flick the other
one.<V>[shown]</V>
---
 Oops, this also seems to be ineffective. Or may be the lamp is fused? In
dismay we play with the first switch again, turn it on<V>[shown]</V>. Wow, the
lamp turns on. But didn't we turn this switch on just now also,
but did not get any effect?
---
 How come it has suddenly come back to life?
May be this switch is alive too now. Let's turn it off<V>[shown]</V>. Wow, this
also seems to control the lamp. Earlier neither seemed to have
any control, and now mysteriously both are controlling the
lamp.
---
 So I can control the lamp by the top switch <V>[flick],</V> 
oops it has gone to sleep once again. Let's try the
other one. <V>[flick]</V> Boy, this is dead again too! This room sure is
spooky. Or is it?
</SESS>
<JINGLE t="0.1">The mystery</JINGLE>
<SESS t="1.70" done="a" kf="10,40" id="s2">
<TODO>Chop initial faltering</TODO>
<V>[shown]</V>Well, there is nothing really spooky about the switches. They are
basically connected in series like this<V>[shown]</V>.
---
 So when any one of them is
off, the circuit is already broken, and  the other switch has no
control. But if one switch is turned on, then it fate of the lamp
is controlled by the other switch. 
---
Now we are not here to discuss electric circuits really. My point
here is that it is possible to have situations more complex than
what we had started with in our first example, where each switch
was either controlling the lamp or not.
---
 Each behaved independently of the other. So if we asked "Does
this switch control the lamp?" the answer was eiter a clear yes,
or a clear no. 
---
But here the effect of one switch
in influenced by the other switch. So if now ask "Does this
switch control the lamp?", then we do not have a simple yes
or no anwer to the question.
---
  The answer depends on the curent state of the other switch. If that switch is
off, then the answer is no, if that switch is on, then the answer
is yes. 
---
In such a situation where two inputs are kind of entangled
together, we say that there is interaction between the two
inputs.
---
Let's look at it in the context of statistics.
</SESS>
<JINGLE t="0.1">Interaction</JINGLE>
<SESS t="1.40" done="a" kf="10,20,30" id="s3">
In general think of our familiar blackbox diagram. We say
two inputs have <B>interaction</B> if the effect of one depends on the
the value of the other.
---
It does not always have to be just two inputs. It is quite possible for even three or
more inputs to be involved in an interaction. Their combined effect
is called the <B>interaction effect</B>.
---
Had there been no interaction,
then their individual effects are called <B>main effects</B>.
Remember: main effect makes sense only when interaction is absent.
---
In any ANOVA problem with at least two inputs (other than the
random error input), we should worry about their
interaction.
---
 Before we can meaningfully talk about the effect of
any single input, we need to ascertain that it is not involved in
an interaction with the some other input. It is possible to test
this using a statistical test of hypotheses. 
---
However, the math is a little involved. Also Libreoffice does not
allow us to compute the interaction. So we shall restrict
ourselves to a pictorial method of assessing presence or absence
of interaction. We shall see this in the next video.
</SESS>
</SCRIPT>
<EXRLIST id="m4l4_a.yml">
- typeName: textReflect
  prompt: >
    We want to assess the effect of online versus offline
  teaching on students of different fields. For this purpose 50
  literature students and 50 physics students are selected
  randomly. Then half of each group are taught using online
  techniques while the other half is taught offline. Their grades
  in a final exam are recorded as output. In this scenario would
  you suspect interaction between the subject input (literature/physics) and the
  method input (online/offile)?
  defaultFeedback: >
      Yes. For literature online and offline hardly makes much
  difference. But for physics it makes more difference (eg
  laboratory handling may make ofline teaching more efrctive
  while computer graphics techniques may make online teaching
  more attractive.)

</EXRLIST>
<STKY><HEAD3>Module 4, Lesson 4, Video 1: Interaction (through story)</HEAD3></STKY>
<SCRIPT id="m4/l4/v2" done="k" t="5:50">
<SESS t="0.70" done="r" kf="30,60" id="s1">
In the last video we saw an expository example of
interaction. Here we shall see how interaction occurs in real
life.
---
 In any example of interaction we must have at least two
inputs (excluding random error). Our first example will be where
the two inputs linked by interaction are both categorical. 
---
Consider an agricultural experiment where we are interested in
assessing the effect on yield of <B>two varieties</B> of a crop and <B>three
different fertilisers</B>. Here is the ... blackbox diagram.
</SESS>
<BC t="5" done="r" id="bc_inter_442">
Here is the ... blackbox diagram<V>[shown]</V>. Two inputs
variety and fertiliser (plus of course the inevtiable random
error). The output is yield.
---
 Typically such an experiment will
need as 2x3 layout like this. In each of the 6 cells we shall
take at least two plots.<V>[labelled grid shown]</V>
---
 Let's take exactly 2 plots in each. By the way,
this is called a <B>balanced layout</B>, since we take the same number
of plots in each cell. We shall index the plots
as <B><M>(i,j,k)</M></B>,...
---
 where <M>(i,j)</M> refers to the cell
ie, <M>i</M>-th variety and <M>j</M>-th fertiliser, and <M>k</M>
is serial number (which is either 1 or 2) within the cell. The yield
from the <M>(i,j,k)</M>-th plot will be called <B><M>y_{ijk}.</M> </B>
---
To appreciate interaction in this context let's compute the
average yield for each of the 6 cells:
<B><D>
\bar y_{ij\bullet} = [[y_{ij1}+y_{ij2}][2]].
</D></B>
---
Now consider averages in the first row, ie for variety 1. We
plot them<V>[shown]</V> as three three points, and join them with
lines.
---
 Since we are working with categorical variables in the
horizontal axis, joining them with lines is not entirely
justified, but still it is a common practice  to aid visual
interpretation.
---
  The shape that we get like this will be called
the<B> profile</B> for variety 1. Next we shall draw the profile for
variety 2, on the same plot<V>[shown]</V>.
---
 The profiles turn out to be more or less parallel. This allows
us to meaningfully ask questions about 
the varieties and fertilisers separately.
---
 For instance, which fertiliser produces the highest yield? Answer is fertiliser
2. Which variety yields less? Variety 1. 
---
Now consider another example. Now the yields from the plots are such that the two
profiles are not parallel.<V>[shown][anim]</V> Now the question "Which fertiliser
is the most productive?" does not have a clear answer.
---
 We need to know which variety we are talking about. Fertiliser 3 is the best
for variety 1 and fertiliser 3 for variety 2. 
---
Since the effect of variety now is influenced by the choice of
variety, we say that we have <B>interaction</B> between variety and fertiliser
here. In the earlier case there was no interaction.
---
 This chart is
called an <B>interaction chart</B>. It is a valuable graphical device in
ANOVA whenever there are multiple categorical inputs.

In the next video we shall see how to make such charts in LibreOffice.
</BC>
</SCRIPT>
<EXRLIST id="m4l4_b.yml">
- typeName: textReflect
  prompt: >
     If there are three profiles and two are parallel, while
  third is not parallel to them, then does that indicate presence
  of interaction? 
  defaultFeedback: >
      Yes. For a situation to be free of interaction all the
  profiles must be more or less parallel.

</EXRLIST>
<STKY><HEAD3>Module 4, Lesson 4, Video 1: Interaction (through story)</HEAD3></STKY>
<SCRIPT id="m4/l4/v3" done="k" t="5:46">
<SC t="5" done="r" id="sc_inter_443">
Interaction chart.
[inter.ods: fert -> row, var -> col]
</SC>
</SCRIPT>
<EXRLIST id="m4l4_c.yml">
- typeName: textReflect
  prompt: >
     Consider the data in [[./exraux3/stan2.xlsx]]. Make an
  interaction chart. Does it show interaction? 
  defaultFeedback: >
    [[./exraux3/interplot.png]]
    Not much interaction really. Indeed the two profiles are
  basically the same with minor random ups and downs.

</EXRLIST>
<STKY><HEAD3>Module 4, Lesson 4, Video 1: Interaction (through story)</HEAD3></STKY>
<SCRIPT id="m4/l4/v4" done="k" t="2:35">
<SESS t="2.40" done="a" kf="10,20,30,60" id="s1">
We have seen examples of interaction between two categorical
inputs, or factors, as they are called.
---
 In this video we shall see how a factor input may be
locked in interaction with a continuous input, ie a
covariate.<V>[fac-cov-inter shown]</V> 
---
We shall consider a toy data set where we have three variables height,
weight and gender of some adult persons. We take 20 people,
10 male and 10 female, and record their heights and weights.
---
Our aim is to see if
height has influence on weight, and if the height weight relation
is the same for both genders. 
---
Let's make a scatterplot using colour coding for gender.<V>[shown]</V>
Here blue is for male, and red for female. Notice that all the 20
points follow the same linear pattern. 
---
 We are deliberately using a toy data set here, so that we can
demonstrate another possibility. What you see now is the first
possibility, where the effect of height on weight is not
influenced by the person's gender.
---
 If I ask the question:
<B>"how many extra kilos for an extra inch?"</B> the answer is the slope
of the linear pattern. The same value works for either
gender. This is the "no interaction" case.
---
Now suppose that the female points are rotated
slightly.<V>[shown]</V> Now the male cluster and the female cluster
each has a linear pattern, but the slopes are different.
---
 So in order to answer the same question, we now need to know the
gender in question, so that we know which linear pattern we
should take the slope of. 
---
Here we have interaction, interaction
between the categorical input gender and the continuous input height.
---
As we know main effect ceases to be meaningful in presence of
interaction. It is of course possible to average out the two
slopes and report that as the effect of height on weight
irrespectivel of gender. But that is actually meaningless. 
---
The next video will quickly remind us how to create a colour
coded scatterplot like the one used here.
</SESS>
</SCRIPT>
<EXRLIST id="m4l4_d.yml">
- typeName: textReflect
  prompt: >
     If in the scatterplot shown in the video the male points and
  female points lay along two distinct but parallel lines, should
  we consider that as an interaction between gender and height? 
  defaultFeedback: >
      No. The effect of height is only through the slope.

</EXRLIST>
<STKY><HEAD3>Module 4, Lesson 4, Video 1: Interaction (through story)</HEAD3></STKY>
<SCRIPT id="m4/l4/v5" done="k" t="4:49">
<SC t="5" done="r" id="sc_col_445">
Color coded scatterplot.
hw2.ods
</SC>
</SCRIPT>
</LESSON>

<EXRLIST id="m4_add.yml">
- typeName: peerReview
  prompt: >
    Consider this data set [[./exraux3/contam.csv]]where water contamination levels are
  given at 5 points in different localities. Create a 1-factor
  ANOVA table to test if contamination levels in the all the
  localities are more or less the same. Use 5% level of
  significance.

  Rubric:
    1) Make proper data layout for LibreOffice 
       (negligible should be converted to 0)
          [[./exraux3/rublayout.png]] (0.5 point)
    2) Get the table:
          [[./exraux3/rubaov.png]] (1 point)
    3) Conclude that since p-value 0.66 > 0.05, we accept at 5%
    level of significance the
       null hypothesis that the contamination levels in the all
    the localities are more or less the same.
- typeName: peerReview
  prompt: > 
    Here is an interaction chart: [[./exraux3/inter.png]]
    Does it indicate presence of interaction? Justify your answer.

  Rubric:
    1) No, there is no interaction (1 point)
    2) Justification: the profiles are parallel (1 point)

- typeName: multipleChoice
  prompt: >
      A doctor wants to test the efficacy of a blood pressure
  drug that may be applied in two different doses other than the
  placebo. He tests it on a random sample of 10 males and 9
  females. Then what will be degrees of freedom for 
  gender in a 2-factor ANOVA table without interaction?
  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: 1
    isCorrect: true
    feedback: >
      
  - answer: 2
    feedback: >
      
  - answer: 9
    feedback: >
      
  - answer: 18
    feedback: >
      
- typeName: checkBox
  prompt: >
      Consider a 2-factor ANOVA model with interaction, where the
  two inputs are drug (drug 1, drug 2 and placebo) and age group
  (yong, middle aged, old). Which of
  the following questions is/are meaningless in presence of
  significant interaction?
  defaultFeedback: >
      
  shuffleOptions: true
  options:
  - answer: Which drug is the best?
    isCorrect: true
    feedback: >
      
  - answer: >
      Is there any significant effect of the age
      groups on the output?
    isCorrect: true
    feedback: >
      
  - answer: >
      Which drug is the best for the old people?
    feedback: >
      
  - answer: >
      Do the drugs differ significantly from each other for the
      young people?
    feedback: >
      
- typeName: multipleChoice
  prompt: >
      We have an agriculture experiment with the following
  inputs: crop variety (3 values), fertilisers (2 values) and
  irrigation type (2 values). We also have a continuous input:
  area of the plot. Then which type of anlysis will be needed?
  defaultFeedback: >
      
  shuffleOptions: true
  options: 3-factor ANCOVA model
  - answer:
    isCorrect: true
    feedback: >
      
  - answer: 3-factor ANOVA model
    feedback: >
      
  - answer: 2-factor ANOVA model
    feedback: >
      
  - answer: regression model.
    feedback: >
      

</EXRLIST>
<HEAD2>Module 4: Lesson 5: Review</HEAD2>
<LESSON>
<STKY><HEAD3>Module 4, Lesson 5 , Video 1: Review</HEAD3></STKY>
<STKY><HEAD3>Module 4, Lesson 5 , Video 2: Review</HEAD3></STKY>
</LESSON>

<HEAD1>Module 5: Regression</HEAD1>
<SCRIPT id="m5/intro" done="n">
<SESS t="0" done="n"  id="s1">
</SESS>
</SCRIPT>
<HEAD2>Module 5: Lesson 1: Regression concept</HEAD2>
<LESSON>
<STKY><HEAD3>Module 5, Lesson 1, Video 1: The concept</HEAD3></STKY>
<SCRIPT id="m5/l1/v1" done="r">
<SESS t="2.30" done="a" kf="30,60,90,120,180,210,240,270,300" id="s1">
We had mentioned scatterplots in the Basic Statistics course. They
are an important visual tool to assess the relation between two
continuous variables.
---
 For instance, consider a toy data set
for which the scatterplot looks like this<V>[shown]</V>. Here you can
see a linear pattern. I said a linear pattern, not a
line,...
---
 because not all the points are lying exactly on a line. But
still we can feel the presence of a line. Our aim is to capture
that line mathematically. Let's first try by eye estimation. 
---
Let's consider<V>[shown]</V> this line. Is this a good fit? Since not
all the points are exactly on a 
line, whatever line we draw is bound to miss some points.
---
 But this line completely ignores the shape of the point cloud. We need something
right through this cloud, like this<V>[shown]</V>. This is much better. Now
what about this<V>[shown]</V>?
---
 Well, this looks fine too. If I ask you to choose
one of these two good fits, which one would you choose? Hard to
say by visual inspection alone.
---
 So you see the two problems that
lie in the way of mathematically capturing the best line:

* First, how to do mathematically what the eye does easily:<V>[finger]</V>
avoiding such lines that are wide off the mark.
---
* Second, how to do what the eye cannot do: choosing objectively the
best among such good contenders.
---
Before we go into further details, let me tell you that the
problem is not specific to linear patterns alone. Consider this
scatterplot that shows a curved pattern like a
parabola<V>[shown]</V>.
---
 Surely this parabola is a bad fit<V>[shown]</V>, as is
this one<V>[shown]</V>. We 
would like to have a good fit like this<V>[shown]</V>. 
---
And somehow we also want
an objective satisfaction of having chosen the best fit.

This is the problem of <B>regression</B>. It has two aspects:
---
* Choosing the right form (like a straight line or parabola or
something else)

* and then picking the best line or curve of that form.*
</SESS>
<JINGLE t="0.1">Parametric and nonparametric</JINGLE>
<SESS t="1.10" done="a" kf="30,60,90,120,150,180,210,240,270" id="s2">
Most of the time we choose the form either by <B>visual inspection</B>
or by <B>domain knowledge</B>, eg, we know that <B>projectiles</B> near the
ground move along parabolic paths....
---
 Or <B>Boyle's law</B> from physics
dictates the use of rectangular hyperbola for the relation
between pressure and volume of a gas under fixed temperature.
---
Any such mathematical form is
characterised by some <B>parameters</B> eg, a straight line by the
form <V>[move]</V><B><M>y = a + bx,</M></B> where <M>a</M> and
 <M>b</M> are the parameters.
---
 A parabola has the form <B><M>y = a + bx + cx^2,</M></B>
where <M>a,b,c</M> are the parameters. 
---
Choosing some form is the first step.

Once we have finished choosing the form the next step is to
estimate the values of the parameters. 
---
Regression that proceeds in these two steps is called <B>parametric
regression</B>.
---
If, however, we want to automate even the first step, ie, want to
have some automatic way of choosing the form, then we need what
is called <B>nonparametric
regression</B>. This course will only discuss parametric regression.*
</SESS>
<FLD> R code for above session
<R>
p(5,1,1,1)
set.seed(3535)
x = runif(30,-1,1)
y1 = x + rnorm(30)/5
y2 = x*x + rnorm(30)/5

f = function(i,p) {
   y = (1-p)*y1 + p*y2
   bareplot(x,y,pch=20,cex=3)
   abline(h=0,v=0,lwd=3) 
}
process('lin2non',f,30,ps=0,pe=1,bg=rgb(1,1,1,0.8))
</R>
</FLD>
</SCRIPT>

<EXRLIST id="M5L1V1">

<EXR>Show plot. Classify as increasing/decreasing/nonlinear.</EXR>

<EXR>Strong relation, weak relation.</EXR>
</EXRLIST>

<STKY><HEAD3>Module 5, Lesson 1, Video 2: Mathematical formulation</HEAD3></STKY>
<SCRIPT id="m5/l1/v2" done="r">
<SESS t="0.20" done="a" id="s1">
In this video and the next video we shall introduce the mathematical model
behind linear regression. It is best understood through an example.*
</SESS>
<SC t="5" done="n" id="s1">
[Use shiny]
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
</SC>

</SCRIPT>


<SCRIPT id="m5/l1/v3" done="n">
<SC t="6" done="n" id="s1">
Computing with LibreOffice for the same data set.
</SC>
</SCRIPT>

<SCRIPT id="m5/l1/v4" done="n">
<SC t="4" done="n" id="s1">
Fit polynomial using linest.
</SC>
</SCRIPT>

<SCRIPT id="m5/l1/v5" done="r">
<SESS t="0.70" done="a" kf="30,60,90" id="s1">
What I described in the last few videos, fitting a line or curve
to a bunch of points, is more like looking at data.
---
 But as I have
been saying again and again, statistics is all about looking through
data at the underlying truth.
---
 So let's be clear about the underlying truth here. It will help to
visualise the set up as  measuring 
the length of a spring<V>[shown]</V> from which we are hanging different
weights.
---
 The weight we hang is <B><M>x</M></B> and the measured length
is <B><M>y.</M></B> Every time we choose... a weight to hang,
ie we choose
a value for <M>x,</M> nature decides about the length in two
steps.*
</SESS> 
<BC t="4" done="r" id="regmod_515">
ie we choose
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
</BC>
</SCRIPT>

<EXRLIST id="M5L1V2">

<EXR>Show plots of errors as lines (vertical, horizontal,
perp). Ask to identify least squares.</EXR>
</EXRLIST>
</LESSON>
<HEAD2>Module 5: Lesson 2: Least squares</HEAD2>
<LESSON>
<STKY><HEAD3>Module 5, Lesson 2, Video 1: Least squares</HEAD3></STKY>
<SCRIPT id="m5/l2/v1" done="r">
<SESS t="0.50" done="a" kf="30" id="s1">
Here we shall describe the most popular technique for
regression. We shall explain the idea with fitting a straight
line, but the idea is equally valid for other types of lines, like
parabolas. 
---
We have already considered the fitting of a
line <B><M>y = a + bx</M></B> by imagining that we have sliders
for <M>a</M> and <M>b.</M>*
</SESS>
<SC t="4" done="n" id="s1">
Show the vertical error lines. Mention about squaring.
</SC>
<JINGLE t="0.1">Mathematically</JINGLE>
<SESS t="1.60" done="a" kf="30,60,90,120,150,180" id="s2">
For any given values of <M>a</M> and <M>b</M> we have the total
squared error 
<B><D>
S(a,b) = \sum (y_i - (a+b x_i))^2.
</D></B>
---
We want to minimise this w.r.t. <M>a</M> and <M>b.</M> A little
mathematics shows that the minimum occurs when <M>b</M> is
<B><D>
\hat b = \frac{\sum (x_i-\overline x)(y_i-\overline y)}{\sum (x_i-\overline x)^2}
</D></B>
and <M>a</M> is...
---
<B><D>
\hat a = \overline y - b \overline x.
</D></B>
---
This <M>\hat b </M> is called the <B>estimated regression
coefficient.</B> and <M>\hat a</M> is called
the <B>estimated intercept.</B>
---
An estimator for <M>\sigma^2 </M>
is <V>[move]</V>
<B><M>\hat\sigma^2 = \frac{1}{n-2}\sum(y_i-\hat \alpha - \hat \beta x_i)^2.</M> </B>
---
Here we recognise the sum as total squared error for the best
line. Why <M>n-2</M> is the denominator? Well, it is hard to
explain without getting into math.
---
 A quick explanaion is that we
have <M>n</M> cases, and based on them we have estimated two
coefficients, a and b. Hence n-2.*
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 5, Lesson 2, Video 1: Least squares</HEAD3></STKY>
<SCRIPT id="m5/l2/v2" done="r">
<SESS t="0.30" done="a" id="s1">
We have learned one way to estimate intercept
and slope in a regression set up. The estimators have some interesting properties
that we want to discuss here.
*
</SESS>

<BC t="5" done="r" id="regsamp_522">
 First,
 the regression coefficient
is of the form <M>[[\cov(x,y)][\var(x)]].</M> And second the
estimated line always passes through the centre of the data cloud <M>(\bar x, bar y).</M>

As we have already mentioned in an earlier lesson, statisticians
always worry about the sampling distributions of the
estimators, in particular their bias and standard error. It may
be shown that both the estimators are unbiased.  Also their
standard errors are given by ... [Show that if x's are close
together then variance increases]

Don't be scared by the formulae. When you compute them for a
given data set, they are just two numbers. If the numbers are
large, then that is a cause for worry, because large standard
errors mean inaccurate estimators. 
</BC>
</SCRIPT>

<SCRIPT id="m5/l2/v3" done="n">
<BC t="6" done="r" id="regcomp_523">
Hand computation of regression line.
<R>
set.seed(135319)
(x = 1:5)
y = as.numeric(format(2+x+rnorm(5),dig=2))
cbind(x,y)
(sx = sum(x)); (sy = sum(y))
(sx2 = sum(x*x)); (sy2 = sum(y*y))
(sxy = sum(x*y))
(mnx = mean(x)); (mny = mean(y))
(vx = var(x)); (vy = var(y)); (cxy = cov(x,y))
(b = lm(y~x)$coef)
as.numeric(format(lm(y~x)$fit))
</R>
</BC>
</SCRIPT>

<SCRIPT id="m5/l2/v4" done="r">
<SESS t="0.30" done="a" id="s1">
Notice that there is some assymmetry in the set up that we have
been working with so far: predicting y
based on x.
---
 It could be the other way round: predicting x based
on y. We shall discuss
that now.*
</SESS>
<JINGLE t="0.1">x on y</JINGLE>
<BC t="5" done="r" id="bc_xony_524">
[x-on-y, y-on-x, beta*beta = r^2, sign]
</BC>
</SCRIPT>

<SCRIPT id="m5/l2/v5" done="r">
<SESS t="0.5" done="a" id="s1">
In the last video we switched the roles of x and y. But still
that did not achieve symmetry. It just went to the other extreme
of the assymmetry. There is however one version of regression that
is truely symmetric. It is called orthogonal regression. *
</SESS>
<JINGLE t="0.1">Orthogonal regression</JINGLE>
<BC t="5" done="r" id="bc_ortho_525">
Orthogonal regression.
</BC>
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

<SCRIPT id="m5/l3/v1">
<SESS t="0" done="n" id="s1">
Intro to real life regression data.
</SESS>
<SC t="5" done="n" id="s1">
First demo 
</SC>
</SCRIPT>

<SCRIPT id="m5/l3/v2">
<SESS t="5" done="n" id="s1">
Demo 2
</SESS>
</SCRIPT>

<SCRIPT id="m5/l3/v3">
<SESS t="5" done="n" id="s1">
Demo 3
</SESS>
</SCRIPT>

<SCRIPT id="m5/l3/v4">
<BC t="5" done="r" id="bc_nonpara_534">
Nonparametric
</BC>
</SCRIPT>

<SCRIPT id="m5/l3/v5">
<SC t="0.10" done="n" id="s1">
Demo 5: nonparametric.
</SC>
</SCRIPT>


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
<SCRIPT id="m5/l4/v1" done="n">
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
</SCRIPT>

<STKY><HEAD3>Module 5, Lesson 4, Video 2: Regression diagonsotics</HEAD3></STKY>
<SCRIPT id="m5/l4/v2" done="r">
<BC t="6" done="r" id="bc_regdiag_542">
<TODO>Try to chop the part where I suggest plotting resid vs y</TODO>
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
</BC>
</SCRIPT>

<STKY><HEAD3>Module 5, Lesson 4, Video 3: Residuals (lab) </HEAD3></STKY>
<SCRIPT id="m5/l4/v3" done="n">
<SC t="6" done="n" id="s1">
Computing residuals. Plotting them. y=1/x model.
</SC>
</SCRIPT>

<STKY><HEAD3>Module 5, Lesson 4, Video 4: Outiers, leverage (theory) </HEAD3></STKY>
<SCRIPT id="m5/l4/v4" done="r">
<SESS t="1.70" done="a" kf="30,60,90,120,150,180,210,240" id="s1">
We have talked about <B>outliers</B> in our Basic Statistics course
already. Roughly speaking these are points that lie far away from
the main bulk of the data.
---
 For instance<V>[shown]</V> these two points in this
scatterplot are outliers<V>[finger]</V>, while these points are
not.
---
 There are
two main types of outliers. Those with <B>leverage</B> and those without
leverage. In this and the next video we shall learn about the
concept of leverage.
---
Before going further let me repeat once again: outliers, whether
with or without leverage, must be studied 
carefully. They are born out of unexpected reasons, which may be
just a typo, or a glimpse of an unknown behaviour.
---
 Whether an outlier has leverage or not is determined by how much effect it
has to turn the fitted model towards itself. Consider this
scatterplot<V>[shown]</V>. The least squares line is this<V>[finger]</V>. 
---
Now consider an
outlier<V>[shown]</V> here<V>[finger]</V>. Here the least squares
line<V>[finger]</V> moves only slightly 
away due to the presence of the outlier.
---
 We say that this outlier
has <B>low leverage</B>. Such outliers are less harmful. 
---
Next consider an outlier here<V>[shown]</V>. Here the least squares line swings
a lot towards that point. Somehow this point exercises so much
pull on the line that this single point can force the line to
move away from bulk of the points.
---
 We say that this point has <B>high leverage</B>. 
Clearly such outliers are more dangerous. It is
important to remove them if we want to fit a line showing the
true pattern of the points.*
</SESS>
<FLD> R code for this session
<R>
p(5,4,4,1)
set.seed(23346)
x = rnorm(20)
y = x + rnorm(20)/5
outx1 = 0 
outy1 = 2
outx2 = 3
outy2 = 5
xlim = range(x,outx1,outx2)
ylim = range(y,outy1,outy2)
trans = rgb(1,1,1,0.5)
png('scat%d.png',bg=trans)
bareplot(x,y,xlim=xlim,ylim=ylim,cex=2,pch=20)
abline(h=0,v=0,lwd=2)
points(outx1,outy1,col='red',cex=2,pch=20)
points(outx2,outy2,col='blue',cex=2,pch=20)

bareplot(x,y,xlim=xlim,ylim=ylim,cex=2,pch=20)
abline(h=0,v=0,lwd=2)
coef = lm(y~x)$coef
abline(coef,lwd=3)

x1 = c(x,outx1); y1 = c(y,outy1)
x2 = c(x,outx2); y2 = c(y,outy2)

coef1 = lm(y1~x1)$coef
coef2 = lm(y2~x2)$coef

bareplot(x,y,xlim=xlim,ylim=ylim,cex=2,pch=20)
abline(h=0,v=0,lwd=2)
points(outx1,outy1,col='red',cex=2,pch=20)

abline(coef,lwd=3)
abline(coef1,lwd=3,col='red')

bareplot(x,y,xlim=xlim,ylim=ylim,cex=2,pch=20)
abline(h=0,v=0,lwd=2)
points(outx2,outy2,col='blue',cex=2,pch=20)

abline(coef,lwd=3)
abline(coef2,lwd=3,col='blue')

dev.off()
</R>
</FLD>
<JINGLE t="0.1">Why leverage</JINGLE>
<SESS t="1.60" done="a" kf="30,60" id="s2">
As may be guessed from the two examples<V>[shown]</V>, leverage of a point
depends on how far it is from the centre of the data along
the <M>x</M>-direction.
---
 This point<V>[finger]</V>, though away from the bulk of
the points, is close to the centre along
the <M>x</M>-direction. However, this point is far away from the
bulk of the points along the <M>x</M>-direction.
---
In fact, leverage is a property of the all the points, whether an
outlier or not. Every point has some leverage. Points near the
extreme along the <M>x</M>-direction have greater leverage.
---
 In general, points with high leverage are not bad. In fact, if you
have a point<V>[shown]</V> here, it is good for the least
squares fit, because 
it strengthens our faith in the linear pattern...
---
 when we see that even this
far away point still follows the same pattern. However, outliers
with high leverages must be removed before we accept the fitted
line. 
---
As outliers with high leverage tend to swing the fitted lines
towards themselves, these points may not always have high residuals. So
a residual plot need not show these points clearly.
---
 They are like
corrupt persons in power, who bend the law so much in their
favour that legal machineries fail to detect them. 
---
There are, however, quite a few sophisticated techniques to catch them, I mean the
outliers, not the corrupt persons. 
We shall not go into these techniques. For our course simple visual
inspection of the scatterplot is enough.*
</SESS>
<FLD> R code for this session
<R>
p(5,4,4,2)
set.seed(233465)
x = rnorm(20)
y = x + rnorm(20)/5
outx1 = 0 
outy1 = 2
outx2 = 3
outy2 = 5
outx3 = 3
outy3 = 3

xlim = range(x,outx1,outx2,outx3)
ylim = range(y,outy1,outy2,outy3)
trans = rgb(1,1,1,0.5)
png('scat%d.png',bg=trans)
bareplot(x,y,xlim=xlim,ylim=ylim,cex=2,pch=20)
abline(h=0,v=0,lwd=2)
points(outx1,outy1,col='red',cex=2,pch=20)
points(outx2,outy2,col='blue',cex=2,pch=20)

bareplot(x,y,xlim=xlim,ylim=ylim,cex=2,pch=20)
abline(h=0,v=0,lwd=2)
points(outx3,outy3,col='purple',cex=2,pch=20)
dev.off()
</R>
</FLD>
</SCRIPT>

<STKY><HEAD3>Module 5, Lesson 4, Video 5: Outiers, leverage (lab) </HEAD3></STKY>
<SCRIPT id="m5/l4/v5" done="n">
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
<SCRIPT id="m6/intro" done="n">
<SESS t="0" done="n"  id="s1">
</SESS>
</SCRIPT>
<HEAD2>Module 6: Lesson 1: Time series concept</HEAD2>
<LESSON>
<STKY><HEAD3>Module 6, Lesson 1, Video 1: Concept: What it is</HEAD3></STKY>

<SCRIPT id="m6/l1/v1" done="r">
<SESS t="1.60" done="a" id="s1">
To be able to predict the future has always been the dream of
man. From science to science fiction, from astronomy to
astrology,...
---
 from stock market to politics, from mythology to
meteorology we see ample evidence of man's fascinaion with 
predicting the future.
---
 Ancient mythology of every culture is rife with people endowed with the  super human
power of seeing the future. Weather forecast is part of our every
day life.
---
 Politicians analyse popularity trend and try to predict
the outcome of polls, share holders try to predict market trends.
---
Except in pure fiction, all attempts to predict the future,
whether successful or not, depend on the same basic technique:
---
analysing past data, and looking for patterns in how the values have been
evolving over time, and hoping that the same pattern will persist
in the future as well. 
---
And that is what time series analysis is all about, mostly. A time series 
consists of values of one or more  variables
over time.
---
 The aim is to understand its temporal behaviour, how the
quantity evolves over time.  In such a data
set time is always one of the variables, and there is at least
another variable whose values are evolving with time.
---
A time series is  different from the other types of
data we have handled so far. Let's understand this difference carefully.*
</SESS>
<JINGLE t="0.1">How a times series differs from other types of data</JINGLE>
<SESS t="1.60" done="a" kf="30,60" id="s2">
So far in this course, we have been working with the mental
picture of some underlying distribution from which the data are
being generated.  
---
 The idea is something like a coin toss, where the same coin is
being tossed again and again. So the more tosses you have the
more information you have about the same coin.
---
However, the situation is different for a time
series<V>[shown]</V>. Here the underlying distribution may itself evolve with
time. Thus, a value in a time series need not come from
the same distribution as the preceding one.
---
 This makes time series
analysis much more challenging than the type of data analysis we
have encountered so far.
---
 It is as if I have
many coins laid out in a row. I toss each coin once, and try to
infer about the probabilities of head for all the coins.
---
 This is an impossible task to achieve, because the coins are different, and
I have just a single toss for each coin.
---
 As a result all time series analysis methods start by 
assuming that  the underlying process does not evolve too
much, ie, these distributions are somehow connected through a
small number of unknown parameters.
---
These assumptions are called <B>time series models</B>.
We shall see some of these in this module.*
</SESS>
</SCRIPT>

<SCRIPT id="m6/l1/v2" done="r">
<SESS t="3.00" done="a" id="s1">
Whatever we do takes time. And data collection is no
exception. In that sense should we not call most data sets  time
series data, unless all the cases where recorded in parallel?
---
 For instance, if I am interviewing  100 households regarding some
demographic survey I am doing so sequentally over time. First
this household, then the next, then the one after that, and so
on. Should I call this a time series data?
---
 Not really, because I do not expect
the underlying situation to have evolved much  during that
period.
---
 On the other hand if we are measuring the amount of
suspended particulate matter in the air at some crossing in a
city for a year,...
---
 then it is definitely a time series, because the
amount of dust in the air is likely to behave differently
over the weekdays and weekends.
---
 The main aim behind any statistical analysis is to account for
the variation in the observed
values.
---
 If you suspect that time possibly accounts for a
significant portion of the variation, then and only then you
designate that data as a time series.*
</SESS>
<JINGLE t="0.1">Time: continuous, regular, irregular</JINGLE>
<SESS t="0" done="a" id="s2">
Time inherently is continuous. However, when we measure something
over time, we generally do so at discrete time points. Certain
electronic measuring devices like the ECG,...
---
 may do this fast enough to create
the illusion of continuous monitoring, but even they are actually
making measurements at discrete time points.
---
Most time series analysis methods expect these time points to be regularly
spaced in time. This temporal resolution is often mentioned in the
title of the data set, like daily rainfall, or monthly sales or
annual production.*
</SESS>
<JINGLE t="0.1">Time point or interval?</JINGLE>
<SESS t="0" done="a" kf="30,60,90,120" id="s3">
If we consider time as flowing along a  line<V>[shown]</V>, the time points
are like regularly spaced points along that line<V>[shown]</V>. For each point
we have a measured value<B>?<V>[shown]</V></B>. 
---
However, a value in a time series is often not really 
associated with the time point, but rather with a time
interval<V>[shown]</V>.
---
 Like total daily rainfall is not the rainfall at a
single instant, it is the total over an entire day, a time
interval. 
---
Usually
each value asociated with a time interval is some kind of a
summary value of multiple actual measurements made during the
interval.
---
 For example it could be the total sales for a month, or
average pollution level over a day. Indeed, associating a value
with an interval rather than a single time point allows the data
collectors to avoid a serious problem, the problem of missing
data.
---
 Since we cannot go back in time, so if we failed to collect
data in time, then there is no way we can get it back later. By
the time we come back, the process has possibly evolved into
something new.
---
 But when we report a single average value for a week, we
can still make up for the missing value by making other
measurements during the same week. *
</SESS>
<TODO>Chop two silences</TODO>
</SCRIPT>
<EXRLIST id="M6L1V1">

<EXR>Describe different data scenarios. Ask to identify time
series.</EXR>
</EXRLIST>


<STKY><HEAD3>Module 6, Lesson 1, Video 2: Concept: Prediction</HEAD3></STKY>
<SCRIPT id="m6/l1/v3" done="r">
<SESS t="4.30" done="a" id="s1">
Why do we care about time series data? 
The primary aim of time series analysis is, as I have already
mentioned, prediction.
---
 Trying to extrapolate patterns from the
past to guess what is going to happen in future. I shall mention
here three surprisingly different  situations where
time series are analysed with the chief goal of predicting the
future.*
</SESS>
<JINGLE t="0.1">Predicting the stock market</JINGLE>
<SESS t="0.60" done="a" id="s2">
* There is nothing surprising in the  first example. It is
something  we already know about: predicting the
stock market.
---
 ``To be forewarned is to be fore armed'' is the motto
in economics. That is why we try to predict GDP, cost of houses,
or agricultural yield.
---
* A drastically different application of prediction is active
noise cancellation that is used to cancel noise by an
artificially generated anti-noise!*
</SESS>
<JINGLE t="0.1">Active noise cancellation</JINGLE>
<SESS t="1.80" done="a" kf="30,60,90,120,150,180" id="s3">
Imagine a <B>noisy</B> environment. The sound that it produces is a basically
a time series<V>[shown]</V> of the vibration of the air molecules. Now the
vibration is caused by applying force on the molecules<V>[shown]</V>.
---
 So if we
can apply just the opposite force on the air molecules at the
right time<V>[shown]</V>, then the sound can be cancelled.
---
 Such a counterbalancing force may be applied by
generating another noise<V>[shown]</V>, which is a mirror image of the
noise time series.
---
This mirror image is  called an <B>antinoise</B> But for this trick
to work, the antinoise needs to mimick the
original noise very closely in order to be able to cancel it.
---
 So the game is like this. A sensor picks up the noise,
which is mathematically inverted, and the resulting  anti-noise
is emitted.
---
 All this takes a fraction of a second, but
even within that fraction the force applied by the original sound
has changed (it is a vibration after all, so forces are changing
to and fro all the time).
---
 So the anti-noise we are producing
now should actually mimick the actual noise to be produced a
fraction of a second in the future.
---
 So that's where prediction
comes into play. Predicting just a fraction of a second ahead,
but still that's a prediction nonetheless. 
---
Any error in that prediction will mean the antinoise will not
cancel the true noise, and may actually add to that noise.
---
* Another <V>[clear]</V>quite different type of prediction is needed in
tracking an air craft.
---
 Indeed, this application has given time
series analysis a frequntly used tool called Kalman
Filtering.*
</SESS>
<JINGLE t="0.1">Kalman filtering</JINGLE>
<SESS t="2.00" done="a" kf="30,60,90,120,150,180,210"  id="s4">
 The situation is like this<V>[shown]</V>. We are tracking a flying
aircraft. Our camera has scoured the entire sky and has finally 
located<V>[shown]</V> the aircraft as a tiny dot in the vast sky.
---
The camera is now locked on to its target and is
steadily tracking it always keeping the crosshair on the
aircraft.<V>[shown]</V>
---
 After a while the aircraft enters a cloudy region<V>[shown]</V>, and the camera
loses its target. Of course, the air craft is sure to
emerge out of the cloud and the camera should wait for that.
---
 But where exactly should it point in order to pick up its lost
target? Starting to look for it all over the sky again is quite time consuming, and
the air craft may very well pass out of sight during the time the
camera is searching the sky.
---
 A little time series analysis helps
here. During the time the camera was locked onto the air craft,
we knew how its position was changing over time, a time
series.<V>[shown]</V>
---
 So we have an idea of its speed, acceleration, turning etc
just the moment before it disappeared. Well, it won't be very
unreasonable to assume that the aircraft would continue the motion
more or less in the same way even after being hidden by the
cloud.
---
 So we can predict<V>[shown]</V> where the aircraft will be at a given
time point in the future. Remember we are not talking of a distant
future here, may be just a few seconds or at most a minute
ahead.
---
 So we continue to move the camera according the predicted
path, also keeping an eye on the sky in its vicinity. This
markedly improves the chance of picking up the lost aircraft
again after it emerges. 
---
It might interest you to know that this rather common sense
approach has given birth to a powerful time series analysis
method called <B>Kalman filtering</B>.
---
So we learned about three types of
prediction. The next video will take up some different applications
of time series.*
</SESS>
</SCRIPT>

<STKY><HEAD3>Module 6, Lesson 1, Video 2: Concept: Diverse applications</HEAD3></STKY>
<SCRIPT id="m6/l1/v4" done="r">
<SESS t="0.50" done="a" id="s1">
Prediction is definitely the most important aim behind analysing
a time series. However, that is not always the only 
aim.
---
 Sometimes time series data are analysed for the
purpose of understanding the process generating the time
series.
---
 We shall mention three examples chosen from as diverse
fields as possible to provide an idea about the gamut of
applications.*
</SESS>
<JINGLE t="0.1">Understanding market volatility</JINGLE>
<SESS t="1.20" done="a" kf="30,60,90" id="s2">
Let's do a thought experiment. Imagine that you are driving
down an uneven road. Naturally 
everything inside a car is shaking.
---
 An accelerometer
embedded in the car is keeping track of the bumpiness of the ride
and produces this  time series<V>[shown]</V>.
---
 You can see  ups
and downs in it. They are more or less regular except here, where
they seem much more rapid. Clearly, the car was shaking a lot
here, possibly over a particularly rough patch in the road.
---
 Now imagine the same plot, but not in the context of a car ride. This
time consider this as a plot of the market price<V>[shown]</V> of some
stock. Then this rough portion denotes a period of greater
volatility.
---
 These periods are of great importance to market
analysts. They often try to explain the volatility of the market
in terms of what happened before it. Quite a few time series
models like <B>ARCH</B> have resulted from this approach.
---
Now let's look at another application.
*
</SESS>
<FLD> R code for above session
<R>
p(6,1,4,2)
png('arch.png',bg=rgb(1,1,1,0.7))
set.seed(3534)
x = 10+c(rnorm(100),rnorm(50,sd=3),rnorm(100))

bareplot(x,ty='l',ylim=range(0,x),lwd=3,col='blue')
abline(h=0,v=1,lwd=3)
dev.off()
</R>
</FLD>
<JINGLE t="0.1">Signal processing</JINGLE>
<SESS t="0.90" done="a" kf="30,60" id="s3">
 I am sure you use a mobile phone. You may not be aware that
rather sophisticated time series analysis is needed to keep it
running.
---
 Indeed, so important is this application area, that it
has a special name <B>Signal processing</B>,...
---
 which is often considered a
subject of its own, extending well beyond staistical time series
analysis. Some of the most important tools used in statistical
time series analysis come from this application area.
---
 Roughly speaking, it tries to look for waves or <B>periodic
behaviour</B>s in a time 
series corresponding to  different wavelengths.
---
 Information is encoded in terms of those waves. The same idea is
used even to detect cycles in the economic markets.*
</SESS>
<JINGLE t="0.1">Exoplanets</JINGLE>
<SESS t="1.20" done="a" kf="30,60,140,180,240" id="s4">
One recent example of time series analysis is the search for
exoplanets,  <B>planets around
stars other than the sun</B>.
---
This is not directly related to this course, but still I mention it because
it is such a unique application.
---
 NASA tries to find places in the universe where life may be
supported. Naturally, the focus of attention is on earth-like
planets around far away stars. 
---
 Now the stars themselves appear to be tiny dots, so a tiny
planet like the earth circling around it is just not visible to even
the most powerful telescope.
---
 Quite surprisingly, time series analysis helps to detect such
planets in many cases. When the planet passes in front of the
star, the apparent brightness of the star diminishes a little.
---
 Astronomers<V>[blank plot]</V> observe the brighnesses of the stars as a times
series<V>[up to dip]</V>. It is more or less a constant. Then when
the planet passes in front of it, there is a slight dip in the
brightness level<V>[dip]</V>.
---
 When the planet moves away, the brightness is restored <V>[after
dip]</V>. So scientists try to detect if there is any temporary dip
in the time  series.
---
 If so, they can estimate the size of the planet as well as its orbiting
period by the lengths and positions of the dips.
</SESS>
<FLD> R code for the above session
<R>
p(6,1,4,4)
set.seed(89997)
x = 15+c(rep(1,50), seq(1,0,-0.2), rep(0,20), seq(0,1,0.2), rep(1,50))
x = x + rnorm(length(x))/10
trans = rgb(1,1,1,0.7)
f = function(i,p) {
  bareplot(x[1:p],ty='l',xlim=c(1,length(x)),ylim=c(0,20),lwd=3,col='blue')
  abline(h=0,v=1,lwd=3)
}
process('exop',f,90,1,1,120,bg=trans)
</R>
</FLD>
</SCRIPT>

<EXRLIST id="M6L1V2">
</EXRLIST>
</LESSON>

<HEAD2>Module 6: Lesson 2: Plotting and real life examples</HEAD2>
<LESSON>
<SCRIPT id="m6/l2/v1" done="r">
<SESS t="0.70" done="a" kf="30" id="s1">
In this lesson we are about to see real life examples of time
series. These data sets are all freely available, and are
retrieved from the internet.  
---
What is the first thing we do when have a time series data set?
The answer is: we plot it. That should always be the very first
step. The best type of plot for a time series is a <B>line chart</B>.
---
 A simple line chart can
disclose many important facts about a time series. And that's
what we are about to see now. 
*
</SESS>
<SC t="5" done="n">
First demo.
</SC>
</SCRIPT>

<SCRIPT id="m6/l2/v2">
<SC t="6" done="n" id="s1">
Second demo 
</SC>
</SCRIPT>

<SCRIPT id="m6/l2/v3">
<SC t="6" done="n" id="s1">
Third demo 
</SC>
</SCRIPT>

<SCRIPT id="m6/l2/v4">
<SC t="6" done="n" id="s1">
Fourth demo 
</SC>
</SCRIPT>

<SCRIPT id="m6/l2/v5">
<SC t="6" done="n" id="s1">
Fifth demo 
</SC>
</SCRIPT>

<STKY><HEAD3>Module 6, Lesson 2, Video 1: Plotting</HEAD3></STKY>

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

<SCRIPT id="m6/l3/v1" done="r">
<SESS t="2.20" done="a" kf="30,60,90,120,150,180,210,240" id="s1">
We had earlier talked about looking through data as opposed to
looking at data. We look through data at the underlying
process. 
---
 Writing down a clear
statement about what we assume known/unknown about this
underlying process is called the <B>statistical model</B>. 
---
So far in our course, this process has been a just a distribution, which we
visualised as the shape of a histogram. This sufficed because
the variables that we were working with varied only with chance.
--- 
Like a coin toss, the same coin was tossed in each case. So we
could model it using the probability statement
<B>P(head) = p.</B>
---
This p was unknown, a parameter to be estimated. The same p
worked for all the tosses. 
---
But in a time series set up, the unknown truth may evolve with
time. So any time series model 
must start by clearly postulating the role of time. The simplest
way of achieving this is to take a mixture of a function of time and randomness.
---
We shall take a look at a few of them now. They will all take the
common form 
<B><D>y_t = f(t) + \epsilon_t,</D></B>
where <M>f(t)</M> is the <B>non-random temporal evolution part</B>,
and <M>\epsilon_t</M> is the <B>random error</B> part.
---
This form, where the temporal part and the random part are nicely
separate and combined by addition, is called an <B>additive
model</B>.
---
 Certain models, called <B>multiplicative models</B>,  combine them
using multiplication:
<B><D>y_t = f(t) \times \epsilon_t.</D></B>
---
Usually, a multiplicative model is used where all the values are
positive. Taking logarithm of the multiplicative model gives us an additive
model. So we shall focus our attention more on additive models
than multiplicative ones.
---
In the next video we shall see some common examples of additive models.*
</SESS>
</SCRIPT>

<SCRIPT id="m6/l3/v2" done="r">
<SESS t="1.40" done="a" kf="30,60,90,120,150,180,210" id="s1">
There are many different time series models proposed in the
literature ranging from simple to extremely complex. Near the
simpler end of the spectrum...
---
 we have the ones that keep the
temporal and the random parts separate, as we discussed in the
last video, either in the additive way:
<B><D>y_t = f(t) + \epsilon_t,</D></B>
---
or in the multiplicative way:
<B><D>y_t = f(t) \times \epsilon_t.</D></B>
---
A multiplicative model may be reduced to an additive model by taking
logarithms. So let's focus on additive models only<V>[shown]</V>.
---
Any such  model needs us to specify some form of <M>f(t)</M> and
some assumption on the random behaviour of
the <M>\epsilon_t</M>'s. 
---
Let's start with the <M>\epsilon_t</M>'s. We typically assume that
they have <B>zero mean</B>, and some unknown <B>constant
variance <M>\sigma^2,</M></B> ie, variance free 
of <M>t,</M> and are <B>uncorrelated</B> over time.
---
 This last assumption prevents <M>\epsilon_t</M>'s from
introducing temporal artifacts.  These assumptions 
are so very common that we have name for <M>\epsilon_t</M>'s
satisfying these: <B>white noise. </B>
---
Next let's choose various forms for <M>f(t).</M>*
</SESS>
<JINGLE t="0.1">Mathematical forms</JINGLE>
<SESS t="1.60" done="a" kf="30,60,90,120,179,239" id="s2">
The simplest possible <M>f(t)</M> is just a constant<V>[shown]</V>, but then
there is no time in it at all.
---
 So it hardly deserves to be called
a time series model. Instead, let's make it just a little bit
non-trivial: a linear function in time:
<B><D>f(t) = \alpha + \beta t.</D></B>
---
The parameters <M>\alpha</M> and <M>\beta </M> are fixed and
unknown, and are good candidates to be estimated, along with the
variance <M>\sigma^2 </M> of the random errors.
---
How does a typical plot look like for this model? It looks like
this<V>[shown]</V>. A straight line with some random
fluctuations.
---
 It is basically a linear regression set up, and we can easily
estimate <M>\alpha </M>, <M>\beta </M> and <M>\sigma^2</M> from
data using the least squares technique.
---
Let's step back from the math for a moment, and focus on the
plot. There are ups and down in the values, but on the whole it
is increasing.
---
 This overall behaviour, beyond local ups and
downs, is called the <B>trend</B>. Here the trend is linear, but it could
also be quadratic<V>[shown]</V>, like this, or
exponential<V>[shown]</V>, or something else.
---
 But as long as there is a mathemaical curve behind the trend, the least squares
technique is always applicable.
*
</SESS>
<FLD> R code for the above session
<R>
p(6,3,2,2)
set.seed(34614)
tm = 1:30
y1 = scale(tm)+rnorm(length(tm),sd=2)
y2 = 10*scale(tm*tm)+rnorm(length(tm))
y3 = 10*scale(exp(tm/5))+rnorm(length(tm))
rng = range(0,y1,y2,y3)
y1 = y1 - rng[1]
y2 = y2 - rng[1]
y3 = y3 - rng[1]
f = function(i,p) {
  if(i<30) {
    alpha = i/30
    y = (1-alpha)*y1 + alpha*y2
  }
  else {
    alpha = i/30-1
    y = (1-alpha)*y2 + alpha*y3
  }
  bareplot(tm,y,ylim=rng,ty='l',lwd=3)
  abline(h=0,v=1,lwd=3)
  if(i==1) 
    title(main="Linear") 
  else if(i==30)
    title(main="Quadratic") 
  else if(i==60) 
    title(main="Exponential") 

}
trans = rgb(1,1,1,0.7)
process('tstrans',f,60,2,bg='transparent')
</R>
</FLD>
</SCRIPT>

<SCRIPT id="m6/l3/v3" done="n">
<SC t="6" done="n" id="s1">
Least squares curve fit lab.
</SC>
</SCRIPT>


<SCRIPT id="m6/l3/v4" done="r">
<SESS t="3.80" done="a" kf="30,60,90,120" id="s1">
In the last video we learned about a class of time series models
where the time component and chance components were added
together, and we had a precise mathematical formula for the
temporal part. 
---
  Such models, while not always applicable, are the
easiest to interpret. However, there are a couple of drawbacks to
them.  
---
First, since we assume a precise mathematical
form for it, like linear or quadratic as we did in the last
video, the resulting model becomes too inflexible to use in
most real life scenarios over a long duration.
---
Second, there are only two extreme types of variations
allowed. The overall long term behaviour, the trend, and the very
short term random fluctuations due the <M>\epsilon_t</M>'s. 
---
In practice there may be variations in between these extremes. 
Here, for example, <V>[shown]</V> is a time series of monthly
sales. How would you describe it in words? It has an overall 
slowly rising trend, and  there are lots of ups and downs.
---
 On a closer look we notice that even the ups and downs are of
two types. There seems to be a wave that repeats every 12
months, i.e., an annual cycle.
 Other than  that the remaining ups and downs appear to
be just random. 
---
Our mathematical curve model did not allow for the annual
cycles. Coming up with an exact math formula for them is not
easy. Instead statisticians use a different technique.
---
They propose the following model:
<B><D>
y_t = T_t + S_t + \epsilon_t.
</D></B>
---
Here <M>T</M>'s are the trend component, the <M>S</M>'s are the
seasonal component, and <M>\epsilon_t</M>'s are the random errors
as before.
---
 Along with this we also impose a periodic behaviour on
the seasonal component: <B><M>S_{t+12} = S_t.</M></B> For
example, if <M>t</M> is a January, then <M>t+12</M> is the next
January.
---
 Thus <M>S_t</M> being equal <M>S_{t+12}</M> means the
seasonal effect is due just to the month, not the year. Just to make sure
that the trend deals with just the mean behaviour,...
---
 we force the
seasonal component to have zero mean: <B><M>S_1+\cdots+S_{12}=
0.</M></B>
---
Also we do not postulate any mathematical form for <M>T_t</M> or
the <M>S_t</M> terms.
---
In absence of any mathematical form, the big question now is: How
to estimate them from the data? That's something we shall explore
in some later videos.
---
But before that let's understand the general form of the new
model carefully. We have a trend term, a seasonal term with known
period and a random error.
---
 The perioed of the cyclical
compomnt is usually obtained from domain knowledge, eg, for
monthly data we expect an annual variation, for daily data a
weekly variation and so on.
---
 Sometimes people superpose two
seasonal terms with two different periods. Like for a monthly
sales data, the shorter cycle is annual and the longer one has a
period of a few years and captures regular market ups and down.
---
 However, the more terms one puts in a model, the more difficult it gets to
interpret the fitted model.*
</SESS>
<FLD> R code for the above session
<R>
p(6,3,4,1)
set.seed(46346)
trans = rgb(1,1,1,0.5)
png('perplot.png',bg=trans)
seas = c(0,1,2,3,-5,-6,0,3,5,10,5,1)
trnd = 5*sin((1:120)/120)
rnd = rnorm(100,sd=1)
ytmp = trnd + seas/2 + rnd
y = ytmp - min(ytmp) + 3
bareplot(y,ty='l',ylim=range(y,0),lwd=3)
abline(v=1,lwd=3)
abline(v=seq(12,120,12),lwd=3,lty=2,col='grey')
axis(1,seq(0,120,12),2000:2010,lwd=3)
dev.off()
</R>
</FLD>
</SCRIPT>

<SCRIPT id="m6/l3/v5" done="n">
<SC t="6" done="n" id="s1">
Here we shall play god and create and plot step by step.
Create a daily time series from scratch. The trend values along a
line and some day-of-the-week values adding up to 0. Finally
errors as rand()-1. Recover and compare.
</SC>
</SCRIPT>

<SCRIPT id="m6/l3/v6" done="r">
<SESS t="0.50" done="a" id="s1">
In the last video we saw how we may make a time series from the
various components. Now that was just for the purpose of
illustration.
---
 In practice we need to be able to do the reverse
operation: given the time series we need to somehow isolate the different
components. Let's understand this with an  example.
</SESS>
<BC t="5" done="n" id="bc_trndseas_636">
Here is a time series plot. The first step to analyse it is
to make a plot. The plot will give a visual check that our model
is a reasonable one and also give us a rough idea about the
period of cycle given. In many cases, however, the period is more easily
obtained from the data domain, e.g. a weekly cycle for a daily
data, or annual cycle for monthly data. 

Here we have a daily data with weekly cycles. Let's focus on the
very first cycle present in the data. Remember that the trend
captures only long term variation and the random error captutes
the very short term variations. The cyclical variation is
midway. So we may reasonally assume that the trend values do not
change appreciably over the a week, while the random errors
change a lot. So if you average these values, then the trend
value, being nearly a constant,  comes out. The random errors,
having mean 0, are cancelled to a great extent. The cyclical terms
cancel out perfectly, as we have assumed that they have mean zero
over any single period. So the average value basically gives us
the trend value. However, the trend value is really not a
constant, so it's more reasonable to say that the average gives
the trend value at the centre. Now we move the window one place
to the right, and repeat the exercise to get the next trend
values. This idea of moving the window and taking the average, is
called the moving average. Once we get the trend value like this
we subtract the trends from the series to get something which is
made of only the cyclical and random error parts.  To extract the
cyclical terms we perform averaging in a different way. We take
all the terms with <M>C_1.</M> Averging them should roughly
cancel out the random errors, and yield an estimate
of <M>C_1.</M> Similarly for the other <M>C_t</M>'s. 

Finally what remains are the random errors. Computing their
variance gives us an estimate of <M>\sigma^2.</M> 

Of course, there are little points hee and there that I have
glossed over. Like how to get the trend values at the two ends,
or what to do if the cycles have an even period. 

We shall see these in the lab in the next video.

Then we perform a moving
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

The next video will show this in action.*
</BC>
</SCRIPT>

<SCRIPT id="m6/l3/v7" done="n">
<SC t="6" done="n" id="s1">
Moving average lab.
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

<HEAD2>Module 6: Lesson 4: Prediction techniques</HEAD2>
<LESSON>

<SCRIPT id="m6/l4/v1" done="r">
<SESS t="0.70" done="a" id="s1">
So far we have given some idea about times series, what they are,
why they are important, and also given a very simple introduction
to modelling them in terms of trend and seasonal components. 
---
As we have already mentioned prediction, is the most important aim
of time series analysis. In this lesson we shall learn a few
prediction techniques.
---
 The techniques will depend on the type of
model we are assuming behind the time series. We shall start with
the curve fitting model.*
</SESS>
<JINGLE t="0.1">Curve fitting model</JINGLE>
<SESS t="1.20" done="a" kf="30,60,90,120,150,180" id="s2">
The curve fitting models are of the form 
<B><D>y_t = f(t) + \epsilon_t,</D></B>
where <M>f(t)</M> is some non-random function of time, 
involving some unknown parameters.
---
 We have already discussed how we may estimate these parameters
using the least squares approach. After this is done we have an
estimator <B><M>\hat f (t)</M></B> of <M>f(t).</M>
---
 Now suppose we want to predict for a new
time point <B><M>t_{new}.</M></B> Then we use <B><M>\hat f(t_{new})</M></B> as
our prediction.
---
 We may even provide an error bar for our
prediction in terms of <B><M>\hat\sigma^2,</M></B> the estimated variance of
the <M>\epsilon_t</M>'s.
---
 Something like 
<B><D>\hat f(t_{new}) \pm a \hat \sigma^2,</D></B>
where <M>a</M> is some constant depending on the distribution of
the errors.
</SESS>
<BC t="4" done="n" id="bc_predint_641">
 For example, if the random errors are assumed to
have <B><M>N(0,\sigma^2)</M></B> distribution, then we know that 
<B><M>\frac{\epsilon_t}{\sigma}\sim N(0,1).</M></B> And so
<B><M>P(\left|\frac{\epsilon_t}{\sigma}\right| < 1.96) = 0.95.</M></B>
So an approximately 95% prediction interval would be
<B><D>
\hat f(t_{new}) \pm 1.96 \hat \sigma^2.
</D></B>
The next video will demonstrate this in the lab.*
</BC>
</SCRIPT>

<SCRIPT id="m6/l4/v2" done="n">
<SC t="6" done="n" id="s1">
Curve fitting prediction (point and interval).
</SC>
</SCRIPT>

<SCRIPT id="m6/l4/v3" done="r">
<SESS t="1.10" done="a" kf="30" id="s1">
In the last video we learned about prediction based on  curve fitting models.
While this is conceptually simple, it suffers seriously from its
depndendence on the form of the curve.
---
 Often we may have
different contending curves that fit the data equally well, but
yet produce widely differing predictions. 
---
The next natural approach to prediction may appear to be one
based on the trend plus seasonal variation model:
<B><D>
y_t = T_t + S_t + \epsilon_t.
</D></B>
---
Unfortunately, this model is not particularly useful for
 prediction because here we do not assume any relaton
 between <M>T_t</M> and <M>t</M> that we may
 extrapolate.
---
 However, we may try to plot the trend and just
 graphically extrapolate it to some extent, and add the seasonal
 variation on top of it to get an informal prediction.
---
 But this approach is not very popular. 
We shall instead discuss a more popular approach called
 exponential smoothing.*
</SESS>
<JINGLE t="0.1">Exponential smoothing</JINGLE>
<SESS t="0.30" done="a" id="s2">
This method should be used only for a time series without any
seasonal variation or any sytematic trend component. We shall
later discuss a variant that will be free of these restrictions.
</SESS>
<BC t="6" done="n" id="bc_expo_643">
We start with a time
series:
<D>
x_1,x_2,...
</D>
that is streaming in. As more an more data come in, we shall keep on
predicting the next value. When we get just the first
value <M>x_1</M> our prediction for <M>x_2</M> is simply <M>\hat
x_2 = x_1.</M> Nothing very exciting. Now when we get the
actual <M>x_2</M> value we quickly compute the error in our
prediction: <M>e_2 = x_2-\hat x_2,</M> and we use this while
predctng the next value:
<D>
\hat x_3 = \hat x_2 + \alpha e_2.
</D>
Here <M>\alpha </M> is called a tuning parameter that controls
how much importance we want to give to the last error. We
continue like this in each step. In general, we have
<D>
\hat x_{n+1} = \hat x_{n} + \alpha e_{n}.
</D>
The choice of <M>\alpha</M> is not very critical. It is chosen as
something between 0 and 1. Values less than 0.3 are more commonly
used. Values closer to 0 give more importance to the past data,
while values closer to 1 give more importance to the recent data.  
There is no single correct method to choose <M>\alpha.</M> Some
statisticians suggest tryin out diffeent values and then picking
the one that gives the least error.

We shall see this in action in the lab in the next video.*
</BC>
</SCRIPT>

<SCRIPT id="m6/l4/v4" done="n">
<SC t="6" done="n" id="s1">
Lab showing exponential smoothing, and comparing different alpha values.
</SC>
</SCRIPT>

<SCRIPT id="m6/l4/v5" done="r">
<SESS t="0.70" done="a" kf="30,60" id="s1">
We have mentioned that exponential smoothing is not suitable for
a time series with systematic trend and seasonal component in
it.
---
 There is a popular variant of exponential smoothing, however,
that takes care of these. It is called <B>Holt-Winters
prediction</B>.
---
 It assumes a locally linear trend of the
form <M>a+bt</M> plus a seasonal component<V>[shown]</V>, and...
---
 uses three
exponential smoothings in parallel. One for <M>a</M> one
for <M>b</M> and the third on for the seasonal component. 
</SESS>
<BC t="5" done="n" id="bc_holt_645">
<MULTILINE>
\hat y_{t+1} & = & a_t + b_t  + s_{t+1-p}\\
a_t & = & \alpha (y_t-s_{t-p}) + (1-\alpha)(a_{t-1}+b_{t-1})\\
b_t & = & \beta(a_t-a_{t-1})+(1-\beta) b_{t-1}\\
s_t & = & \gamma (y_t-a_t) + (1-\gamma) s_{t-p}
</MULTILINE>
Let's digest this slowly. First imagine that we are trying to
predict each point from the past by fitting a straight
line <M>a+bt.</M> At <M>t=0</M> the line passes through the
current point. Putting <M>t=1</M> we should get the next
point. Hence <M>\hat y_{t+1} = a_t + b_t.</M> How to
choose <M>a_t?</M> One guess is <M>y_t</M> itself. Another comes
from <M>a_{t-1}+b_{t-1}.</M> So we take an average. What
about <M>b_t?</M> One guess is <M>a_t-a_{t-1}</M> the other is
just the last value <M>b_{t-1}.</M> Again we take an average. *
</BC>
</SCRIPT>

<SCRIPT id="m6/l4/v6" done="n">
<SC t="0" done="n" id="s1">
Holt Winter's lab.
</SC>
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
 d1: ("<V>[shown]" "</V>")
 d2: ("<B>" "</B>")
End:
</COMMENT>
</NOTE>@}




