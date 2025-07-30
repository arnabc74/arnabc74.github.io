@{<NOTE>
<TITLE>Basic concepts</TITLE>
<M>\newcommand{\ev}{{\mathcal F}}</M>
<HEAD1>Basic concepts</HEAD1>
A <B>random experiment</B> is an activity whose outcome we cannot
predict. The set of all outcomes is called its <B>sample space</B>. Each
element of this set is called a <B>sample point</B>. 
By the term <B>event</B>  we understand a subset of the sample
space. 
<EXM>A coin toss is a random experiment. Its sample space is <M>\{head,tail\}.</M>  There are four
 different events possible here: 
<M>\phi, \{head\},\{tail\},\{head,tail\}.</M>
</EXM>

<EXM>Rolling a die is another random experiment. The sample space here is <M>\{1,2,3,4,5,6\}.</M> 
 One possible event is the set of all even numbers, <M>\{2,4,6\}.</M></EXM>

I give you a coin to toss. Before tossing, you carefully inspect
it. You find no difference at all between the two sides (except
for the pictures on them). So you infer that both head and tail
are <I>equally likely</I> (i.e., you are equally ignorant about
both sides). It is common to express this situation as "50-50"
chance, or <M>50\%</M> chance of a head (or a tail), or probability of a head (or a tail) is <M>[[12]].</M>
<P/>
The main idea is that the chance of a head equals the chance of a
tail. We like to express this by first imagining a totality and
then halving it. This totality may be taken as 100 or 100% or 1 or any other positive number.
<P/>
In probability theory we take the total as <M>1.</M>  This choice
is justified by statistical regularity, as the following example
shows.
<EXM>
Consider rolling a fair die. Let <M>A</M> be the event that we
get a prime number, i.e., <M>A=\{2,3,5\}.</M> Intuitively, the
probability of <M>A</M> should be <M>[[12]].</M>  We shall use R to 
perform  5000 trials of this random experiment and check the running proportion of
cases that the event <M>A</M> happens.
<RC>
x = sample(6,5000,rep=T)
A = x %in% c(2,3,5)
plot(cumsum(A)/(1:5000), ty='l')
</RC> 
Notice that the proportions indeed tend towards <M>[[12]].</M>

<P/>
Similarly, we can get an idea of the probability of <M>B=\{1,3,4,5\}</M> using
the following R code.
<RC>
x = sample(6,5000,rep=T)
B = x %in% c(1,3,4,5)
mean(B)
</RC>
</EXM>

With each event we assign a probability
which is a number from <M>[0,1].</M> In practice it is difficult
(<LINK to="refs/headswithJ.pdf">impossible?</LINK>) to get a biased coin (i.e., a coin which is more likely
to show one side than the other). It is very easy to <I>simulate</I>
such a coin though:
<RC>
x = sample(c('h', 't'), 1000, prob=c(0.7,0.3), rep=T)
sum(x=='h')
sum(x=='t')
</RC>
The <CODE>prob=c(0.7,0.3)</CODE> specifies the probabilities. 
<FNOTE>If the sample space is countable (finite/infinite), then
generally <M>\ev</M> is just the power set of <M>\Omega.</M>
If <M>\Omega</M> is uncountable, then there may be some <LINK to="vit.html">"bad"
subsets</LINK> for which probability cannot be defined! These are
not called events, and so are not considered as members of <M>\ev.</M> In this case
<M>\ev</M> is a strict subset of the power set of <M>\Omega.</M> Fortunately, 
we shall not come across such "bad" subsets any time soon.</FNOTE> 
<P/>
Let <M>\ev</M>  be the set of all events in a sample space. For
example, if <M>\Omega = \{head, tail\}</M> then <M>\ev</M>
is <M>{#{\phi,\{head\},\{tail\},\{head,tail\} }#}.</M>
<P/>

Then a <B>probability</B>  is a function <M>P:\ev\to[0,1].</M>
<P/>
Of course, not all such functions  can be a probability. A function needs to satisfy certain
 common sense conditions to be called a probability function. 

<EXM>
A report says that the health condition in a country is so bad, that the chance of a newborn baby surviving for at least
 1 year is only 50%. However, the chance that he survives for at least 5 years is 90%. Does it sound odd?
<SOLN/>
Yes. Any baby surviving for at least 5 years has of course survived the first year as well. So how can the latter chance
 be larger?
</EXM>

This example gives one common sense condition that a probability function must satisfy: if <M>A\seq B</M> then we should
have <M>P(A)\leq P(B).</M> 
<P/>
Of course, there are many many such common sense conditions and it is difficult to come up with a complete list. 
A Russian mathematician named 
Kolmogorov reduced this list to only 3 conditions, called the <B>probability axioms</B>.

<HEAD2>Probability axioms</HEAD2>
<FNOTE>A collection of sets is called <B>disjoint</B> if the intersection of any two sets from the collection is
 empty. They are also called
 <B>mutually exclusive</B></FNOTE>
<BOX name="Probability axioms">
Let <M>\Omega</M> denote the sample space. Let <M>\ev</M>  denote the set of all events. Then 
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
<FNOTE>You'll often see this sentence: 
<Q>"<M>(\Omega,\ev,P)</M> is a
<B>probability space</B>".</Q>
 This is a shorthand for:
<UL><LI> <M>\Omega</M>
is a nonempty set (sample space),</LI> 
<LI><M>\ev</M> is the collection
of all events,</LI>
<LI><M>P:\ev\to\rr</M> is a probability (i.e., a
function satisfying the three probability axioms).</LI></UL></FNOTE>
Notice the last axiom. Here the sum may involve infinitely many
terms. Such a sum is called an infinite series. You'll learn
about them in details in your analysis course. But for now you
may quickly read this
<LINK to="series.html">crash course on infinite series</LINK>.
<P/>

It is a remarkable fact that whatever other common sense condition one has been able to think of so far
actually follows as a consequence of these! Also, you cannot drop
any of these requirements, in the sense that no two of these
imply the other. Can you show this?


<P/>


It is an interesting exercise to derive various common sense
conditions from these axioms. Here is one.

<EXM>
If <M>A\seq B</M> then show that <M>P(A)\leq P(B).</M>
<SOLN/>
Split <M>B</M> as <M>B=A\cup (A^c\cap B).</M>
<CIMG web="ax1.png"/>
 The two events in RHS  are
disjoint. So by Axiom 3 we have
<D>
P(B) = P(A) + P(A^c\cap B).
</D>
The second probability in the RHS is <M>\geq 0</M> (by Axiom
1). So done.
</EXM>

Try your hand at these:

<EXR>
Show <M>P(A^c) = 1-P(A).</M>
</EXR>

<EXR>Show <M>P(\phi)=0.</M></EXR>

<EXR>If <M>A_1\seq A_2\seq A_3,</M>  then show that <M>P(A_1\cup A_1\cup A_3) = P(A_1)+P(A_2\cap A_1^c)+P(A_3\cap A_2^c).</M></EXR>

<EXR>
Show <M>P(A\cup B) = P(A)+P(B)-P(A\cap B).</M>
</EXR>

Next we shall prove some common sense properties that will require more effort.

<HEAD3>Continuity of probability function</HEAD3>
We know that if <M>f(x)</M>  is a continuous function and <M>x_n\to a</M>  then <M>f(x_n)\to f(a).</M>  Any probability function
 has a similar property.

<DEFN name="Increasing limit">
Let <M>A_1,A_2,...</M> be a sequence of events. Let <M>A</M> be
any event. We say that <M>A_n</M>'s increase to <M>A</M> (and
write <M>A_n\nearrow A</M>) if 
<D>A_1\seq A_2\seq A_3\seq\cdots</D>
and 
<D>A = \cup_n A_n.</D>
</DEFN>

<DEFN name="Decreasing limit">
Let <M>A_1,A_2,...</M> be a sequence of events. Let <M>A</M> be
any event. We say that <M>A_n</M>'s decrease to <M>A</M> (and
write <M>A_n\searrow A</M>) if 
<D>A_1\supseteq A_2\supseteq A_3\supseteq \cdots</D>
and 
<D>A = \cap_n A_n.</D>
</DEFN>

<THM>
If <M>A_n\nearrow A</M> or <M>A_n\searrow A</M> then <M>P(A_n)\to P(A).</M> 
</THM>
<PF>
Let's do the <M>A_n\nearrow A</M> case first. 
<P/>
Define <M>B_1=A_1</M> and for <M>n\geq 2</M> let <M>B_n
=A_n\setminus A_{n-1}.</M> 
<CIMG web="rings.png"/>
Then <M>B_1,B_2,B_3,...</M> are all disjoint. <HIDE lab="cwh"><MSG>(Why? Don't just say
 "obvious!". Write a one line proof.)</MSG>
<HIDDEN>Take any <M>i < j.</M>  Then <M>B_i\seq A_i\seq A_j.</M>  But <M>B_j\seq A_i^c.</M>  So <M>B_i\cap B_j=\phi.</M></HIDDEN>
</HIDE> 
Also, for <M>n\in\nn,</M> we have <M>A_n = B_1\cup\cdots\cup B_n.</M>
<P/>
So <M>A = B_1\cup B_2\cup\cdots.</M><HIDE lab="wh2"><MSG>(Why?)</MSG>
<HIDDEN>
If <M>x\in A</M>  then <M>x\in A_n</M>  for some <M>n\in\nn.</M>  Let <M>n_0</M>  be the least <M>n\in\nn</M>  for which
 <M>x\in A_{n_0}.</M>  If <M>n_0=1,</M>  then <M>x\in A_1 = B_1.</M>  If <M>n_0>1,</M>  then <M>x\in A_{n_0}\setminus A_{n_0-1} = B_{n_0}.</M>
<P/>
Hence <M>A\seq \cup B_n.</M>
<P/>
Conversely, let <M>B_n\seq A_n.</M> 

So <M>\cup B_n \seq\cup_n A_n =  A.</M>

Combining, <M>\cup B_n = A.</M>
</HIDDEN>
</HIDE>
<P/>
Hence, by the third axiom, <M>P(A) = \sum_1^\infty P(B_i) =
\lim_n \sum_1^n P(B_i) = \lim_n P(A_n),</M> as required.
<P/>
<HIDE lab="cont"><MSG>The <M>A_n\searrow A</M> case follows on taking complements. 
</MSG><HIDDEN>
If <M>A_n\searrow A</M>, then <M>A_n^c\nearrow A^c.</M>
<P/>
Hence, by what we have proved, <M>P(A_n^c)\to P(A^c),</M>
<P/>
or <M>1-P(A_n)\to 1-P(A),</M> or <M>P(A_n)\to P(A),</M> as required.
</HIDDEN></HIDE>

</PF>

<EXR><B>(A puzzle)</B>  You are approached by a gambler at a casino. "Hmm, youngster", he remarks
 as he looks you up and down, "you seem to be new here. Let me offer you some money." He comes
 closer, sits beside you, and continues in a friendly voice, "Here I have a die, a fair one. You
 shall roll it again and again. After each roll, we shall do a little transaction like this: if the die shows six,
 you  pay me some positive  amount, say <M>t.</M> But if it shows
 any other number I shall pay you ten times that amount. Does that sound like a good game to you?"

 Being freshly admitted to ISI, you are of course proud of your probability skills, and reply
 "Yes". 

"That's very good for you, very good indeed", exclaims the man in glee, "but it is not
 good for <I>me</I>, you see. I just made the offer because I took a liking to you. I hope that you would
 keep two requests in return." 

You get cautious, but agree to hear them anyway. 

"The first request
 is that <I>I</I> shall dictate the value of <M>t</M>  before each roll". Noticing a cloud of worry upon your face, he adds,
 "Don't worry, <M>t </M> will always be
 positive, and I shall fix the amount <I>before</I>  the roll." 

You see no harm in that, and ask him to proceed.

 "The second favour that I ask for is to call it quits whenever I like. That means I shall decide when the game
 will stop.  It is only the barest protection for me, you see. I shall soon become bankrupt, and then
 I at least need to have my right to go back home! Surely you would not deny me <I>that</I> !" 

You find the entire offer  reasonable enough, and so
accept it.

Have you done a wise thing? [Hint: the die is indeed fair, and there is no word play. It is a pure mathematical puzzle.]  </EXR>

<HEAD3>Inclusion-Exclusion formula</HEAD3>
Just now we have mentioned the result <M>P(A\cup B) = P(A)+P(B)-P(A\cap B).</M>  
We can think of this like 
<Q><M>P(A)+P(B)</M>  overestimates <M>P(A\cup B)</M>  because the <M>P(A\cap B)</M>  part is included
 twice. So we need to exclude it once.</Q>
 This idea of inclusion and exclusion works for any finite number of events. 

<THM name="Inclusion-Exclusion formula">
Let <M>A_1,...,A_n</M> be any <M>n</M>
events. Let <M>T</M> denote the set of all subsets of <M>\{1,...,n\}.</M> Then 
<D>P(A_1\cup \cdots \cup A_n) = \sum_{k=1}^n [*[(-1)^{k+1} \sum_{\alpha\in T,|\alpha|=k} P(A_\alpha)]*],</D>
where for any <M>\alpha\seq T</M> we define 
<D>A_\alpha = \cap_{i\in \alpha} A_i.</D>
</THM>
<PF>
The notation is a bit complicated. Let's understand it first with the <M>n=3</M> case. 
Here the first term of the outer sum consists of the sum of all <M>A_\alpha</M>  where <M>\alpha\in T</M>  
and <M>|\alpha|=1</M>  (i.e., all singleton  subsets of <M>\{1,2,3\}</M>). 
This sum is simply 
<D>P(A_1)+P(A_2)+P(A_3).</D> 
 Similarly, the next term consists of 
all <M>A_\alpha,</M>  where <M>\alpha</M>  is a doubleton subset of <M>\{1,2,3\}.</M>  Remember that 
<M>A_{\{1,2\}} = A_1\cap A_2</M>  and so on. So the second term (for <M>k=2</M>) becomes 
<D>-[P(A_1\cap A_2)+P(A_2\cap A_3)+P(A_1\cap A_3)].</D> 
 The third term (for <M>k=3</M>) similarly is 
<M>P(A_1\cap A_2\cap A_3).</M>  So the entire sum looks like 
<D>P(A_1\cup A_2\cup A_3) = [P(A_1)+P(A_2)+P(A_3)]-[P(A_1\cap A_2)+P(A_2\cap A_3)+P(A_1\cap A_3)]+P(A_1\cap A_2\cap A_3).</D>
 The Venn diagram shows why this formula is correct. But a Venn diagram cannot be 
considered as a proof, as it shows only one possible case. However, a Venn diagram does indicate 
how to construct a general proof.
Note that <M>A_1\cup A_2\cup A_3</M> is made of certain disjoint
events:
<CIMG web="ie1.png">Cells</CIMG>
We have coloured these using blue, green and red. Blue cells
consist of points belonging to exactly one <M>A_i.</M> For
example, <M>B_1</M> is the set of points that belong only
to <M>A_1.</M> The green
cells consist of points belonging to exactly two <M>A_i</M>'s,
and so on. So 
<D>A_1 =  B_1\cup B_{12}\cup B_{13} \cup B_{123},</D>
and similarly for <M>A_2,</M> and <M>A_3.</M> Note the pattern:
all the <M>B's</M> with <M>1</M> somewhere in the subscript has
occurred in the RHS. Since the events in the RHS are
disjoint, so we have 
<D>P(A_1) =  P(B_1)+P(B_{12})+P(B_{13})+P(B_{123}).</D>
Now, the first stage (inclusion) is
<MULTILINE>
P(A_1)+P(A_2)+P(A_3) 
& = & [P(B_1)+P(B_{12})+P(B_{13})+P(B_{123})]\\
& & +[P(B_2)+P(B_{12})+P(B_{23})+P(B_{123})]\\
& & +[P(B_3)+P(B_{13})+P(B_{23})+P(B_{123})]
</MULTILINE>

Note that here each <M>B</M> with a single subscript occurs once,
each <M>B</M> with two subscripts occur twice, and so on. This 
is of course natural, since for example, <M>B_{12}</M> occurs once as
part of <M>A_1</M> and then again as part of <M>A_2.</M>
<P/>
Next, we have 
<D>A_{12} =  B_{12}\cup  B_{123}.</D>
Here all the <M>B</M>'s with <M>12</M> in the subscript occur in
the RHS. Again, since the <M>B</M>'s are all disjoint, 
<D>
P(A_{12}) =  P(B_{12})+P(B_{123}).
</D>
Similarly for <M>A_{23}</M> and <M>A_{13}.</M> Using these, 
the second stage (exclusion) is 
<MULTILINE>
P(A_{12})+P(A_{23})+P(A_{13}) 
& = & [P(B_{12})+P(B_{123})]\\
& & +[P(B_{23})+P(B_{123})]\\
& & +[P(B_{13})+P(B_{123})]
</MULTILINE>
Note that no <M>B</M> with a single subscript occurs at
all. The <M>B</M>'s with two subscripts occur once each, while
the <M>B</M> with three subscripts occur thrice. Do you see the
pattern? Each <M>B</M> is like <M>B_\beta,</M> where <M>\beta</M>
is a nonempty subset of <M>\{1,2,3\}.</M> Similarly, each <M>A</M> is
like <M>A_\alpha,</M> where <M>\alpha </M> is also a nonempty
subset of <M>\{1,2,3\}.</M> Now <M>B_\beta</M>  occurs as a part
of <M>A_\alpha</M> if and only if <M>\alpha\seq \beta.</M>
So the number of times we see <M>B_{123}</M> in the RHS is same
as the number of subsets of size 2 of <M>\{1,2,3\},</M> which
is <M>\binom{3}{2}=3.</M> The same technique will also explain
why <M>B_{23},</M> for example, occurs only once: the number of
subsets of size 2 of <M>\{2,3\}</M> is <M>\binom{2}{2}=1.</M>
In fact, the same approach also explains the absence
of <M>B</M>'s with single indices. Each single index <M>B</M>
occurs <M>\binom{1}{2}=0</M> times!
<P/>
The third stage (inclusion) is similar, though
simpler. Here <M>A_{123} = B_{123},</M> and so <M>P(A_{123}) =
P(B_{123}).</M> Our basic pattern holds here also: The
3-index <M>B</M> occurs <M>\binom33=1</M>
time. The <M>2</M>-index <M>B</M>'s occur <M>\binom23=0</M> time,
and the 1-index <M>B</M>'s occur <M>\binom13=0</M> time.
<P/>
The following table gives a summary:
<TABLE>
<TR><TD rowspan="2">No. of indices
of <M>B</M></TD><TD colspan="3">Considered how many times in</TD><TD>Total</TD></TR>
<TR>
<TD>Stage 1 (incl)</TD>
<TD>Stage 2 (excl)</TD>
<TD>Stage 3 (incl)</TD>
</TR>
<TR><TD>1</TD><TD><M>\binom11</M></TD><TD><M>\binom12</M></TD><TD><M>\binom13</M></TD><TD>1-0+0=1</TD></TR>
<TR><TD>2</TD><TD><M>\binom21</M></TD><TD><M>\binom22</M></TD><TD><M>\binom23</M></TD><TD>2-1+0=1</TD></TR>
<TR><TD>3</TD><TD><M>\binom31</M></TD><TD><M>\binom32</M></TD><TD><M>\binom33</M></TD><TD>3-3+1=1</TD></TR>
</TABLE>
Now we head for the general case for any given <M>n.</M> 
<P/>
For any <M>\alpha\in T</M> define
<Q>
<M>B_\alpha=</M> the set of all those points that belong to <M>A_i</M> iff <M>i\in \alpha.</M>
</Q>
Clearly, by definition, <M>B_\alpha</M>'s are all disjoint and 
<D>A_1\cup\cdots\cup A_n = \cup_{\alpha\in T} B_\alpha.</D>
Now observe that for any <M>\alpha \in T</M>
<D>A_\alpha = \cup_{\beta\supseteq\alpha} B_\beta.</D>
So
<D>P(A_\alpha) = \sum_{\beta\supseteq\alpha} P(B_\beta).</D>
So the number of times a <M>k</M>-index <M>B</M> is considered in the <M>r</M>-th
stage is <M>\binom{k}{r}.</M> 
<HIDE lab="ie"><MSG>(Click here for more explanation.)</MSG>
<HIDDEN>
In the <M>r</M>-th stage we are considering the sum
of <M>P(A_\alpha)</M> for all <M>\alpha</M> of size <M>r.</M> 
<P/>
Fix any <M>\beta.</M>
<P/>
Then <M>P(B_\beta)</M> occurs only for those <M>P(A_\alpha)</M>'s
where <M>\alpha\seq\beta.</M> 
<P/>
Thus, <M>P(B_\beta)</M> occurs as many times as there are subsets
of <M>\beta</M> of size <M>k.</M>
<P/>
If <M>|\beta|=k,</M> then this number is <M>\binom{k}{r}.</M>
</HIDDEN>
</HIDE>
More precisely, 
<D>
\sum_{|\alpha|=r} P(A_\alpha) = \sum_{k=1}^r \binom{k}{r}
\sum_{|\beta|=k} P(B_\beta).
</D>
<P/>
Hence total number of inclusion of a <M>k</M>-index <M>B</M> is
<D>
\binom{k}{1}-\binom{k}{2}+-\cdots+(-1)^{n+1} \binom{k}{n} = 1-(1-1)^k=1,
</D>
using binomial theorem.
<P/>
Hence every <M>B</M> is included exactly once in the RHS. Thus,
<D>
P(\cup_{\alpha\in T}B_\alpha) =  RHS,
</D>
as required.
</PF>
Notice that the proof has used only the third axiom of probability. 
So if we have any function <M>P(\cdot)</M>  that satisfies the third axiom, the theorem is valid for that 
function as well. Examples of such functions include length, area, volume, mass, number of elements (for
 finite sets). In short, it is
 true for any measure of size.
<P/>
 Indeed, all functions that satisfy  axiom three are called <B>(signed) measure</B>s, and 
measure theory is the branch of mathematics that deals with them. 

 
<HEAD2>Countable sample spaces</HEAD2>
If the sample space <M>S</M> is countable (finite/infinite), say 
<D>
S = \{x_1,x_2,...\},
</D>
then take any sequence <M>p_1,p_2,...</M> of nonnegative numbers
adding up to <M>1.</M> Defining <M>P(\{x_i\})=p_i</M> completely
specifies a probability. Conversely, any probability can be
constructed like this.

<HEAD3>Equally likely cases</HEAD3>
The simplest special case is when the sample space <M>\Omega</M> is finite
(say <M>|\Omega|=n</M>) and we take <M>p_1=\cdots=p_n=[[1n]].</M>
<P/>
In this case, for any <M>A\seq \Omega</M> we have <M>P(A) =|A|/|\Omega|.</M>
<P/>
Many interesting problems fall in this category. They are
basically problems of combinatorics. 

One type of problem is
<I>occupancy problems</I>, where we have some boxes and some
balls are distributed over them following various
conditions. 

<EXM>
There are three distinct boxes and 10 distinct balls. The balls are dropped randomly among the boxes so that all possible
 configurations are equally likely. (No ball is outside a box,
 and each box can hold all the balls.) What is the probability that the first box is empty?
<SOLN/>
Each of the 10 balls has 3 possible destinations, irrespective of the other balls. So the total 
number of configurations is <M>3^{10}.</M>  So <M>|\Omega|=3^{10}.</M>
<P/>
Let <M>A</M>  be the event that the first ball remains empty. Then <M>A</M>  occurs if and only if all the balls land in
 the other 2 boxes. So <M>|A|=2^{10}.</M>  
<P/>
Since all outcomes are equally likely hence 
<D>P(A)= [[|A|][|\Omega|]] = (*([[23]])*)^{10}.</D>
</EXM>

<EXM>
Same problem as above, except that the balls are now identical. The boxes are still distinct. 
What is the answer now?
<SOLN/>
By the <LINK to="barstar.html">bar-star argument</LINK> <M>|\Omega| = \binom{12}{2}=66.</M>
<P/>
Similarly, <M>|A| = \binom{11}{1} = 11.</M>
<P/>
So the answer is <M>[[16]].</M>
</EXM>

Certain real-life scenarios may be modelled like
this. Here are a few examples from physics (no need to cram these
terms for the exams!).

<EXM>
There are <M>r</M> (identical/distinct) particles. Each particle may be in
one of <M>n</M> distinct states. We can think of the particles as
balls and the states as boxes. For example, if the states are UP
and DOWN, and there are <M>r=12</M> <I>identical</I> particles, among which 5 are
in UP state and 7 in DOWN, we can visualise this as:
<CIMG web="occ1.png"/>
If there are <M>r=3</M> <I>distinct</I> particles and the same two
states, then the picture could be like:
<CIMG web="occ2.png"/>
Physicists assume various types of probabilities on
these. 
<UL>
<LI><B>Maxwell-Boltzmann distribution:</B> The balls are
distinct. Then there are <M>n^r</M> many possible configurations (each
of the <M>r</M> balls has <M>n</M> possible destinations).
All these <M>n^r</M> configurations are assumed equally likely.
No real life particle shows this behaviour.</LI>


<LI><B>Bose-Einstein distribution:</B> The balls are
identical. So, by the <LINK to="barstar.html">bar-star argument</LINK>, we know that there
are <M>{n+r-1\choose n-1}</M> configurations possible. These are
assumed equally likely.</LI>

<LI><B>Fermi-Dirac distribution:</B> Here <M>n\geq r</M> and no
box can hold more than one ball. Balls are
identical. So <M>{n\choose r}</M> distinct configurations are
possible (since a configuration is determined completely by which
of the boxes have one ball in it). All these 
configurations are assumed equally likely.</LI>
</UL>
</EXM>

Next we discuss a type of problems that are used in statistical
quality control. 
In this connection, you should know about a few terms:
<UL><LI><B>Simple random sample (SRS):</B>  Suppose that you have a finite set (called a <TERM>population</TERM>), and you draw one
 element from it at random (giving equality probability to each). This is called simple random sampling. </LI>
<LI><B>Simple random sample without replacement(SRSWOR):</B>  Again you start with a finite population (of size <M>n</M>),
 and draw a bunch of <M>r</M>  elements from it at random (giving all the <M>\binom nr</M> 
 samples equal chance). This is called an SRSWOR. </LI>
<LI><B>Simple random sample with replacement(SRSWR):</B>  Again you start with a finite population (of size <M>n</M>),
 and draw a single elements from it using simple random sampling. You make a note of the element, and return it to the opulation.
 You repeat this <M>r</M>  times. This is called an SRSWOR. </LI>
</UL>

<EXM>An electronic component is packaged 100 per box. Each
component may be either good or defective. We want to accept a box
if and only if it has no defective component in it. Testing all
the 100 components one by one is too time consuming (and also
useless if the test is destructive). So instead we draw a simple
random sample without replacement (SRSWOR) of size 10 and reject
the box if any of these 10 turns out to be defective. Find the
probability that a box containing exactly 5 defectives will be
rejected. 
<SOLN/>
Let <M>\Omega = </M> all samples of size 10. What is its size?
Instead of writing <M>{100\choose 10}</M>, we shall follow the
steps that a typical quality control officer would take: pick
one, then pick the next, then the next and so on. This stepwise
approach is generally better 
<HIDE lab="why"><MSG>(Why?)</MSG><HIDDEN>Such formulae
make tacit assumptions about whether order is important or
not. These assumptions may not be compatible with a given
problem. Also, not all answers are expressible in terms of these formulae.</HIDDEN></HIDE>
than jumping into a <M>^nC_r</M>
or <M>^nP_r</M> formula. 

Here the first step may be done in 100 ways, the next in 99 ways,
etc all the way upto <M>100-10+1=91</M> ways. 

So <M>|\Omega| = 100\times 99\times\cdots\times 91.</M>

By the given condition,  all the outcomes are equally likely. 

Let <M>A = </M> the event that the box is rejected. 

Thus <M>A</M> is the event that the box contains 1 or more
defectives.

There are 5 possible cases here: exactly <M>i</M> defectives,
where <M>i=1,...,5.</M> These are disjoint cases. So we may try
to find the probabilities of each and add up. But we can save the
work by working with <M>A^c</M> instead. 

Here 
<M>A^c=</M> the event that the box contains no defective. Again
we shall find <M>|A^c|</M> stepwise. 

The first component may be selected in 95 ways (avoiding the 5
defectives). The next in 94 ways, etc up to the 10-th component,
which may be selected in <M>95-10+1 = 86</M> ways. 

Hence <M>|A^c| = 95\times94\times\cdots\times86.</M>

Thus, 
<D>
P(A^c) = [[|A^c|][|\Omega|]] = [[95\times94\times\cdots\times86][100\times99\times\cdots\times91]].
</D>
</EXM>

Here is one example where we shall need the inclusion-exclusion
formula.

<EXM>
10 distinct balls are dropped randomly over 3 (distinct) boxes. Each box
can hold any number of balls. What is the probability that at
least one box will remain empty?
<SOLN/>
Such "at least" problems usually mean that our event is the union
of some simpler events. Since the simpler events may not be
disjoint, we need the inclusion-exclusion formula.

Let <M>\Omega=</M> the set of all possible ways of dropping the
balls. Then <M>|\Omega| = 3^{10}.</M>

We assume that all the outcomes are equally likely.

Let <M>A_i=</M>the event that the <M>i</M>-th box remains empty,
where <M>i=1,2,3.</M> 

Then we are looking for <M>P(A_1 \cup A_2\cup A_3).</M>

By the inclusion-exclusion formula, this is the same as
<D>
P(A_1)+P(A_2)+P(A_3)-[#[P(A_1\cap A_2)+P(A_2\cap A_3)+P(A_3\cap
A_1) ]#] + P(A_1\cap A_2\cup A_3).
</D>
Since the labelling of the boxes are arbitrary, we have <M>P(A_1)
= P(A_2)=P(A_3).</M> 

Similarly, the three probabilities inside the exclusion term are
also equal to each other. Thus we are left with 
<D>
3P(A_1)-3P(A_1\cap A_2)+ P(A_1\cap A_2\cup A_3).
</D>
Now <M>|A_1| = 2^{10}</M> and <M>|A_1\cap A_2| = 1^{10}</M>
<HIDE lab="box"><MSG>(Why?)</MSG><HIDDEN>Since all the 10 balls
must now land in the third box.</HIDDEN></HIDE>.

Also <M>|A_1\cap A_2\cap A_3| = 0</M>
<HIDE lab="nobox"><MSG>(Why?)</MSG><HIDDEN>This is
impossible. If <I>all</I> the boxes remain empty,  where
have the balls gone?</HIDDEN></HIDE>.

So <M>P(A_1) = [[|A_1|][|\Omega|]] = (*([[23]])*)^{10}</M>
and <M>P(A_1\cap A_2) = [[|A_1\cap A_2|][|\Omega|]] =
(*([[13]])*)^{10}. </M>

Hence the required answer is <M>3\times [*[ (*([[23]])*)^{10}-(*([[13]])*)^{10} ]*] = [[2^{10}-1][3^9]].</M>

</EXM>

<HEAD2>Simulations</HEAD2>
Often we come across events that easily described in words, but
whose probabilities are rather hard to compute. Computer
simulation comes handy in such cases. Computer simulations help
in detecting theoretical mistakes too. 

<EXM>
A deck of 10 cards labelled 1,...,10 is shuffled thoroughly. We shall
say that the <M>i</M>-th card is <I>at home</I>, if it is in
the <M>i</M>-th position after the shuffle. Write an R code to
estimate the probability that exactly 3 cards are at home. 
<SOLN/>
<RC>
event = numeric(5000)
for(k in 1:5000) {
	x = sample(10,10)
	at.home = sum(x==(1:10))
	event[k] = (at.home==3)
}
mean(event)
</RC>
</EXM>
<HEAD2>Problems for practice</HEAD2>

<HEAD3>Sets and Venn diagrams</HEAD3>

<EXR>Let <M>E,F,G</M> be any three events. Find expressions for
the event that of <M>E,F,G</M>
<OL>
<LI>only <M>F</M> occurs</LI>
<LI>both <M>E</M> and <M>F</M> but not <M>G</M> occur</LI>
<LI>at least one event occurs</LI>
<LI>at least two events occur</LI>
<LI>all three events occur</LI>
<LI>none occurs</LI>
<LI>at most one occurs</LI>
<LI>at most two occur</LI>
<LI>exactly two occur</LI>
<LI>exactly one occurs.</LI>
</OL>
<ANS>
<OL><LI><M>E^c\cap F\cap G^c.</M></LI>
<LI><M>E\cap F\cap G^c.</M></LI>
<LI><M>E\cup F\cup G.</M></LI>
<LI><M>E\cap F\cup F\cap G\cup E\cap G.</M></LI>
<LI><M>E\cap F\cap G.</M></LI>
<LI><M>E^c\cap F^c\cap G^c.</M></LI>
<LI><M>(E\cap F^c\cap G^c)\cup ((E\cap F^c\cap G^c)\cup (E\cap
F^c\cap G^c)\cup (E^c\cap F^c\cap G^c).</M> (Can you come up
with something simpler?)</LI>
<LI><M>(E\cap F\cap G)^c.</M></LI>
<LI><M>(E\cap F\cap G^c)\cup (E\cap F^c\cap G)\cup (E^c\cap F\cap G).</M></LI>
<LI><M>(E\cap F^c\cap G^c)\cup (E^c\cap F\cap G^c)\cup (E^c\cap
F^c\cap G).</M></LI></OL>
</ANS>
</EXR>

<EXR>Show that <M>E\cap (F\cup G) = (E\cap F)\cup (E\cap
G).</M><ANS>Let <M>x\in E\cap (F\cup G).</M> To show <M>x\in (E\cap
F)</M> or <M>x\in (E\cap G).</M>


Let <M>x\not\in (E\cap F).</M>

Shall show that <M>x\in E\cap G.</M>

Since <M>x\in E\cap (F\cup G),</M> hence <M>x\in E.</M>

So <M>x\not\in F.</M> 

Since <M>x\in F\cup G,</M> hence <M>x\in G.</M>

So <M>x\in E\cap G,</M> as required.

Conversely, let <M>x\in (E\cap F)\cup (E\cap G).</M>

Shall show that <M>x\in E\cap (F\cup G).</M>

Now <M>E\cap F\seq E\cap (F\cup G)</M> and <M>E\cap G\seq E\cap
(F\cup G).</M>

Hence <M>x\in (E\cap F\cup G),</M> as required.
</ANS></EXR>

<EXR>Show that <M>(A\cup B)^c = A^c \cap B^c.</M><ANS>Let <M>x\in (A\cup B)^c.</M> Shall show <M>x\in A^c\cup
B^c</M>, i.e., <M>x\not\in A</M> and <M>x\not\in B.</M>

Then <M>x</M> is not in <M>A\cup B.</M> So <M>x\not\in A,</M>
i.e., <M>x\in A^c.</M> 

Similarly, <M>x\in B^c.</M> Hence <M>x\in A^c\cap B^c.</M>

Conversely, let <M>x\in A^c\cap B^c.</M>

Then <M>x</M> is neither in <M>A</M> nor in <M>B.</M> Hence <M>x\in (A\cup B)^c.</M>
</ANS></EXR>

<EXR>State (with proof/counterexample) which of the following statements is
correct/incorrect:
<OL>
<LI><M>(A\cup B)\setminus C = A\cup (B\setminus C).</M></LI>
<LI><M>A\cap B\cap C = A\cap  (C\cup B).</M></LI>
<LI><M>A\cup B\cup C = A\cup (B\setminus (A\cap B))\cup
(C\setminus (A\cap C)).</M></LI>
<LI><M>(A\cap B)\cup (B\cap C) \cup (C\cap A)\seq A\cup B\cup C.</M></LI>
</OL>
<ANS><OL>
<LI>False: Venn diagram for the lhs is
<CIMG web="e1.png"/>. Clearly it is not a superset of <M>A.</M>
A counterexample is <M>A=C\{1\}</M> and <M>B=\{2\}.</M></LI>
<LI>False: Venn diagram for the rhs is
<CIMG web="e2.png"/>. Clearly it is not <M>A\cap
B\cap C.</M> A counterexample is <M>A=\{1\},C=\{1\},B=\phi.</M>
</LI>
<LI>True. Venn diagram for the rhs is <CIMG web="e3.png"/>. The
red set is indeed <M>A\cup B\cup C.</M> </LI>
<LI>True: Venn diagram for the lhs is <CIMG web="e4.png"/>. The
red set is indeed <M>A\cup B\cup C.</M></LI>
</OL>
</ANS></EXR>

<HEAD3>Axioms</HEAD3>

<EXR>Take <M>\Omega = \{0,1,2\}.</M> Obtain
functions <M>P_i:\Omega\to\rr</M> for <M>i=1,2,3</M> such
that <M>P_i</M> violates axiom <M>i</M>, but satisfies the other
two.<ANS>Here is <M>P_1:</M>
<M>P_1(\phi)=0</M>,
<M>P_1(\{0\})=-1</M>,
<M>P_1(\{1\})=1</M>,
<M>P_1(\{2\})=1</M>,
<M>P_1(\{0,1\})=0</M>,
<M>P_1(\{1,2\})=2</M>,
<M>P_1(\{0,2\})=0</M>,
<M>P_1(\{0,1,2\})=1.</M>
Here is <M>P_2:</M>
<M>P_2(\phi)=0</M>,
<M>P_2(\{0\})=1</M>,
<M>P_2(\{1\})=1</M>,
<M>P_2(\{2\})=1</M>,
<M>P_2(\{0,1\})=2</M>,
<M>P_2(\{1,2\})=2</M>,
<M>P_2(\{0,2\})=2</M>,
<M>P_2(\{0,1,2\})=3.</M>
Here is <M>P_3:</M>
<M>P_3(\phi)=0</M>,
<M>P_3(\{0\})=1</M>,
<M>P_3(\{1\})=1</M>,
<M>P_3(\{2\})=1</M>,
<M>P_3(\{0,1\})=2</M>,
<M>P_3(\{1,2\})=2</M>,
<M>P_3(\{0,2\})=2</M>,
<M>P_3(\{0,1,2\})=1.</M>
</ANS></EXR>

<EXR>If <M>P(A)=0.9</M> and <M>P(B)=0.8,</M> show that <M>P(A\cap
B)\geq 0.7.</M> In general, show that <M>P(A\cap B)\geq
P(A)+P(B)-1.</M> This is known as Bonferroni's
inequality.
<ANS><M>P(A\cup B) \leq 1.</M> Hence <M>P(A)+P(B)-P(A\cap B)\leq
1.</M> So <M>P(A)+P(B)-1\geq P(A\cap B).</M> Hence <M>P(A\cap B)\geq 0.9+0.8-1 = 0.7.</M></ANS></EXR>

<EXR>Show that 
<D>
P(*( \cup_1^n A_i)*) \leq \sum_1^n P(A_i).
</D>
<ANS>(Induction on <M>n</M>) If <M>n=1,</M> then both sides are
the same. 

If <M>n=2,</M> then <M>P(A_1\cup A_2) = P(A_1\cup (A_1^c\cap
A_2)) = P(A_1)+P(A_1^c\cap A_2)\leq P(A_1)+P(A_2),</M> since <M>A_1^c\cap A_2\seq A_2.</M>

We assume the result for <M>n=1,...,m-1</M> for
some <M>m\geq3.</M> Shall show for <M>n=m.</M>

<M>P(\cup_1^m A_i) = P(\underbrace{\cup_1^{m-1} A_i}_{B_1} \cup
\underbrace{A_m}_{B_2})\leq P(B_1)+P(B_2)</M> (by the <M>n=2</M>
case).

Now <M>P(B_1) = P(\cup_1^{m-1} A_i) \leq \sum_1^{m-1} P(A_i).</M> 

Also <M>P(B_2) = P(A_m).</M>

Hence the result.
</ANS></EXR>

<HEAD3>Equally likely</HEAD3>

<EXR>An SRSWOR of size 2 is drawn from <M>\{1,2,3,4,5\}.</M> What
is the probability that (a) the first selected digit is odd?
(b) the second selected digit is odd? (c) both are odd? (d) at
least one is odd?
<ANS>There are <M>5\times4</M> possible outcomes. (a)
Exactly <M>3\times4</M> outcomes have the first digit odd. So the
probability is <M>[[35]].</M> (b) 
Exactly <M>3\times4</M> outcomes have the second digit odd. So the
probability is again <M>[[35]].</M> (c) Exactly <M>3\times2</M>
outcomes have both the digits odd. So the probability
is <M>[[3][10]].</M> (d) By inclusion-exclusion principle the
required probability is <M>[[35]]+[[35]]-[[3][10]] = [[9][10]].</M>  
</ANS></EXR>

<EXR>A fair coin is tossed 6 times. What is the probability that
the first head occurs (a) at the third toss? (b) not before the
third toss?<ANS>Total number of outcomes is <M>2^6.</M> All are equally
likely. (a) Number of favorable outcomes is <M>2^3.</M> So the
probability is <M>2^{-3}.</M> (b) Similarly, the probability that
the first head occurs at the <M>i</M>-th toss is <M>2^{i-6}.</M>
So the required probability is <M>1-2^{-5}-2^{-4}.</M>
</ANS></EXR>

<EXR>10 distinct balls are dropped randomly in 3 distinct
boxes. What is the probability that none of the boxes remain
empty?<ANS>Each ball can drop in any box. So <M>3^{10}</M> outcomes in
all. All equally likely. The probability that box <M>i</M> is empty
is <M>(*([[23]])*)^{10}</M>  for <M>i=1,2,3.</M> The probability that
boxes <M>i\neq j</M> are both empty is <M>3^{-10}.</M> So, by
inclusion-exclusion principle, the probability that at least one
box is empty is 
<D>
3\times (*([[23]])*)^{10} - 3\times (*([[13]])*)^{10} + 0\approx 0.95
</D>
the last 0 is because all the boxes cannot remain empty.

</ANS></EXR>

<EXR>Two fair dice are tossed, what is the probability that the
sum is <M>i</M> for <M>i=2,3,...,12?</M><ANS><TABLE>
<TR><TH><M>i</M></TH><TH>Number of favorable
outcomes</TH><TH>Probability</TH></TR>
<TR><TH>2</TH><TH>1</TH><TH><M>[[1][36]]</M></TH></TR>
<TR><TH>3</TH><TH>2</TH><TH><M>[[2][36]]</M></TH></TR>
<TR><TH>4</TH><TH>3</TH><TH><M>[[3][36]]</M></TH></TR>
<TR><TH>5</TH><TH>4</TH><TH><M>[[4][36]]</M></TH></TR>
<TR><TH>6</TH><TH>5</TH><TH><M>[[5][36]]</M></TH></TR>
<TR><TH>7</TH><TH>6</TH><TH><M>[[6][36]]</M></TH></TR>
<TR><TH>8</TH><TH>5</TH><TH><M>[[5][36]]</M></TH></TR>
<TR><TH>9</TH><TH>4</TH><TH><M>[[4][36]]</M></TH></TR>
<TR><TH>10</TH><TH>3</TH><TH><M>[[3][36]]</M></TH></TR>
<TR><TH>11</TH><TH>2</TH><TH><M>[[2][36]]</M></TH></TR>
<TR><TH>12</TH><TH>1</TH><TH><M>[[1][36]]</M></TH></TR>
</TABLE>
</ANS></EXR>

<EXR>Two cards are randomly selected from a deck of 52 playing
cards. What is the probability that they are of the same
denomination?<ANS>Total number of outcomes is <M>52\times51.</M> All equally
likely. To compute number of favorable outcomes: pick the first
card (52 ways), pick the second card with same denomination (3
ways). So number of favourable outcomes is <M>52\times 3.</M>
Hence the required probability is <M>[[3][51]] = [[1][17]].</M>
</ANS></EXR>

<EXR>10 light bulbs are shining in a row. If a lightning strikes, then
some (or all or none) of the light bulbs may go out (all possibilities
being equally likely). What is the chance that after a
lightning  at least two consecutive light bulbs are still
shining.<ANS>Each light may be either on or off (not both). So total
number of outcomes is <M>2^{10}.</M> To count number of
favourable outcomes we start by counting the complement. If no
two consecutive bulbs are shining, then the number of
shining bulbs must be at most 5. Let <M>N_i = </M> number of
ways exactly <M>i</M> shining bulbs can be placed
non-consecutively. Then 
<M>N_i = {11-i\choose i}</M>. So the required probability is <M>1-[[N_0+\cdots+N_5][2^{10}]]</M>.
</ANS></EXR>

<EXR>We have 4 letters and their respective addressed
envelopes. If the letters are placed randomly in the envelopes,
then find the probability that exactly <M>k</M> letters are in their correct
envelopes for <M>k=1,2,3,4.</M> <ANS>Let <M>p_k = </M> probability that exactly <M>k</M> letters
are in their correct envelopes. Then <M>p_4 = [[1][4!]].</M>
Also <M>p_3 = 0,</M> since if 3 letters are in their correct
envelopes, the remaining one must also be in its correct
envelope.

For <M>k=2,</M> pick the two letters to be correctly placed
(<M>{5\choose 2} = 10</M> ways), then swap the other two (1
way). So <M>p_2 = [[10][24]] = [[5][12]].</M> 

For <M>k=1</M>, the remaining three must all be misplaced. So we
need a cyclic permutation. Since there are only 2 such, <M>p_1 =
[[4\times2][24]] = [[13]].</M> 
</ANS></EXR>

<EXR>The numbers <M>1,2,...,n</M> are arranged in random
order. Find the probability that the digits <M>1,2,3</M> appear
as neighbours in this order.<ANS>Treat <M>1,2,3</M> as a
bunch. So the probability is <M>[[3!\times(n-2)!][n!]] =
[[6][n(n-1)]].</M></ANS></EXR>



<EXR><M>A</M> throws six dice and wins if he scores at least one
ace. <M>B</M> throws twelve dice and wins if he scores at least
two aces. Who has the greater probability to win?<ANS>
<M>P(A) = 1-[[5^6][6^6]] = 0.67.</M> 

<M>P(B) = 1 - P(no ace) -
P(exactly one ace).</M> 

Now <M>P(no ace) = (*([[56]])*)^{12}.</M> <M>P(exactly one ace) =
[[12\times5^{11}][6^{12}]].</M>

So<M>P(B) \approx 0.62.</M> 

<M>P(A) > P(B).</M></ANS></EXR>


<EXR>Find the probability that among three random digits there
appear exactly 1,2 or 3 different digits. Also do the same for
four random digits.<ANS>Let <M>p_k = </M> the probability that there are
exactly <M>k</M> different digits among 3 random digits. Total
number of outcomes is <M>10^3.</M> For <M>k=1,</M> the number of
favourable outcomes is 10. So <M>p_1 = [[1][100]].</M>

For <M>k=2,</M> pick the digit to be repeated  (10 ways),
pick the digit to be chosen once (9 ways), pick the position of
the unique digit (3 ways). So <M>p_2 = [[10\times9\times3][10^3]]
= [[27][100]].</M>  

For <M>k=3</M>, pick the first digit (10 ways), pick the next (9
ways), pick the third (8 ways). So <M>p_3 = [[72][100]].</M> It
could be also found as <M>1-p_1-p_2.</M>

Let <M>q_k = </M> the probability of exactly <M>k</M> distinct
digits for <M>4</M> digits. The same technique works here
also. But now <M>q_3\neq 1-q_1-q_2.</M></ANS></EXR>

<EXR>Find, for <M>r=1,2,3,...</M>, the probability <M>p_r</M> that in a sample of <M>r</M>
random digits no two are equal.<ANS>Clearly, <M>p_1 = 1</M> and <M>p_r = 0</M> for <M>r>10.</M>
For <M>r\in\{2,...,9\},</M> the total number of outcomes
is <M>10^r</M> and number of favourable outcomes
is <M>(10)_r.</M> So <M>p_r = [[(10)_r][10^r]].</M></ANS></EXR>

<EXR>If <M>n</M> balls are placed at random among <M>n</M> cells,
find the probability that exactly one cell remains
empty.<ANS>Let <M>p = </M> the probability that only the first cell
remains empty.
The final answer would be <M>np.</M> Now, for <M>k=2,...,n,</M> let <M>A_k = </M> the
event  "the first cell and the  <M>k</M>-th cell is
empty." 

Then <M>\cup_2^n A_k = </M> the event "the first cell
is empty and at least one of the remaining cells is empty." 

Let <M>A = </M> the event "the first cell is empty".

Then <M>\cup_2^n A_k \seq A </M> and the required probability is <M>P(A)-P(\cup_2^n A_k).</M>

Clearly, <M>P(A) = [[(n-1)^n][n^n]].</M> 

Also <M>P(A_k) = [[(n-2)^n][n^n]]</M> for <M>k=2,...,n.</M>

Similarly, for <M>k\neq \ell</M> we have <M>P(A_k\cap A_\ell) =
[[(n-3)^n][n^n]],</M> and so on. 

Hence, by inclusion-exclusion principle, 
<D>
P(\cup_2^n A_k) = \sum_{i=1}^{n-1} (-1)^{i-1}\times{n-1\choose i} [[(n-i-1)^n][n^n]].
</D>
So the final answer is 
<D>
[[(n-1)^n][n^n]]+\sum_{i=1}^{n-1} (-1)^i\times{n-1\choose i}
[[(n-i-1)^n][n^n]]= \sum_{i=0}^{n-1} (-1)^i\times {n-1\choose i} (*(1-[[i+1][n]])*)^n.
</D></ANS></EXR>

<EXR>A man is given <M>n</M> keys of which only one fits his
door. He tries them successively using SRSWOR until he finds the
right key. Show that the probability that he will try <M>k</M>
keys is <M>[[1n]]</M> for <M>k=1,...,n.</M><ANS>The probability that he tries <M>k</M> keys is the
probability that he picks wrong keys the first <M>k-1</M> times,
and then picks the right key. The total number of outcomes
is <M>(n)_k.</M> The total number of favourable outcomes
is <M>(n-1)_{k-1}.</M> So the required probability is 
<D>
[[(n-1)(n-2)\cdots (n-1-k+1+1)][n(n-1)(n-2)\cdots (n-k+1)]] = [[1n]],
</D>
as required.</ANS></EXR>

<EXR>Suppose that each of <M>n</M> sticks is broken into one long
and one short part. The resulting <M>2n</M> pieces are combined
pairwise in a random fashion. What is the probability that the
original pairings are restored? What is the probability that each
long piece gets a short partner?<ANS>
Let the long pieces be <M>A_1,...,A_n</M> and the
corresponding short pieces be <M>A_{n+1},...,A_{2n}.</M> Then the total
number of pairings may be found like this: Let <M>A =
\{1,...,2n\}</M> be the set of available pieces. We pick the
smallest element (1 way), and pick its mate (<M>|A|-1</M>
ways). Remove both these from <M>A.</M> Continue for <M>n</M>
steps like this. The total number of pairings is 
<D>
(2n-1)(2n-3)\times\cdot\times3\times1 = [[(2n)!][2^n n!]].
</D>
Only one of these pairings gives the original ordering. This has
probability <M>[[2^n n!][(2n)!]].</M>

The number of favourable outcomes in the second part
is <M>n!.</M> So the probability is <M>[[2^n (n!)^2][(2n)!]] = [[2^n][{2n\choose n}]].</M>
</ANS></EXR>

<EXR>A box contains 90 good and 10 defective screws. If 10 screws
are selected at random (SRSWOR), then find the probability that
none of these are defective.<ANS>
Total number of outcomes is <M>{100\choose 10}.</M> Number of
favourable outcomes is <M>{90\choose 10}.</M> So the required prob
is <M>[[90\times\cdots\times81][100\times\cdots\times91]].</M>
</ANS></EXR>

<EXR>From the set <M>\{a,b,c,d,e\}</M> we draw an SRSWR of size
25. What is the probability that the sample will have 5
occurrences of each of the letters?<ANS>
Total number of possible outcomes is <M>5^{25}</M>, all
equally likely. The
total number of favourable outcomes
is <M>[[25!][5!5!5!5!5!]].</M></ANS></EXR>

<EXR>If <M>n</M> men (including <M>A</M> and <M>B</M>) stand in a
row in random order, what is the probability that there will be
exactly <M>r</M> men between <M>A</M> and <M>B?</M><ANS>
Total number of possible outcomes is <M>n!.</M> To find
total number of favourable outcomes make the other <M>n-2</M>
men stand in a row (<M>(n-2)!</M> ways), take a stretch of
length <M>r</M> (<M>n-r+1</M> ways), place <M>A,B</M> at two
ends (2 ways). So the required probability
is <M>[[(n-2)!\times(n-r+1)\times 2][n!]] =
[[2(n-r+1)][n(n-1)]].</M> 
</ANS></EXR>

<EXR>What is the probability that two throws with three dice each
will show the same configuration if (a) the dice are distinct
(e.g., <M>(2,3,6)</M> is not the same as <M>(3,2,6)</M>).
(b) the dice are identical (e.g., <M>\{2,3,6\}</M> is the same
as <M>\{3,2,6\}</M>)?<ANS>Distinct dice case: Total number of outcomes is <M>6^6,</M>
all equally likely. Number of favourable outcomes is <M>6^3</M>
(only free to choose the results of the first throw). So
probability is <M>6^{-3}.</M>

 Identical dice case: Total number of outcomes is <M>6^6.</M>
 To count number of favourable outcomes: case 1: All distinct
 (<M>{6\choose 3}\times 3!\times 3!= 720</M> ways). Case 2: One occurs exactly twice:
 (<M>6\times 5\times 3\times 3=270</M> ways). Case 3: All same (6
 ways).

So total number of favourable outcomes is <M>996.</M> Here the
probability is approximately <M>0.02.</M> 

<R>
res = c()
for(i in 1:1000) {
first = sample(6,3,rep=T)
second = sample(6,3,rep=T)
res = c(res,all(sort(first)==sort(second)))
}
mean(res)
</R>
</ANS></EXR>

<EXR>There are <M>n</M> persons in a room. Assuming that each
person is equally likely to be born in any day of the year (1
year=365 days), find the probability that at least two persons
share the same birthday. <ANS>Total number of outcomes is <M>365^n.</M> The number of
outcomes where no two share the same birthday
is <M>(365)_n.</M> So the required probability is 
<M>1-[[(365)_n][365^n]].</M></ANS></EXR>

<EXR>A cereal company is giving a free ball with every box. The ball is either red or green or
 blue or yellow, each being equally likely. A buyer has bought <M>10</M>  boxes. What is the probability that (s)he has a
at least one ball of each colour?
<ANS>Let <M>A_1, A_2, A_3, A_4</M>  denote the events that (s)he has at least one
 red/green/blue/yellow ball, respectively.  Then you need to find <M>P(A_1\cup A_2\cup A_3\cup
 A_4)</M>. Use inclusion-exclusion.  </ANS></EXR>
<HEAD3>Harder</HEAD3>
<EXR>A town has <M>n+1</M>  people: <M>p_1,...,p_{n+1}.</M> 
A news is spreading as rumour in this town as follows. Initially,
only <M>p_1</M>  knows the news. He communicates the news to
 one of the
remaining <M>n</M> people randomly. This person again
communicates the news to one of the other <M>n</M> persons (may
be <M>p_1</M> again) randomly, and so on. Find the probability that the
rumour spreads <M>r</M> times without returning to <M>p_1.</M>
Also, find the probability that the rumour spreads <M>r</M> times
without being repeated to any person.
 <ANS>Total number of outcomes is <M>n^r.</M> In the first part
the total number of favourable outcomes is <M>n(n-1)^{r-1}.</M> So
the probability is <M>(*(1-[[1n]])*)^{r-1}.</M> In the second
case the number of favourable outcomes
is <M>n(n-1)(n-2)\cdots(n-r+1).</M> So the probability is
[[(n)_r][n^r]].</ANS></EXR>


<EXR><CIMG web="most1.png"/><ANS>Let the drawer have <M>r</M> red and <M>b</M> black
socks. Then we have

<D>
[[r(r-1)][(r+b)(r+b-1)]]=[[12]].
</D>
So <M>r+b\equiv 0,1 (\mod 4).</M>

The least case is when <M>r=3</M> and <M>b=1.</M> For
even <M>b</M> it is <M>r=15,</M> <M>b=6.</M></ANS></EXR>

<EXR><CIMG web="most8.png"/><ANS><M>[[13!][52!]]\approx 10^{-60}.</M>
</ANS></EXR>

<EXR><CIMG web="most19.png"/><ANS>First experiment:<M>1-([[56]])^6\approx 0.67.</M>

Second experiment:<M>1-(*([[56]])*)^{12} -
12\times[[16]](*([[56]])*)^{11} \approx 0.62.</M>

Third experiment:<M>1-(*([[56]])*)^{18} -
18\times[[16]](*([[56]])*)^{17}- {18\choose 2}
(*([[16]])*)^2(*([[56]])*)^{16} \approx 0.37.</M>
</ANS></EXR>

<EXR><CIMG web="most27.png"/><ANS>(a) <M>(*(1-[[1][100]])*)^{100}\approx [[1e]]\approx
0.37.</M>

(b) <M>(*(1-[[1n]])*)^n.</M></ANS></EXR>

<EXR><CIMG web="most28.png"/><ANS><M>{n\choose r}(*([[mn]])*)^r(*(1-[[mn]])*)^{n-r}.</M></ANS></EXR>
<EXR><CIMG web="most31.png"/><ANS><M>1-[[(365)_n][365^n]]>[[12]].</M> Here are some values:
<TABLE>
<TR><TH>20</TH><TH>21</TH><TH>22</TH><TH>23</TH><TH>24</TH></TR>
<TR><TH>0.411438</TH><TH> 0.443688</TH> <TH>0.475695</TH> <TH>0.507297</TH> <TH>0.538344</TH></TR>
</TABLE>
The answer is 23.
</ANS></EXR>

<EXR><CIMG web="most32.png"/><ANS>If I ask <M>n</M> persons, then the probability
is <M>1-(*([[364][365]])*)^n.</M> I want this to
be <M>>[[12]].</M>
So <M>(*([[364][365]])*)^n < [[12]],</M> or <M>n\geq 253.</M>
</ANS></EXR>

<EXR>Let <M>A_1,A_2,A_3</M> be three events. Let <M>p_1 = \sum
P(A_i)</M> and <M>p_2 = \sum_{i< j} P(A_i\cap A_j)</M> and <M>p_3 = P(A_1\cap A_2\cap A_3).</M>
Find (in terms of <M>p_i</M>'s) the probability that exactly one of the
events <M>A_1,A_2,A_3</M> has occurred. Generalise to <M>n</M>
events. Also find (and prove) a formula (in terms of
the <M>p_i</M>'s) for the probability that exactly <M>r</M> of
the <M>n</M> events has occurred.<ANS>Probability that exactly one event of <M>A_1,A_2,A_3</M> has
occurred is <M>p_1-2p_2+3p_3.</M> For <M>n</M> events it will be 
<M>\sum_{i=1}^n (-1)^{i-1} ip_i.</M> For exactly <M>r</M> out
of <M>n</M> events:
<D>
p_r - \binom{r+1}{r}p_{r+1} + \binom{r+2}{r}p_{r+2} -+\cdots.
</D>
[Thanks to Ahan Chakraborty for pointing out a mistake here. It has now been corrected.]
</ANS></EXR>

<DISQUSE url="https://arnabc74.github.io/prob1_2024/basic.html"
id="basic"/>
</NOTE>@}
