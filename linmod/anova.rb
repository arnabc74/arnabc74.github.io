<NOTE script="bulb.js">
@{<E>
<M>
\newcommand{\o}{{\mathbb 1}}
\newcommand{\v}{\vec}
</M>
<HEAD1>ANalysis Of VAriance</HEAD1>
We have already seen how a input-output box diagram sits at the
heart of linear models. Our primary interest lies in learning
about how the inputs influence the output. Usually we start with
an easier question: which inputs have any influence on the
output? It's a binary quetion, requiring yes/no answer. We can
eliminate all the inputs that do not influence the output, and
then focus on exploring the roles of the other inputs. ANOVA is
our main weapon to answer this binary question.
<HEAD2>A simple example</HEAD2>
Suppose you enter a room where there is a light bulb that is
on. Also there are 4 switches as shown. <I>Just by looking at
the switches</I>, try to answer this question: Which switch
controls the light?
<RAWTABLE>
<TR>
<TD><IMG1 id="s0" web="switchoff.png" onclick="f(0)"/></TD>
<TD><IMG1 id="s1" web="switchon.png" onclick="f(1)"/></TD>
<TD><IMG1 id="s2" web="switchoff.png" onclick="f(2)"/></TD>
<TD><IMG1 id="s3" web="switchoff.png" onclick="f(3)"/></TD>
<TD><IMG1 id="lamp1" web="lighton.png"/></TD></TR></RAWTABLE>
Now play with the switches (click to toggle). What is the answer
to the same question now? 
<P/>
The important lesson to learn from this example is that it is
less important to relate values of the inputs to the value of the
output. You should relate change in the inputs with the change in
the output. So before you say that the high value of ouput is
associated with a high value of a input, you should lower the
input's value and see if the ouput also comes down. This is the
crucial idea behind ANOVA: explaining  the variation of the
output in terms of variations of the inputs. Here is another
example.

<EXM>
I once heard it mentioned that girls have worse 3D perception
that boys. Many teachers who have worked with both boys and girls
support this view. But is it because of hormnal diference? Or is
it because of how the society nurtures children of the two
genders. Boys are usually given building blocks and mechnics sets
to play with, while girls are supposed to play with soft toys and
miniature kitchen stuffs. It is quite likely that this difference
eventually influence the 3D perception. In terms of box diagram
we may visualise this as:
<CIMG web="boygirl1.png"/>
The big double-headed red arrow means that we do observe a lot of
variation in 3D perception of kids. We want to link this with the
variation of of the inputs. Here is one possibility:
<CIMG web="boygirl2.png"/>
Here the main role is played by the gender difference. Choice of
toys or random errors take a back stage. This is basically what
goes in the mind of people who make remarks like
"Oh, girls will never be as smart as boys,
howsoever you try". 
<P/>
But those who thinks nurture is the root cause have the following
diagram in mind:
<CIMG web="boygirl3.png"/>
Notice that in each case part of the variation comes from random
error. This source could play the main role, as in the following
diagram:
<CIMG web="boygirl4.png"/>
By the way, you should not think that only one input must
dominate all the time. Multiple inputs may be significant
simulataneously. 
</EXM>

From the above example we may get the idea that the output
variation is "split up" nicely into parts that are each ascribed
to one input. Thus, we may expect to have a table like the one
shown below:
<TABLE>
<TR><TH>Source</TH><TH>Variation</TH></TR>
<TR><TD>Gender</TD> <TD><M>S_1</M></TD></TR>
<TR><TD>Toy</TD> <TD><M>S_2</M></TD></TR>
<TR><TD>Random</TD> <TD><M>S_3</M></TD></TR>
<TR><TD>Output</TD> <TD><M>S_1+S_2+S_3</M></TD></TR>
</TABLE>
Here <M>S_i</M>'s are suitable measures of variation for the
different arrows in and out of the box. Such a table is called an
ANOVA table (a typical ANOVA table also has some additional
columns as we shall see soon). 
<P/>
This ANOVA table has one row for each arrow. This may not always be the case, though. Let us
aain illustrate with a light bulb example.

<HEAD2>Light bulb again</HEAD2>

<EXM>
You enter a room with two switches and a lamp as shown. Play with
the switches to figure out how they control the lamp.
<RAWTABLE>
<TR>
<TD><IMG1 id="t0" web="switchoff.png" onclick="g(0)"/></TD>
<TD><IMG1 id="t1" web="switchoff.png" onclick="g(1)"/></TD>
<TD><IMG1 id="lamp2" web="lightoff.png"/></TD></TR></RAWTABLE>
Here the lamp turns on only when both the switches are on. If any
one of the switches is off, then the other has no effect. Thus,
here the importance of each switch depends on the state of the
other switch. We have already seen this kind of
situation: <B>interaction</B>. 
</EXM>
We have already seen the following agricultural example. 
<CIMG web="bb5.png"/>
To allow for possible interaction between <I>crop</I>
and <I>fertiliser</I>, our ANOVA table should now have one extra
row:
<TABLE>
<TR><TH>Source</TH><TH>Variation</TH></TR>
<TR><TD>Crop</TD> <TD><M>S_1</M></TD></TR>
<TR><TD>Fertiliser</TD> <TD><M>S_2</M></TD></TR>
<TR><TD>Crop<M>\times</M>Fertiliser</TD> <TD><M>S_3</M></TD></TR>
<TR><TD>Random</TD> <TD><M>S_4</M></TD></TR>
<TR><TD>Output</TD> <TD><M>S_1+S_2+S_3+S_4</M></TD></TR>
</TABLE>
If <M>S_3</M> is pretty large, then we shall suspect the presence
of interaction. 

<HEAD2>How large is "large enough"?</HEAD2>
Let's take two examples to explore this important question.

<EXM>
A student got 31% marks in her +2 level math exam. She was not happy with
it. She went to a private coaching centre, and after a year of
study there appeared in the same exam once again. This time she
scored 33%. Do you think that the coaching centre helped? 
<SOLN/>Not really. An increase from 31% to 33% is only very
slight increase, could very well be due to chance. 
</EXM>

Contrast this example with the next one. 

<EXM>
The daughter of one of our staff is a state-level competitive
swimmer. A student of only class VII, she takes 33 sec to finish
her 50 metre butterfly. Her father wishes she could do it in 31
sec, because only then she has chance to comete at the national
level. Now suppose a swimming coach really trains her to achieve
that level. Would you consider that as a significant
contribution?<SOLN/>Sure! Reducing 2 sec in 50 metre is no joke!
It calls for serious improvement in swimming, and not effected by
mere random variations.
</EXM>

In both the examples we compared the numbers 31 and 33. Yet in
one case the diffeence was considred insignificant, while in the
other it was significant. This was because we used the variation
due to randomness as a yard stick. If the variation associated
wit an input is significantly larger than that for the random
error, only then does the contribution of the input count. 
<P/>
For example, in the following diagram input 1 is significant:
<CIMG web="sig1.png"/>
while the same input is insignificant here:
<CIMG web="sig2.png"/>
<HEAD2>Doing some algebra</HEAD2>
So far our discussion has been pretty informal. Now we shall try
to mathematise the ideas. We shall start with the 1-way ANOVA
model. 

<EXM>
We are trying to see the effect of three different fertilisers
(None, Compost and NPK) on the
yield of paddy. So fertiliser is the only input (except random
error) and the box diagram looks like this:
<CIMG web="bb3.png"/>
We take 15 identical plots, and randomly assign each fertiliser
to 5 plots. Here is the outcome shown in a number line:
<CIMG web="fert1.png"/>
Do you think that the fertiliser effect is significant? What if
the outcomes were like this?
<CIMG web="fert2.png"/>
<SOLN/>
I hope you agree that the fertiliser effect is significant in the
first case, and insignificant in the second case. Indeed, you can
roughly denote your finding diagrammatically as follows.
<CIMG web="bb3a.png"/>
and
<CIMG web="bb3b.png"/>
We shall now try to arrive at these mathematically. 
<P/>
We start with the output variability. If we call the yield of
the <M>j</M>-th plot under the <M>i</M>-th fertiliser by the
name <M>y_{ij}</M> (for <M>i=1,2,3</M> and <M>j=1,...,5</M>),
then the output variability may be measured by 
<D>
\sum_i\sum_j (y_{ij}-\b y_{..})^2.
</D>
The error variability is best measured by looking it how much
dots of the same colour differ from each other. These are given
by (for <M>i=1,2,3</M>)
<D>
\sum_j (y_{ij}-\b y_{i.})^2.
</D>
So the total variability due to random error is 
<D>
\sum_i \sum_j (y_{ij}-\b y_{i.})^2.
</D>
If we want to measure the variability due to <I>fertiliser</I>,
then we should first find the average of dots of each colour, and
pretend that all the dots of that colour are actually at that
average, and 
then see how much the points differ from each other:
<D>
\sum_j 5(\b y_{i.}-\b y_{..})^2.
</D>
The 5 is because there are 5 dots of each colour.
<P/>

And indeed we have the algebraic identity:
<D>
\sum_i\sum_j (y_{ij}-\b y_{..})^2 = 
\sum_i \sum_j (y_{ij}-\b y_{i.})^2 + \sum_j 5(\b y_{i.}-\b y_{..})^2.
</D>
In fact, here all the group size were 5. If the <M>i</M>-th group
size were <M>n_i</M> (for <M>i=1,2,3</M>), even then we have
<D>
\sum_i\sum_j (y_{ij}-\b y_{..})^2 = 
\sum_i \sum_j (y_{ij}-\b y_{i.})^2 + \sum_j n_i(\b y_{i.}-\b y_{..})^2.
</D>
So we now have a mathematical form of our ANOVA table:
<TABLE>
<TR><TH>Source</TH><TH>SS</TH></TR>
<TR><TD>Fertiliser</TD> <TD><M>\sum_j n_i(\b y_{i.}-\b y_{..})^2</M></TD></TR>
<TR><TD>Random</TD> <TD><M>\sum_i \sum_j (y_{ij}-\b y_{i.})^2</M></TD></TR>
<TR><TD>Total</TD> <TD><M>\sum_i\sum_j (y_{ij}-\b y_{..})^2</M></TD></TR>
</TABLE>
As we had mentioned earlier, we use the <M>RSS</M> as our yard
stick. So we are going to measure the <M>SS</M>
for <I>fertiliser</I> in units of <M>RSS.</M> In other words, we
shall check if the following ratio is "too large":
<D>
[[\sum_j n_i(\b y_{i.}-\b y_{..})^2.][\sum_i \sum_j (y_{ij}-\b y_{i.})^2 ]].
</D>
You have probably guessed that this looks suspiciously like
an <M>F</M>-statistic (only if we divide by suitable degrees of
freedom). Indeed, these detais constitute the other columns of a
traditional ANOVA table:
<TABLE>
<TR><TH>Source</TH><TH>d.f.</TH><TH>SS</TH><TH><M>MS</M></TH><TH><M>F</M></TH></TR>
<TR><TD>Fertiliser</TD><TD>2</TD> <TD><M>\sum_j n_i(\b y_{i.}-\b y_{..})^2</M></TD><TD><M>SS_{fert}/df_{fert}</M></TD><TD><M>MS_{fert}/MS_{err}</M></TD></TR>
<TR><TD>Random</TD> <TD>12</TD><TD><M>\sum_i \sum_j (y_{ij}-\b y_{i.})^2</M></TD><TD><M>SS_{err}/df_{err}</M></TD></TR>
<TR><TD>Total</TD> <TD>14</TD><TD><M>\sum_i\sum_j (y_{ij}-\b y_{..})^2</M></TD></TR>
</TABLE>
</EXM>
The d.f. column is mysterious, but the others are not. The
d.f. column requires some linear algbra to explain, which we
shall do now.


<DISQUSE id="lmanova" url="https://arnabc74.github.io/linmod/anova.html"/>
</E>@}
</NOTE>
