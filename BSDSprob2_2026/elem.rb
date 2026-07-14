@{<NOTE><TITLE>Motivation behind probability</TITLE>
<M>\newcommand{\calF}{\mathcal{F}}</M>
<HEAD1>What is probability all about?</HEAD1>
If you toss a coin, you can't be sure whether it will show head or tail. But how can that be true? After all, the coin is
governed by the laws of physics. So if you know its initial
position, the force of the toss, friction of the air, 
etc etc,
then you <I>should</I> know exactly what is going to
happen! That's what physics tells you. But the truth is that
in reality we do <I>not</I> have all those pieces of
information. <FNOTE>A magician-turned-mathematician named <LINK to="headswithJ.pdf">Persi Diaconis</LINK> has so much control on
his fingers, that he can toss a coin and make it come up whichever way he
likes!  Even a mechanical coin
tossing machine has been designed that can toss a coin in a controlled manner resulting in any desired
outcome!</FNOTE> So we say that the outcome of the coin toss
is <TERM>random</TERM>. The adjective random actually is not a property
of the outcome, it is about <I>our</I> ignorance behind
the procedure generating it.
<P/>
Probability theory is the branch of science dealing with
randomness. Just as biology is the branch of science dealing with
living forms, and chemistry is the branch dealing with materials
things are made of. 

But there is a great conceptual difference between probability theory and traditional
branches of science like biology and chemistry. The
aims of those branches are clear even to a layman. But what
exactly do we mean when we say "probability theory is the study of randomness"? The
answer is not at all obvious! 

Let's play a game of Ludo to arrive at the answer.
<HEAD2>A mathematical Ludo</HEAD2>
A typical components of a Ludo game look like this:
<CIMG web="ludo1.png">A board, a die, a counter, and some rules</CIMG>

The Ludo we are going to play also has the same components, but is more sophisticated.
The board will be the entire 
<M>\rr^2,</M> and the counter will be a single point, which is
initially at <M>(X,Y)=(0,0).</M> 

The die will be 4-faced, carrying the numbers 1 to 4. 

Accordingly, there are 4 rules of motion. The outcome of the die roll will determine which rule will apply at each step. 
The rules are:
<OL>
<LI>
<MULTILINE>X_{new} & = & 0.8 X_{old}+0.1\\
Y_{new} & = & 0.8 Y_{old}+0.04</MULTILINE>
</LI>
<LI>
<MULTILINE>X_{new} & = & 0.5 X_{old}+0.25\\
Y_{new} & = & 0.5 Y_{old}+0.4</MULTILINE>
</LI>
<LI>
<MULTILINE>X_{new} & = & 0.355 X_{old}-0.355Y_{old}+0.266\\
Y_{new} & = & 0.355 X_{old}+0.355 Y_{old}+0.078</MULTILINE>
</LI>
<LI>
<MULTILINE>X_{new} & = & 0.355 X_{old}+0.355Y_{old}+0.378\\
Y_{new} & = & -0.355 X_{old}+0.355 Y_{old}+0.434</MULTILINE>
</LI>
</OL>
These are all formulae to compute the new position, <M>(X_{new},Y_{new})</M> from the old position 
<M>(X_{old},Y_{old})</M>  of the counter. 

The game proceeds like this: 
The counter starts at <M>(X,Y)=(0,0).</M>
At each step the 4-faced die is rolled and the corresponding rule is applied to find the new position of the counter. 
The new counter position is marked with a dot after each step.

Thus, after you have played this game for, say, 10000 times, you
have as many dots on the paper. What will all these dots together look like? A
random jumble? A circle? A line? or what?

Make a guess and then check it by <LINK  to="https://acbsds.shinyapps.io/ludo/">actually playing this game</LINK>.

You'll be surprised by the outcome. Somehow all the randomness
has vanished, and a very regular pattern has emerged!
<P/>
How? Will this always happen? What if I change those formulae? 
<P/>
These are the questions that probability theory wants to answer.
<P/>
This "regular pattern born out of randomness" phenomenon 
is called <TERM>Statistical Regularity</TERM>.

<HEAD2>Statistical regularity</HEAD2>
The patterns born out of statistical regularity are different from deterministic patterns in
the sense that they are rarely exactly replicated. They is extremely
similar, but not the same. We see this all around us. Our finger
prints or the leaves on a tree furnish real life examples. Statistical
regularity is like a mysterious black box which takes random
unpredictable input and somehow digests the randomness to produce
regular output. 
<CIMG web="srbox.png">Statistical regularity as a blackbox</CIMG>
Why do we care about statistical regularity? Firstly, because it is intriguing. Secondly, if we can
 master this technique, then it
should help us to build robust systems that do not suffer much from randomness of inputs.
The quite regular profit of a Casino or an insurance
company is a familiar example.

<HEAD2>Simplest example of statistical regularity</HEAD2>
Statistical regularity takes many forms, some
more dramatic, some less.  The simplest occurrence of the
phenomenon was observed long back by gamblers: If you toss a coin a large number of times, the
 running proportion of heads gradually stabilises. It was first
 proved mathematically by Jakob 
Bernoulli in 1713. We shall learn it in this course. He discovered the theorem and its rather short proof
"after having meditated on it for twenty years"!

<LINK to="https://acbsds.shinyapps.io/coin/">Try it out with a computer/phone.</LINK>
<HEAD1>Computer simulation (not in syllabus)</HEAD1>
Behind every occurence of statistical regularity we have a random experiment, which we need to
 repeat a large number of times independently.
Unfortunately, even a simple random experiment like a coin
toss is difficult to be repeated many times by hand. So one prefers to
use a computer to carry out a random experiment. Most computer languages and softwares have
 provision to program a random experiment. We shall use a software
called R, which is particularly suited for this
purpose. Also, it is free and easy to install. You can even run
it on the cloud from your smart phone without installing
anything!

<UL><LI>To draw a <TERM>Simple Random Sample Without Replacement (SRSWOR)</TERM>  of size 5 from the
population <M>\{1,2,...,10\}</M>  you use 
<RC>
sample(10,5)
</RC>
</LI>
<LI>To draw <TERM>Simple Random Sample With Replacement (SRSWR)</TERM>  of size <M>10</M>  from the population 
 <M>\{1,2,...,6\}</M>  use
<RC>
sample(6,1,replace=TRUE)
</RC>
or, in short, 
<RC>
sample(6,1,rep=T)
</RC>
Before you use the short form, just make sure you do not have a variable called <CODE>T</CODE>  somewhere already. SRSWR may be
 used to toss coins (population of size 2) or roll dice (population of size 6). You may toss a biased coin with <M>P(head)=0.4</M> 
 independently 10 times by
<RC>
sample(2,10,rep=T,prob=c(0.4,0.6))
</RC>
Here the populaton is <M>\{1,2\},</M>  and we interpret <M>1</M>  as head. If you want make the population {head,tail},
 then use
<RC>
sample(c('Head','Tail'),10,rep=T,prob=c(0.4,0.6))
</RC>
</LI>
<LI>To generate data from some standard distribution, R provides a function starting with <CODE>r</CODE>
  followed by an abbreviated name of the distribution. For instance to generate a random sample of
 size 1000 from <M>N(0,2^2)</M>  distribution we use 
<RC>rnorm(1000,mean=0,sd=2)</RC>
Other <CODE>r</CODE>-functions include <CODE>rbinom</CODE>, <CODE>rpois</CODE>, <CODE>rexpo</CODE>, <CODE>runif</CODE>  <CODE>rcauchy</CODE>  etc. 
</LI>
</UL>
<HEAD2>Simulating statistical regularity</HEAD2>
Let write some R code to see statistical regularity at work. We shall simulate the coin toss example done in class:
Tossing a coin a large number of times, and plotting the cumulative proportion of
heads. 
 If the first 5 outcomes are H, T, T, H, H, then the cumulative
proportions are <M>1,[[12]],[[13]],[[24]],[[35]].</M> It is
always (no. of H's so far)/(no. of tosses so far). We shall plot
these five proportions against (no. of tosses so far). The R
command is
<RC>
outcomes = sample(c('H','T'),1000,rep=T)
heads.so.far = cumsum(outcomes == 'H')
tosses.so.far = 1:1000
prop = heads.so.far/tosses.so.far
plot(prop, type='l')
</RC>
Explanation of the code:
<UL>
<LI>Here <CODE>outcomes == "H"</CODE> checks which outcomes
are "H" and creates an array of 1 (yes) and 0 (no). </LI>
<LI><CODE>cumsum</CODE> finds cumultative sums. 
</LI>
<LI><CODE>1:1000</CODE> is just the array 1,2,...,1000. </LI>
<LI><CODE>plot</CODE> makes a plot. The <CODE>type="l"</CODE>
tells it to make a line plot.</LI> 
</UL>
Notice how the line (which is random) jumps around a lot
initially, but eventually stabilises and seems to approach a
fixed value. Run the same code a number of times to see how the
initial part changes drastically from run to run, but the final
stable section remains unperturbed. 


<HEAD2>Problem set</HEAD2>
The following problems will help you to enjoy the course
better. However, no coding problem will be asked in the exams.
<OL>
<LI>Simulate a Europian Roullette wheel. It is wheel with the
numbers 0,1,...,38 written along the circumference. The wheel is
spun and a ball is dropped on it. When the wheel stops spinning, the
ball is at one of the numbers randomly.
 </LI>
<LI>Roll a fair die 5000 times. Make a line plot showing the
running proportions of 6.</LI>
<LI>Suggest how you can shuffle a deck of 52 cards using R. </LI>
<LI>A slot machine consists of three reels (rings showing the
numbers 0,1,...,9). When it is activated by pulling a handle the
reels start turning randomly in different/same directions and
stop at random positions. One digit of each reel is visible
through a window. Simulate this in R.</LI>
</OL>
<HEAD1>Visualising density</HEAD1>
The first topic in Probability II is transformation of multivariate densities. For this, it would help to be able to visualise
 both univariate and multivariate densities. This is closely relate to statistical regularity. 
We shall explore this
 visually in the 1D and 2D
cases. 
<HEAD2>1D case</HEAD2>
A random variable is a real valued function defined on a probability
 space <M>(\Omega, \calF, P). </M>  You can think of the probability space as a mathematical
 description of a random experiment. 
Thus, any random variable has a random experiment
behind it. 
Every time we carry out the random experiment, we get a
 random <M>\omega\in\Omega</M> as our output, based on which compute one value <M>X(\omega)</M>  of our random variable.

 If we carry out that random
 experiment independently a
large number of times, we shall get many values of that random
variable. If we make a histogram of all those values, then the shape of that histogram 
approaches a particular graph. This limiting graph is called the <TERM>density</TERM> of the random variable.
We show two examples.
<CIMG web="histdot1.png">An example with a single peak (unimodal)</CIMG>
<CIMG web="histdot2.png">An example with two peaks (bimodal)</CIMG>
The generated points themselves are shown below the histogram. Notice how they crowd together where the density peaks up.
This is the reason why a density is a called
"density". 
  
<HEAD2>2D case</HEAD2>
A 2D random variable (also called a 2D <TERM>random vector</TERM>) is just
an ordered pair, <M>(X,Y)</M>, of two 1D random variables, <M>X</M>  and <M>Y</M>. The two
random variables are jointly distributed, i.e., they are both
defined on the same probability space, <M>(\Omega, \calF, P).</M>  Recall that the probability
 space is just  a random experiment.  When
we run that experiment,
we get some outcome <M>\omega\in \Omega.</M>  Based on that same <M>\omega</M>  we compute
<M>X(\omega)</M>  and <M>Y(\omega).</M>  So each time you
run the experiment, you get a point, <M>(X(\omega),Y(\omega))</M>, that you can plot on a graph
paper. When we run the experiment a large number of times
independently, you get a spray of points. As before, the density
of the spray may be different at different parts of
the <M>xy</M>-plane. This varying level of concentration is
captured by the (joint) density of <M>(X,Y).</M> 

<EXM>
<RAWTABLE><TR><TH>A bivariate density</TH><TH>Scatterplot from it</TH></TR><TR><TH>
<MV  src="image/gaumix.glb" a="A bivariate density"></MV></TH><TH>
<CIMG web="gaumixscat.png"></CIMG></TH></TR></RAWTABLE>
Observe how the random points crowd more densely near the peaks.
</EXM>
<HEAD2>Problem set</HEAD2>

<EXR>I have a random sample of size 1000 from the <M>Unif(0,1)</M>  distribution. If I square all
 the numbers in my sample then which of the following is most likely to be shape of the resulting histogram?
<CIMG web="denshistex1.png"></CIMG>
</EXR>
<EXR>Sppose that we collect data on the monthly income of all Indians, and make a histogram of the
 resulting data. Which of the following shapes would you expect?
<CIMG web="denshistex2.png"></CIMG>
</EXR>
<EXR>Consider the joint density 
<D>f(x,y) = <CASES>9x^2y^2<IF>0\leq x,y\leq 1</IF> 0<ELSE/></CASES>.</D>
If we generate data from it, which of the following scatterplots would the data most likely correspond to?
<CIMG web="densex2.png">In each case, the box is the unit square.</CIMG>
<ANS>
The density looks like this:
<CIMG web="densex1.png"></CIMG>
</ANS> 
</EXR>
<EXR>A bivariate density <M>f(x,y)</M>  is actually free of <M>y.</M>  Then which of the following
 scatterplots is most likely to be generated by it?
<CIMG web="denshistex3.png"></CIMG>
</EXR>
</NOTE>
