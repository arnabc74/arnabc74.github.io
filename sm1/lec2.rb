@{<NOTE>
<HEAD1>Statistical approach</HEAD1>
In the last lecture we had mentioned four strategies to
mathematise experience. We have briefly discussed three of them. 
Finally, we come to the approach of our primary interest: statistics.
<P/>
 It is based
on a natural phenomenon called <B>statistical
regularity</B>. Many branches of human knowledge start from an
effort to understand (and harness) some natural phenomena. If you
mix two things, often there is a reaction and some new thing is
produced. Man's curiosity as to the nature of such change has led
to the birth of chemistry. Similarly the regular nature of
planetary motion has led to the laws of mechanics. Explorations
revolving around such a natural phenomenon, take two paths: a
disinterested pursuit of knowledge, and a hope to put it to
practical use.  

<HEAD1>Statistical regularity</HEAD1> 
Let me illustrate this rather interesting phenomenon through a
dramatic demonstration. It is a form of the game of Ludo. The
board is just <M>\rr^2</M>, which you may imagine as an infinite
graph paper, with an <M>x</M>-axis and an <M>y</M>-axis drawn on
it. We have just a single counter, which is just a dot initially at <M>(0,0).</M>
Instead of a die, we have four pieces of paper, with the
following formulae written on them:
<OL>
<LI><BOX>
<M>X_{new} = 0.8 X_{old}+0.1</M><BR/>
<M>Y_{new} = 0.8 Y_{old}+0.04</M>}</BOX>
</LI>
<LI><BOX>
<M>X_{new} = 0.5 X_{old}+0.25</M><BR/>
<M>Y_{new} = 0.5 Y_{old}+0.4</M>}</BOX>
</LI>
<LI><BOX>
<M>X_{new} = 0.355 X_{old}-0.355Y_{old}+0.266</M><BR/>
<M>Y_{new} = 0.355 X_{old}+0.355 Y_{old}+0.078</M>}</BOX>
</LI>
<LI><BOX>
<M>X_{new} = 0.355 X_{old}+0.355Y_{old}+0.378</M><BR/>
<M>Y_{new} = -0.355 X_{old}+0.355 Y_{old}+0.434</M>}</BOX>
</LI>
</OL>
We draw a paper at random, and move the counter according to the
rule written on it. Then we return the paper, and again draw
another paper at random, and make a move accordingly. This new paper could very well be the
paper we drew last time. We repeat this process a large number
of times, marking all the positions the counter occupies during
its journey.
 It is not much fun unless you play it
yourself. <LINK to="https://arnab-chakraborty.shinyapps.io/shny/">This link</LINK> provides a way. 

<P/>

If you play it a large number of times, you will see that the
marked points look like a maple leaf! 
<P/>
This is an example statistical regularity: a regular behaviour
emerging from pure randomness. 

<HEAD2>So what?</HEAD2>
The demonstration that we saw was dramatic, but a contrived
one. Now we shall see a simple, possibly the simplest,
example. We shall toss a coin repeatedly, and plot the proportion
of heads after each toss. The resulting plot, though random,
seems to lose its randomness as we move towards the right, and
converges to a value. This value is called the probability of
head for a typical coin toss. 

<P/>

We can do the same thing for a die roll. But since there are 6
outcomes, we would like to track them simulataneously. A
graphical device to do this is a bar plot.  As the number of
rolls approach infinity, the diagram stabilises. The limiting
diagram is a function, called the probability mass function.    
<P/>
This gives rise to the concept of a <B>random experiment</B>, an
activity that is random in nature, yet can be repeated in such a
controlled manner so that this convergence holds. Random
experiments are something like ideal gases. They exist only
notionally, a coin toss or a die roll being some of closest
approximations of a random experiment that we can carry out in
practice. Since the activity is random, there is something
unknown involved. Our hope is to use statistical regularity to
bring out that unknown. 
</NOTE>@}
