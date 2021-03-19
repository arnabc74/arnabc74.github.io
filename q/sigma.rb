<NOTE>
@{
<M>\newcommand{\ev}{{\mathcal F}}</M>
<M>\newcommand{\pow}{{\mathcal P}}</M>
<HEAD1>The need of <M>\sigma</M>-algebras</HEAD1>
When we learn probabaility theory we see the following
definition.
<BOX name="Axiomatic definition of probability">
Let <M>\Omega</M> denote a nonempty set. Let <M>\ev</M>  denote
a <M>\sigma</M>-algebra on <M>\Omega</M>. Then a probability is a
function <M>P:\ev\to [0,1]</M> such that the following conditions hold:
<OL>
<LI>For any event <M>A\in\ev</M> we have <M>P(A)\geq 0</M></LI>
<LI><M>P(\Omega)=1</M></LI>
<LI>If <M>A_1,A_2,...\in\ev</M> are countably many (finite/infinite) disjoint events then 
<D>
P(\cup A_n) = \sum P(A_n).
</D>
</LI>
</OL>
</BOX>
We generally encounter this definition after a learning to deal
with the concept of probability intuitively. We find the three
axioms quite intuitive. However, the need
of <M>\sigma </M>-algebra comes as an unexpected shock. Its
precise definition is as follows.

<BOX name="$\sigma$-algebra">
Let <M>\Omega</M> be any non-empty set. By
a <M>\sigma </M>-algebra on <M>\Omega</M> we mean a
collection <M>\ev</M> of
the subsets of <M>\Omega</M> such that
<OL>
<LI><M>\phi\in\ev</M></LI>
<LI>If <M>A\in\ev</M> then <M>A^c\in\ev</M></LI>
<LI>If <M>A_1,A_2,...\in\ev,</M> then <M>\cup_n A_\in\ev.</M></LI>
</OL>
</BOX>
One obvious example of a <M>\sigma </M>-algebra on any non-empty
set <M>\Omega</M> is its power set, <M>\pow(\Omega)</M>, the collection of all
possible subsets. 
<P/>
A beginning student of probability may not immediately see the
need 
of any <M>\sigma </M>-algebra other than the power set.  Indeed,
that's how mathematicians had started out, until they met a
snag. The concept of a <M>\sigma </M>-algebra was born to avoid
this snag. 

<HEAD1>The snag</HEAD1>
Let's pretend we do not know anything
about <M>\sigma </M>-algebras, and we have started with a
non-empty set <M>\Omega</M> and defined probability as a
function <M>P:\pow(\Omega)\to[0,1]</M> satisfying the same three
axioms mentioned earlier. 
<P/>
Now we rarely work with probabilities in general, but rather with
probabilities that satisfy some additional nice properties.  One
such nice property is "uniformity". To understand this, consider
a popular carnival game consisitng of a rotating wheel fitted
with a fixed pointer. The wheel is rotated and after some times
comes to rest in some random position. The outcome of the random
experiment is the point on the rim of the wheel under the
pointer. Assuming that the wheel has no inherent tilt, a natural
model is to assume that "all positions are uniformly likely."
This is intuition. To capture this intuition mathematically, we
need to have a probabaility with the following property:
<Q>
Let <M>\Omega</M> denote the set of all points on the
circumference of the wheel.
If <M>f_\theta(\cdot) </M> is the function that denotes rotation by an
angle <M>\theta,</M> then for all <M>A\in\pow(\Omega)</M> and all
angles <M>\theta</M> we must have 
<D>
P(f_\theta(A)) = P(A),
</D>
i.e., the probabaility does not change under rotation. 
</Q>
In other words, we are modelling our random experiment using a
function <M>P:\pow(\Omega)\to[0,1]</M> that satisfies this
condition as well as the three probabaility axioms.
<P/>
It might come as a complete surprise that NO SUCH FUNCTION EXISTS!!!!
<P/>
The proof of this non-existence is fun, nontrivial, but pretty short. 
The basic idea is to construct a rather ugly, complicated
subset <M>M</M> of <M>\Omega</M> for which <M>P(M)</M> cannot be
defined. The exact construction will be given below. 
But before that let us quickly point out the
implication: The problem occurs <I>only</I> with some ugly, complicated
set. Now such sets rarely occur in any practical problem. So why
care even if we cannot define probabailities for them? This led
to the idea of defining probabaility only for a collection of
subsets of <M>\Omega</M> (instead of <I>all</I> subsets). But just
how many ugly, complicated subsets are we to avoid? That's a
difficult question to answer. So we attack the problem from the
other side: for which sets do we want probabaility to be defined?
Here the answer is obvious: all subsets of <M>\Omega</M> for
which we can make the axioms meaningful. This immediately leads
to the definition of <M>\sigma</M>-algebra.

<HEAD1>Construction of the ugly, complicated set</HEAD1>
Let <M>\Omega</M> be the following circle (only the circumference, not the
inside). Let the circumference have length 1.
<CIMG web="vitalli1.png">A circle</CIMG>
If I pick a point "at random" from this circle, what is the
chance that it lands in the upper semicircle? The obvious answer
is <M>[[12]].</M> What is the chance that it would land in any
given quadrant? The obvious answer this time is <M>[[14]].</M>
<P/>
In fact, for any arc, the probability equals the length of the arc.
<P/>
Also, suppose that <M>A</M> is some subset of the
circle. Let us denote by <M>A+\theta</M> the subset obtained by
rotating <M>A</M> by an angle <M>\theta.</M> Which subset has the
larger probability, <M>A</M> or <M>A+\theta?</M> Since we are
picking the point "at random" without any bias for any particular
direction, hence both <M>A</M> and <M>A+\theta</M> should have
the same probability. 
<P/>
It might come as a surprise
that there is <B>no</B> probability function <M>P</M> from the power set
of <M>\Omega</M> to <M>\rr</M> that satisfies these two
conditions simultaneously, i.e.,
<UL>
<LI>for any arc <M>A</M> we must have <M>P(A)=length(A).</M></LI>
<LI>for any <M>A\seq\Omega</M> and for any <M>\theta</M> we must
have <M>P(A) = P(A+\theta).</M></LI>
</UL>
Thus, we are claiming that we cannot have a function <M>P</M>
 definied on the entire power set of <M>\Omega</M> that satisfies
 the three probability axioms as well as these two extra conditions.
<P/>

 We shall provide  a quick proof of
this here by contradiction. Let, if posible, there be such a
function <M>P.</M> We shall demonstrate a "bad" set <M>M</M> for
which <M>P(M)</M> cannot be defined, contradicting the assumption
that <M>P</M> is defined for all subsets of <M>\Omega.</M> 
<P/>
Let's warm up first.

<HEAD2>Warming up</HEAD2>
Imagine the circle split up into
12 equal parts like the face of the clock. 
<CIMG web="vitalli2.png">Split up into 12 arcs</CIMG>
We have grouped the arcs into 3 different groups of size 4 each
(shown by the colours red, green and blue). The grouping is done
like this: Give any colour to any arc to start with. Then start
counting clockwise and use the
same colour to every 3rd arc. Then pick an uncoloured arc and
proceed similarly with another colour, and so on. Notice that the
parts of the different colours are all identical in shape and
size. One is just a rotated version of another. So the total
length of all the parts must be the same. 
<P/>
 <CIMG web="vitalli3.png">One arc of each colour</CIMG>
Now pick any one arc of each colour. This gives you a set. Call
it <M>M.</M> Rotate <M>M</M>
by <M>90^\circ</M> clockwise. The new set is <M>M+90^\circ.</M>
Then, notice that <M>M,
M+90^\circ, M+180^\circ</M> and <M>M+270^\circ</M> are all disjoint and build up
the entire circle.
 <CIMG web="vitalli4.png">Partitioning the circle</CIMG>
Well, that's all the warm up we need! Now for the actual thing.

<HEAD2>A set without a probability</HEAD2>
We again start with the circle, whose
circumference is 1. Also, for two points <M>x,y\in
S</M>, we shall denote the (shorter) arc length between them
by <M>|xy|.</M> This will always be in <M>[0,1/2].</M>
<P/>

Pick any point on the circle, colour
it red. Also mark all points that are at a rational distance from
this point with the same colour. Now pick a point that has not
been coloured. Colour it green, and do the same thing again: mark
all points at a rational distance from it with green. Continue
like this until all the points are coloured. Of course, this will
take infinite amount of time. What we mean mathematically, is
that for each point <M>x\in S</M> we define 
<D>
A_x = \{p\in S~:~ |px|\in\qq\}.
</D>
Note the following points:
<UL>
<LI>If <M>y\in A_x</M> then <M>x\in A_y.</M> So all
the <M>A_x</M>'s are not distinct. For example, if <M>x,y</M>
are diametrically opposite each other, then <M>A_x=A_y.</M></LI>
<LI>Each <M>A_x</M> is countable, since there are only countably
many rationals.</LI>
<LI>There are uncountably many distinct <M>A_x</M>'s (since
total number of points on the circle is uncountable).</LI>
</UL>
Now pick exactly one point from each distinct <M>A_x.</M> Call the set
of all these picked points <M>M.</M>
<P/>
This is a troublesome set. I claim that you cannot define its
probability <M>P(M).</M>
<P/>

For any rational number <M>r\in [0,1)</M> we denote
by <M>M+r</M> the set <M>M</M> rotated clockwise by distance <M>r.</M>
<P/>
Then note that
<UL>
<LI>If <M>r\neq s</M> are two rational points in <M>[0,1)</M>
then <M>M+r</M> and <M>M+s</M> are disjoint.</LI>
<LI>Let <M>\{r_1,r_2,...\}</M> be a listing all rationals
in <M>[0,1).</M>
Then 
<D>
\cup_{i=1}^\infty (M+r_i)
</D>
equals the entire circle.
</LI>
</UL>
Now, let's say that <M>M</M> has <M>P(M)=\ell.</M>
Clearly, <M>\forall r\in[0,1)</M> we must have <M>P(M+r)=\ell,</M>
as well.

<P/>
Now, if <M>\ell = 0</M> then the second
condition above implies that <M>P(\Omega)</M>
is <M>0+0+\cdots = 0,</M> which is wrong, since length
of <M>P(\Omega)</M> must be 1.
<P/>
If <M>\ell>0,</M> then <M>P(\Omega)</M> becomes <M>\ell+\ell+\cdots =
\infty,</M> again a contradiction! 
<P/>
This completes the proof

<HEAD1>Borel <M>\sigma </M>-algebra</HEAD1>
When we defined <M>\sigma </M>-algebra, we basically avoided the
problem of non-existence of uniform probability, by restricting
our attention to only a collection of subsets of <M>\Omega.</M>
The definition of <M>\sigma </M>-algebra says that the members of this
collection must be chosen consistently (e.g., if a set is included
in the collection, its complement must also be included). But
there may be many possible collections all satisfying the
definition of a <M>\sigma </M>-algebra. The largest example is
the power set, which is too large to ensure existence of a
uniform probability. But how much smaller should we take
the <M>\sigma </M>-algebra. Should we make it the smallest
possible? The smallest possible <M>\sigma </M>-algebra is
just <M>\{\phi, \Omega\},</M> and we can hardly do any useful
computation with it. So there is a trade-off: 
<Q>too large means no
uniform probability, and too small means useless.</Q>
The first attempt to strike a balance was to work with the
largest possible <M>\sigma</M>-algebra that allows a uniform
probability to exist. This <M>\sigma </M>-algebra is called the
<B>Lebesgue <M>\sigma </M>-algebra</B>. Unfortunately, it is
rather difficult to work with it. So people has settled for a
smaller <M>\sigma </M>-algebra, which is called
the <B>Borel <M>\sigma </M>-algebra</B>. The
Borel <M>\sigma </M>-algebra over <M>\rr</M> is the
smallest <M>\sigma </M>-algebra containing all the
intervals. Equivalently, it is the
smallest <M>\sigma </M>-algebra containing all open sets
of <M>\rr.</M> If we work with any topological
space <M>\Omega</M> then the Borel <M>\sigma </M>-algebra is the
smallest <M>\sigma </M>-algebra containing all open subsets of <M>\Omega.</M>

<DISQUSE url="https://arnabc74.github.io/q/sigma.html" id="vit"/>@}
</NOTE>
