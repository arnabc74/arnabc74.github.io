@{<NOTE>
<M>\newcommand{\io}{~~\mathrm{i.o.}}</M>
<M>\newcommand{\ev}{~~\mathrm{ev.}}</M>
<M>\newcommand{\calF}{\mathcal{F}}</M>
<M>\newcommand{\toL}[1]{\stackrel{L_{#1}}{\longrightarrow}}</M>
<M>\newcommand{\toP}{\stackrel{P}{\longrightarrow}}</M>
<M>\newcommand{\toA}{\stackrel{a.s.}{\longrightarrow}}</M>

<HEAD1>Infinitely often</HEAD1>
Suppose that we have  a sequence of subsets of some universal set. We shall define a new set 
from
 this sequence as follows.
<DEFN name="Infinitely often (i.o.)">
Let <M>(A_n)</M>  be a sequence of subsets of some universal set. Then we define
<D>\{A_n\io\} = \cap_n \cup_{k\geq n} A_k.</D>
</DEFN>
<EXM>
Suppose that <M>A_n = [*[ -[[1n]], 1-[[1n]] ]*].</M>  Find <M>\{A_n\io\}.</M>
<SOLN/>
You can think of this sequence as <M>[-1,0]</M>  travelling towards <M>[0,1].</M>  

Here <M>\cup_{k\geq n} A_k = [*[ -[[1n]], 1)*).</M>

So <M>\{A_n\io\} = \cap_n \cup_{k\geq n} A_k = \cap_n [0, 1).</M>
</EXM>

The definition may appear rather complicated. Let us digest itintuitively: 
<UL><LI>
Consider all the elements which
 are in all the <M>A_n</M> s. The set of all such elements is <M>\cup_{k\geq 1} A_k. </M>    
</LI><LI>
Next consider all the elements which are in all the <M>A_n</M> s except possibly <M>A_1.</M>  All the earlier elements are
 already there, plus possibly some extra. The set of all these elements is <M>\cup_{k\geq 2} A_k. </M>
</LI><LI>
Similarly, <M>\cup_{k\geq 3} A_k </M>  is the set of all elements that are in all the <M>A_n</M> s except possible the first
 two. 
</LI></UL>
If we take the intersection of all such unions of the form <M>\cup_{k\geq n} A_k,</M>  we get <M>\{A_n\io\}.</M>  Thus <M>\liminf A_n</M> 
 is the set all elements that are in all the <M>A_n</M>'s except for a finitely many, i.e., all the lements are are infinitely
 many of the <M>A_n\</M>'s. Hence the name <TERM>infinite often</TERM>.

The following result often proves handy when proving <M>P(A_n)\to 0.</M>

<THM>Let <M>(A_n)</M>  be a sequence of events with <M>P(A_n\io) = 0.</M>  Then we must have <M>P(A_n)\to0.</M></THM>

A proof of this theorem is outlined in the exercises below.
<HEAD2>Problem set</HEAD2>
<EXR>If <M>A_n = [-n,n]</M>  find <M>\{A_n\io\}.</M></EXR>

<EXR>If <M>A_1 \seq A_2 \seq A_2\seq \cdots,</M>  then show that <M>\{A_n\io\} = \cup_n A_n.</M></EXR>

<EXR>If <M>A_1 \supseteq A_2 \supseteq A_2\supseteq \cdots,</M>  then is it true that <M>\{A_n\io\} = \cap_n A_n?</M></EXR>

<EXR>Let <M>B_n = \cup_{k\geq n} A_k.</M>  Show that <M>P(B_n)\to P\{A_n\io\}.</M></EXR>

<EXR>We can define a set called <M>\{A_n\ev\}</M>  (where <M>\ev</M>  is the abbreviation of
 <TERM>eventually</TERM>) as 
<D>\{A_n\ev\} = \cup_n \cap_{k\geq n} A_k.</D>
Do you see why we call it "eventually" (compare with the statement "We shall all be eventually dead."). 
</EXR>
<EXR>Show that <M>\{A_n\ev\}\seq\{A_n\io\}.</M></EXR>
<EXR>Let <M>P\{A_n\ev\}=1.</M>  Show that <M>P(A_n)\to 1.</M></EXR>

<EXR>
We shall say <M>A_n\to A </M> if <M>\{ A_n\ev\} = \{ A_n\io\} = A.</M>  Show that in this case <M>P(A_n)\to P(A).</M>
This is a generalisation of the theorem on continuity of probability that you have learned in Probability I.</EXR>


<EXR>Let <M>(A_n)</M>  be a sequence of events with <M>P(\liminf A_n) = P(\limsup A_n) = p.</M>  Show that <M>P(A_n)\to p.</M></EXR>



<COMMENT>theorem 4.1 of Billingsley</COMMENT>

<HEAD1>Borel-Cantelli lemmas</HEAD1>

<THM name="First Borel-Cantelli lemma">
Let <M>(A_n)</M>  be a sequence of events in some probability space. If <M>\sum P(A_n) < \infty,</M>  then <M>P(A_n\io)=0.</M>
</THM>
<PF>
<MULTILINE>
P(A_n\io)
 & = & P(\cap_n\cup_{k\geq n} A_k)\\
 & = & P( \lim_n\cup_{k\geq n} A_k)\\
 & = & \lim_n P(\cup_{k\geq n} A_k).
</MULTILINE>
Now <M>P(\cup_{k\geq n} A_k)\leq \sum_{k\geq n} P(A_k).</M>

Since <M>\sum P(A_n) < \infty</M>, hence <M>\lim_n \sum_{k\geq n} P(A_k) = 0.</M>

Hence the result. 
</PF>

<THM name="Second Borel-Cantelli lemma">
Let <M>(A_n)</M>  be a sequence of independent events in some probability space. If <M>\sum P(A_n)= \infty,</M>  then <M>P(A_n\io)=1.</M>
</THM>
<PF>Skipped.</PF>

The second lemma makes the assumption of independence. The following counterexample shows what may happen if this assumption
 were dropped.

<EXM>
Let <M>U\sim Unif(0,1)</M>  and for <M>n\in\nn</M>  let 
<D>A_n = {*{U\in(*(0,[[1n]])*)}*}.</D>
Notice how we are defining <I>all</I> the <M>A_n</M>'s based on the <I>same</I>  <M>U.</M>  Clearly, <M>A_n</M>'s are not
 independent. For instance, <M>P(A_n)=[[1n]]</M>,  but <M>P(A_n|A_{n+1})=1.</M>  

Here <M>\sum_n P(A_n) = \sum_n [[1n]] = \infty,</M>  but <M>P(A_n \io) = 0.</M>
</EXM>
<COMMENT>
<MULTILINE>
P(A_n\io) 
& = & P(\cap_n\cup_{k\geq n} A_k)\\
& = & 1-P(\cup_n\cap_{k\geq n} A_k^c)<SINCE>by de Morgan</SINCE>\\
</MULTILINE>
</COMMENT>
<EXM>Show that if a monkey types a keyboard
 randomly, then it will type the exact text of Hamlet infinitely often. 
<SOLN/>
Let the exact text of Hamlet have <M>h</M> letters.  Consider packets of <M>h</M>  letters. Let
 <M>A_n</M>  be the event that the <M>n</M>-th packet is an exact copy of Hamlet. Then
 <M>A_n</M>'s are independent and <M>P(A_n)>0.</M>  So <M>\sum_n P(A_n) = \infty.</M>  Hence by
 the second Borel-Canteli lemma, <M>P(A_n\io)=1.</M>  </EXM>
<HEAD2>Problem set</HEAD2>

<EXR>If a coin with <M>P(head)=0.01</M>  is tossed repeatedly (independently of course), then find
 the probability that there will be infinitely many heads.</EXR>
<EXR>A fair coin is tossed independently infinitely many times. What is the chance that there
 would be infinitely many consecutive heads?
<HINT>Be careful: If <M>X_n</M>  denotes the outcome ofthe <M>n</M>-th toss, then <M>(X_1,X_2)</M>  is not
 independent of <M>(X_2,X_3)</M>.</HINT>
</EXR>
<EXR>Let <M>(X_n)</M> be any jointly distributed sequence of <M>Unif(0,1)</M>  random variables. Show that
 <M>P(*(X_n < [[1][n^2]] \io)*) = 0.</M> </EXR>

<EXR>Let <M>(X_n)</M> be an iid sequence of <M>Unif(0,1)</M>  random variables. Show that
 <M>P(*(X_n < [[1n]] \io)*) = 1.</M> </EXR>

<EXR>Toss a fair coin repeatedly (independently). What is the probability that heads occur on
 all <M>n</M>-th tosses where <M>n</M>  is a square number?
<HINT>You really do not need the Borel Cantelli lemmas here.</HINT>
</EXR>

<EXR>
Construct a sequence of events <M>(A_n)</M>  such that <M>\sum_n P(A_n) = \infty</M>  but <M>P(A_n\io) = 0.</M>
</EXR>
<COMMENT>All <M>A_n</M> s same.</COMMENT>


<EXR>Consider <M>[-1,1]</M>  as a 1-dimensional dart board, 0 being the bull's eye. A drunkard is throwing
 darts at this board hitting the board at any random points (all points equally likely). After the
each attempt he gets a prize if he hits within <M>[[1n]]</M>  distance of the bull's eye (if
it is the  <M>n</M>-th attempt). What is the chance that he gets infinitely many prizes? [Assume
 infinite life for the guy, but don't drink to it!]</EXR>

<EXR>Same problem as before except that  <M>[-1,1]</M> is replaced by the unit disc in
 <M>\rr^2,</M>  the bull's eye being at the origin. 
What is the chance that he gets at leaast one prize? Wht is the chance he gets infinitely many prizes?
</EXR>


<EXR>However, if you want to just show that the monkey will surely write Hamlet <I>at least
 once</I>, then you really do not need
 to use the second Borel
 Cantelli lemma. You can prove it much more easily using continuity of probability.  How?</EXR>

<HEAD2>Project: Normal numbers</HEAD2>
Consider a uniform random number between 0 and 1. Let <M>d_n</M>  be the <M>n</M>-th digit after
 the decimal point in its (unique) non-terminating decimal expansion. For example, if the number
 is <M>[[12]],</M>  then the non-terminating decimal expansion
 is <M>0.499999...,</M>  and so <M>d_1 = 4,</M>  while <M>d_n=9</M>  for each <M>n\geq 2.</M>  

Consider the event <M>\{d_1=3\}.</M>  Clearly it is <M>(0.3,0.4].</M>  So this has probability
 <M>[[1][10]].</M>  Next consider the event <M>\{d_2=3\}.</M>  This is <M>\cup_{d_1=0}^9
 [[d_1][10]]+(0.03,0.04].</M>  Again, the probability is <M>[[1][10]].</M>  In particular we have the following theorem:

<THM>
<UL>
<LI>For each <M>n</M>  the random variable <M>d_n</M>  is uniformly distributed over <M>\{0,1,...,9\}.</M></LI>
<LI>If <M>m\neq n,</M>  then <M>d_m</M>  and <M>d_n</M>  are independent.</LI>
</UL> 
</THM>

Next we shall fix a single number <M>\omega\in(0,1)</M>  and check how many times any given digit (say 3) occurs in it. 

Let
<M>S_n(\omega) = </M>  number of times the digit 3 occurs among the first <M>n</M>  digits of <M>\omega.</M>  
For instance of <M>\omega=[[13]],</M>  then <M>S_n(\omega) = n.</M>


We are interested in the proportion of times a digit occurs in the expansion. Mathematically, we
 work with <M>\lim_{n\to \infty} [[S_n(\omega)][n]]</M> (which may not exist).  For instance, if <M>\omega=[[13]],</M> 
 then the limit exists and equals <M>1.</M>  If <M>\omega=0.3,</M>  then the limit exists and equals <M>0.</M>  

<EXR>Can you construct an expansion for which the limit does <I>not</I>  exist? <HINT>You can get one using only 0's
 and 3's. </HINT></EXR>

Let <M>A_3 = </M> set of all numbers for which the limit equals <M>[[1][10]].</M>  What do you expect <M>P(A_3)</M>  to be?
The following theorem provides the answer.
<THM>
<M>P(A_n) = [[1][10]].</M>
</THM>
<PF>
We shall prove it for <M>n=3.</M>  (the other cases are exactly similar).


</PF>
Then
 <M>\forall k\in\{0,1,2,...,9\}~~P(d_n=k\io) = 1.</M> So, in particular, <M>P(0\mbox{ occurs }\io)=1.</M>  Hence, <M>P(0,1\mbox{ occur }\io)=1.</M> 
 Proceeding similarly, <M>P(\mbox{each digit occurs }\io)=1.</M>

<HEAD2>Project: Random walk in 3D</HEAD2>
Let <M>S = X_1+\cdots+X_n</M>  a simple, symmetric random walk in 3D. We shall show that <M>P(S_n=0\io)=0.</M>  Thanks to
 the first Borel Cantelli lemma, it is enough to show
that <M>\sum P(S_n=0) < \infty.</M> 

Now, <M>P(S_n=0)=0</M> if <M>n</M> is odd. So let us
take <M>n=2(a+b+c),</M> where <M>a</M> is the number of <M>+x</M>
steps (and <M>-x</M> steps). Similarly, for <M>b,c.</M>

Total number of paths of length <M>2k</M> is <M>6^{2k}.</M>
Number of favourable paths is    
<D>
\sum_{a,b,c:a+b+c=k} [[(2k)!][a!^2 b!^2 c!^2]].
</D>
By convexity of <M>\log m!</M>, the maximum term occurs
when <M>a,b,c</M> are as equal as possible. Hence <M>T_n\leq C
n^2/((n/3)!)^6.</M>

Using Stirling's approximation <M>m!\sim \sqrt{2\pi
m}(m/e)^m,</M> we have <M>P(S_{2k}=0)\leq C n^{-3/2}.</M> 

Hence the result.



</NOTE>@}
