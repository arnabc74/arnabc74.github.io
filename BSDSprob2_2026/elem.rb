@{<NOTE><TITLE>Elementary concepts</TITLE>
<M>\newcommand{\calF}{\mathcal{F}}</M>
<HEAD1>What is probability all about?</HEAD1>
Toss a coin. You can't be sure whether it will come up head first
or tail first. Wait, is that true? After all, the coin is
governed by the laws of physics. So if you know its initial
position, the force of the toss, friction of the air, the nature
of the surface where it will land,  etc etc,
then you <I>should</I> know exactly what it going to
happen. Yes! That's what physics tells you. But the truth is that
in reality we do <I>not</I> have all those pieces of
information. <FNOTE>A magician-turned-mathematician named <LINK to="headswithJ.pdf">Persi Diaconis</LINK> has so much control on
his fingers, that he can make the coin come up whichever way he
likes! He once constructed a mechanical coin
tossing machine that could be controlled to produce any desired
outcome!</FNOTE> So we say that the outcome of the coin toss
is <I>random</I>. The adjective random actually is not a property
of of the outcome, it is more about <I>our</I> ignorance behind
the procedure generating it.
<P/>
Probability theory is the branch of science dealing with
randomness. Just as biology is the branch of science dealing with
living form, and chemistry is the branch dealing with materials
things are made of. 
<P/>
But there is a great conceptual difference between traditional
branches like biology and chemistry, and probability theory. The
aims of those branches are clear even to a layman. But what
exactly do we mean when we say that we study randomness? The
answer is not at all obvious! 

Let's play a game of Ludo to get an idea. 
<HEAD2>A mathematical Ludo</HEAD2>
A typical Ludo board looks like this:
<CIMG web="ludo1.png">A board, a die, a counter, and some rules</CIMG>

The Ludo we are going to play is more sophisticated.
The board will be entire 
<M>\rr^2,</M> and the counter will be a single point, which is
initially at <M>(X,Y)=(0,0).</M> 

The die will be 4-faced, carrying the numbers 1 to 4. 

There are 4 rules of motion. The outcome of the die roll will determine whic rule will apply at each step. 
The rules are:
<OL>
<LI>
<M>X_{new} = 0.8 X_{old}+0.1</M>

<M>Y_{new} = 0.8 Y_{old}+0.04</M>
</LI>
<LI>
<M>X_{new} = 0.5 X_{old}+0.25</M>

<M>Y_{new} = 0.5 Y_{old}+0.4</M>
</LI>
<LI>
<M>X_{new} = 0.355 X_{old}-0.355Y_{old}+0.266</M>

<M>Y_{new} = 0.355 X_{old}+0.355 Y_{old}+0.078</M>
</LI>
<LI>
<M>X_{new} = 0.355 X_{old}+0.355Y_{old}+0.378</M>

<M>Y_{new} = -0.355 X_{old}+0.355 Y_{old}+0.434</M>
</LI>
</OL>
These are all formulae to compute two numbers, <M>X_{new}</M>
and <M>Y_{new}</M> from two other numbers <M>X_{old}</M>
and <M>Y_{old}.</M> 
<P/>
We shall play a game of Ludo with these! 
Draw one of the four pieces of
paper at random and apply the formula on it to compute the new
position of the counter. Keep on doing this. A every step you are
drawing one of the four papers at random (same paper may get
picked many times). All the counter positions are marked as
dots.
<P/>
So after you have played this game for, say, 10000 times, you
have as many dots on the paper. What will these dots look like? A
random jumble? A circle? A line? or what?
<P/>
Play this game <I>now</I> by clicking <LINK to="https://acbsds.shinyapps.io/ludo/">here</LINK>. 

<P/>
You'll be surprised by the outcome. Somehow all the randomness
has vanished, and a very regular pattern has emerged!
<P/>
How? Will this always happen? What if I change those formulae? 
<P/>
These are the questions that probability theory wants to answer.
<P/>
This "regular pattern out of randomness" phenomenon has a
name. It is called <B>Statistical Regularity</B>.

<HEAD2>Statistical Regularity</HEAD2>
Statistical regularity is different from mathematical patterns in
the sense that it is rarely exactly replicated, it is extremely
similar but not the same. We see this all around us. Our finger
prints, for example, or the leaves on a tree. Statistical
regularity is like a mysterious black box which takes random
unpredictable input and somehow digests the randomness to produce
regular output. No doubt, if we can master this technique then it
should help the predictable output from unpredictable inputs!
The quite predictable profit of the Casino owner or insurance
companies are examples.

Statistical regularity takes many forms, some
more dramatic, some less.  The simplest occurrence of the
phenomenon was first proved mathematically by Jakob 
Bernoulli. We shall learn it in this course. The theorem and its proof will hardly fill a page
completely. But it took 25 years to figure out how to tackle
randomness using mathematics to arrive at the proof!

Welcome to the world of probability!

<HEAD1>Computer simulation</HEAD1>
Random experiments sit at the heart of probability theory. The
theory actually tries to predict what you are going to see if you
repeat a random experiment a <I>large</I> number of
times. Unfortunately, even a simple random experiment like a coin
toss is difficult to be repeated many times by hand. So we shall
use a computer to carry out a random experiment. We shall use a software
called R, which is particularly easy to use for this
purpose. Also, it is free and easy to install. You can even run
it on the cloud from your smart phone without installing
anything!

<HEAD2>SRSWR (you should already know this)</HEAD2>
Consider a fair die roll. It is like randomly drawing one out of 6 pieces of paper
with 1,2,...,6 written on them. Since you give each piece an
equal chance, we call it <B>simple random sampling (SRS)</B>. The
R code for this is 
<RC>
sample(6,1)
</RC>
The first 6 refers to the number of pieces of paper (R
automatically labells them with 1,...,6), and the 1 tells R to
select only one paper.
<P/>
Repeat the same command once again to roll the die once more
(you'll possiby get a different outcome). Of course, it is
tedious to repeat the command 100 times to roll the die 100 times.
So we use <B>simple random
sampling with replacement (SRSWR)</B>. It is 
like drawing 100 
random pieces of paper from those 6 pieces  <I>each drawn paper
being replaced before the next draw.</I>
In this way you can roll
the die any number of times. The R code is 
<RC>
sample(6,100,replace=TRUE)
</RC>
By the way, R is case-sensitive, so the <CODE>TRUE</CODE> must be
in capitals. This may be abbreviated to 
<RC>
sample(6,100,rep=T)
</RC>
Toissing a coin is similar, except that we have only two pieces
of paper:

<RC>
sample(2,100,rep=T)
</RC>
Here instead of Heads and Tails you get 1's and 2's. You can tell
R explicitly to use the labels "H" and "T" as follows.
<RC>
sample( c('H', 'T'), 100, rep=T)
</RC>
Note the <CODE>c(...)</CODE>. That is R's way of making an array
of things. Here the things are the two labels "H" and "T". Note
the quotes around them. <CODE>"T"</CODE>, for example, is just a
label, which is different from <CODE>T</CODE>, an abbreviation
for <CODE>TRUE</CODE>. 
<P/>
Now you can see some statistical regularity at work. Toss a coin,
say 1000 times, and plot the cumulative proportion of
heads. Let's understand what I mean with a small example, say 5
tosses. If the outcomes are H, T, T, H, H, then the cumulative
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

<HEAD2>SRSWOR (you should already know this)</HEAD2>
Another popular random experiment is picking a number of cards at
random from a deck of cards. <FNOTE>A standard deck of playing
cards consists of 52 cards. There are 4 <I>suits</I>
(spade <RAWIMG web="spade.png" w="20"/>
diamond <RAWIMG web="diamond.png" w="20"/>, heart
<RAWIMG web="heart.png" w="20"/> and club <RAWIMG web="club.png"
w="20"/>). There are 13 denominations under each suit: 2,...,10,
Jack, Queen, King and Ace. The cards of the three denominations
Jack, Queen and King are called picture cards.</FNOTE>
Suppose that we want to pick 5 random cards from a deck. We can
do this as
<RC>
sample(52,5).
</RC>

<HEAD2>Visualising density</HEAD2>
What does it mean when we say a random variable has a
density <M>f</M>? This is closely related with the concept of statistical regularity. 
We shall explore this
 visually in the 1D and 2D
cases. 
<HEAD3>1D case</HEAD3>
Any random variable has a random experiment
behind it. Mathematically, a random variable is a real valued function defined on a probability
 space <M>(\Omega, \calF, P). </M>  You can think of the probability space as a mathematical
 description of a random experiment. Every time we carry out the random experiment we get a
 random <M>\omega\in\Omega</M> as our output, based on which compute one value <M>X(\omega)</M>  of our random variable.

 If we carry out that random
 experiment independently a
large number of time we shall get as many values of that random
variable. If we make a histogram of all those values, then we
approach a particular graph. This limiting graph is called the density of the random variable.
We show two examples.
<CIMG web="histdot1.png">An example with a single peak (unimodal)</CIMG>
<CIMG web="histdot2.png">An example with two peaks (bimodal)</CIMG>
The generated points themselves are shown below the histogram. Notice how they crowd together where the density peaks up.
This is the reason why a density is a called
"density".
  
<HEAD3>2D case</HEAD3>
A 2D random variable (also called a random vector) is just
an ordered pair of two 1D random variables, <M>(X,Y).</M> The two
random variables are jointly distributed, i.e., they are both
defined on the same probability space, <M>(\Omega, \calF, P),</M> which is basically a random experiment.  When
 you run that experiment,
you get some outcome <M>\omega\in \Omega.</M>  Based on that same <M>\omega</M>  you compute
<M>X(\omega)</M>  and <M>Y(\omega).</M>  So each time you
run the experiment, you get a point that you can plot on a graph
paper. When you run the experiment a large number of times
independently you get a spray of points. As before they density
of the spray may be different at different parts of
the <M>xy</M>-plane. This varying level of concentration is
captured by the (joint) density of <M>(X,Y).</M> 

For instance when we generate data from the density below:
<MV src="image/gaumix.glb" alt="A bivariate density"></MV>
the scatterplot looks like this:
<CIMG web="gaumixscat.png">A sample scatterplot from the above density</CIMG>
Observe how the random points crowd more densely near the peaks.

<HEAD1>Problems for practice</HEAD1>
The following problems will help you to enjoy the course
better. However, no coding problem will be asked in the exams.
<OL>
<LI>Simulate a Europian Roullette wheel. It is wheel with the
numbers 0,1,...,38 written along the circumference. The wheel is
spun and ball is dropped on it. When the wheel stops spinning the
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
</NOTE>
