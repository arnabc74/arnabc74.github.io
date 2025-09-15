@{<NOTE><TITLE>Independence</TITLE>
<HEAD1>Independence</HEAD1>
<HEAD2>Two events</HEAD2>
<DEFN name="Independence">
Suppose we have a random experiment with sample
space <M>\Omega,</M> and two
events <M>A,B\seq\Omega.</M> We shall say that <M>A,B</M>
are <B>independent</B> if <M>P(A\cap B) = P(A)P(B).</M>
</DEFN>
It is easy to see why this definition is natural. For example, consider the statement 
<Q>"Lefthandedness is indepdendent of a person's gender."</Q> 
If there are about 5% lefties in the entire population, then this statement will imply that
these 5% is more or less equally divided among men and women. In particular, if there are 40% men and 60% women, then 
the proportion of female lefties should be 5% of 60%, i.e., 5% <M>\times</M>  60%. Thus, the
 multiplication comes naturally. 
<P/>
Here is a more mathematical example. 
<EXM>
Suppose that we
toss a fair coin twice. So the sample space is <M>\Omega = \{HH,
HT, TH, T T\}.</M>
Let <M>A</M> be the event that the first toss shows <M>H,</M>
and <M>B</M> be the event that the second toss shows <M>H.</M> In
other words, <M>A=\{HH,HT\}</M> and <M>B=\{HH,TH\}.</M> As the
outcome of one toss can have no influence on the outcome of
another, so intuitively <M>A,B</M> should be "independent". 
From the definition also <M>P(A\cap B) = P(\{HH\}) = [[14]] = [[12]]\times [[12]] = P(A)P(B).</M>
</EXM>

<EXR>
Consider a single roll of a fair die. Write down
two events, <M>A,B</M>  such that <M>A,B</M> are
independent. Also, write down two events <M>C,D</M> 
that are dependent. 
</EXR>

Sometimes two events that are somehow related actually turns out to be indepedent. Here is an example.

<EXM>
A fair coin is tossed twice. The outcome of the first toss is written down. 
If the second toss shows a head, then the first
outcome is written again. If the second outcome is a tail, then the opposite 
of the first outome is written. For example, if the both the outcomes  are tails,  then we first write
 tail (the first outcome),
 and then we write head (opposite of the first outcome).  Let <M>A</M>  be the event that we first write "head", and <M>B</M> 
 be the event that we write "head" in the second position. Are <M>A,B</M>  independent?
<SOLN/>
Apparently the first toss plays a role in both the writings. But still a simple computation shows that 
<M>P(A)=P(B)=[[12]]</M>  and <M>P(A\cap B)=[[14]].</M>  So we have independence.
</EXM>

<EXR>
Same problem as above, but this time the coin is biased. Say, <M>P(H)=0.6.</M>  
<ANS>
Possible outcomes are still <M>HH, HT, TH</M>  and <M>TT.</M>  Let's work out the probabilities. 

<M>P(HH) = P(</M> first toss gives head, second toss is head<M>) = 0.6^2 = 0.36.</M>

<M>P(HT) = P(</M> first toss gives head, second toss gives tail<M>) = 0.6\times(1-0.6) = 0.24.</M>

<M>P(TH) = P(</M> first toss gives tail, second toss gives tail<M>) = (1-0.6)^2 = 0.16.</M>

<M>P(TT) = P(</M> first toss gives tail, second toss gives head<M>) = (1-0.6)\times 0.6 = 0.24.</M>

So <M>P(A) = P(\{HH, HT\}) = 0.36+0.24 = 0.6.</M>

<M>P(B) = P(\{HH, TH\}) = 0.36+0.16 = 0.52.</M>

Now 
<M>P(A\cap B) = P(HH) = 0.36 \neq P(A)P(B).</M>
 
So <M>A,B</M>  are not independent.
</ANS>
</EXR>

<HEAD2>More than two events</HEAD2>
When you have more than two events, the definition of
independence becomes a bit counter-intuitive. 

<DEFN name="Mutual independence">
Suppose we have a random experiment with sample
space <M>\Omega,</M> and let <M>A_1,...,A_n\seq\Omega</M> be
any <M>n</M> events. We shall say that these events
are <B>mutually independent</B> if 
<D>
\forall \mbox{ nonempty } I\seq\{1,...,n\}~~P(\cap_{i\in I} A_i) = \prod_{i\in I} P(A_i).
</D>
</DEFN>
This may look scary. But it only means that if you take <I>any</I> number of
the <M>A_i</M>'s, say <M>A_1, A_4</M> and <M>A_7,</M> then their
probabilities multiply: <M>P(A_1\cap A_4\cap A_7) =
P(A_1)P(A_4)P(A_7).</M> Notice that it is not enough to have each
pair <M>A_i,A_j</M> to be independent according to the first
definition. Indeed, this case has a special name, <B>pairwise
independence</B>:
<DEFN name="Pairwise independence">
Suppose we have a random experiment with sample
space <M>\Omega,</M> and let <M>A_1,...,A_n\seq\Omega</M> be
any <M>n</M> events. We shall say that these events
are <B>pairwise independent</B> if 
<D>
\forall i\neq j\in\{1,...,n\}~~P(A_i\cap A_j) = P(A_i)P(A_j).
</D>
</DEFN>

"Mutual independence" is what we intuitively feel when we think
that the occurencess of <M>A_1,...,A_n</M> do not influence each
other. The following interesting example shows why pairwise
independence is not enough.

<EXM>
Consider the random experiment where a fair coin is tossed
thrice. For <M>i\neq j\in\{1,2,3\},</M> let  <M>A_{ij}</M> be the event that the <M>i</M>-th and <M>j</M>-th tosses have
the same outcome. Do you intuitively feel that <M>A_{12},
A_{23}</M> and <M>A_{13}</M> are "independent"? Now check if they
are pairwise independent. Also check if they are mutually
independent.
<SOLN/>
<HIDE lab="1"><MSG>Since the solution is very easy, why not try yourself
first, before clicking here?</MSG>
<HIDDEN>
No, <M>A_{12}, A_{23}</M> and <M>A_{13}</M> cannot be
independent, since occurence of any two implies the occurence of
the third. 
<P/>
Here <M>\Omega = \{HHH, HHT, HTH, HTT, THH, THT, TTH, TTT\}.</M> 

Also 
<MULTILINE>
A_{12} & = & \{HHH, HHT, TTH, TTT\},\\
A_{23} & = & \{HHH, THH, HTT, TTT\},\\
A_{13} & = & \{HHH, HTH, THT, TTT\}.
</MULTILINE>
The intersections are all <M>\{HHH,TTT\}.</M> So pairwise
independence holds: <M>[[14]] = [[12]]\times [[12]].</M> But
mutual independence fails, since <M>[[14]] \neq [[12]]\times [[12]]\times[[12]].</M>
</HIDDEN>
</HIDE>
</EXM>

<EXM>
Can you give three events <M>A,B,C</M> such that <M>P(A\cap B\cap
C) = P(A)P(B)P(C)</M> but still <M>A,B,C</M> are not mutually
independent?
<SOLN/>
<HIDE lab="2"><MSG>Use the fact <M>P(\phi)=0</M> to get a trivial such example.</MSG>
<HIDDEN>
Single fair coin toss. <M>A = \phi,</M> <M>B=\{H\}</M> and <M>C=\{T\}.</M>
</HIDDEN>
</HIDE>
</EXM>
<HEAD2>Product space</HEAD2>
We often talk about two random experiments being performed indepndently. 
For example, tossing a coin and rolling a die in parallel.  Let's carefully understand what we mean by this
in the case where <I>both the sample spaces are countable (finite/infinite):</I>
<Q>
Let <M>\Omega_1</M>  and <M>\Omega_2</M>  be the 
two sample spaces with corresponding probability functions <M>P_1,P_2.</M> 
 
 We first combine these to form 
the Cartesian product <M>\Omega = \Omega_1\times\Omega_2.</M>  Notice that <M>\Omega</M>  is again countable.
For the "coin toss <M>\times</M>  die roll" example, this gives
<D>\Omega = \{(H,1),(H,2),(H,3),(H,4),(H,5),(H,6),(T,1),(T,2),(T,3),(T,4),(T,5),(T,6)\}.</D>
Now for each singleton set of the form <M>\{(a,b)\}</M>  we define the probability 
<M>P(\{(a,b)\}) = P_1(\{a\})\times P_2(\{b\}).</M>  This uniquely determines <M>P(A)</M>  for all <M>A\seq\Omega</M>  via
 the probability axioms.</Q>

<EXM>If the two random experiments are rolling a (fair) die, and these are carried out
 independently, then the product space may be visualised as 36 points arranged in a square:
<CIMG web="prod1.png">Product space of two die rolls</CIMG>
The space is the Cartesian product of the individual spaces. The sample points are the Cartesian products of the individual
 sample points. But the events in this product space need not always be Cartesian products of
 events of the two random experiments. Consider the two events shown below:
<CIMG web="prod2.png">Two events in the product space</CIMG>
 Here <M>A</M>  is indeed the Cartesian product of two events (one from each experiment): 
<D>A = \{2,3,4\}\times\{2,3,4,5\}</D>.
But <M>B</M>  cannot be exprssed as a similar Cartesian product. Notice that <M>A</M>  looks like a box in the diagram. Indeed,
 events that can be expressed as Cartesian products of events from the individual random experimnts are sometimes called
 <TERM>box</TERM> events. These play important role when working with infinitely many random experiments.
 </EXM>
The same construction may be generalised easily for any finite number of random experiments. 
<P/>
Any <M>A_1\seq\Omega_1</M>  has a natural counterpart in <M>A\seq \Omega</M>  as 
<D>A =\{(a,b)~:~a\in A_1,~b\in\Omega_2\}.</D>
We rarely use different symbols for <M>A</M>  and <M>A_1.</M>  Just as a real number is considered
 also to be a complex number. Similarly for
 any <M>A_2\seq\Omega_2.</M>
<P/>
For example, in the "coin toss<M>\times</M> die roll" example, the event <M>\{</M> die shows 3<M>\}</M>  becomes 
<M>\{(H,3), (T,3)\}.</M>
<P/>
With this natural extension, we have the following important theorem about box events.
<THM>
Let <M>\Omega_1,\Omega_2,\Omega,P_1,P_2,P</M>  be as above. Then for any <M>A_1\seq \Omega_1</M>  and any 
<M>A_2\seq \Omega_2</M>  we have <M>P(A_1\times A_2)  = P_1(A_1)P_2(A_2).</M>
</THM>
<PF>
The proof is easy if <M>A_1</M>  and <M>A_2</M>  are both finite. 
<P/>
For the case where at least one of <M>A_1,A_2</M>  is infinite (countably infinite as
 <M>\Omega_i</M>'s are countable), we need to use the fact that 
infinite series of nonnegative terms may be 
<LINK to="series.html">rearranged without changing the value</LINK> of the series. 

</PF>

<EXM>I have two dice with probabilities 
<M>(*([[1][16]], [[2][16]], [[4][16]], [[3][16]], [[1][16]], [[5][16]])*)</M>  and <M>(*([[2][12]], [[1][12]], [[2][12]], [[1][12]], [[4][12]], [[2][12]])*)</M>.
 These ar rolled independently. What is the probability that both of the show the same number?<SOLN/>
Let <M>A = </M>  the event in question.

Then <M>A = A_1\cup \cdots \cup A_6</M>, where <M>A_i = </M>  the event that both the dice show <M>i</M>. 

Since a die cannot show two different numbers simulataneously, hence <M>A_i</M>'s are disjoint.

Now <M>P(A_i) = P(\mbox{first die shows }i)\times P(\mbox{second die shows }i)</M>, since the ice are rolled independently.
 So 
<MULTILINE>
P(A_1) & = & [[1][16]]\times[[2][12]]\\
P(A_2) & = & [[2][16]]\times[[1][12]]\\
P(A_3) & = & [[4][16]]\times[[2][12]]\\
P(A_4) & = & [[3][16]]\times[[1][12]]\\
P(A_5) & = & [[4][16]]\times[[1][12]]\\
P(A_6) & = & [[2][16]]\times[[5][12]].
</MULTILINE>
Since the <M>A_i</M>'s are independent, hence <M>P(A) = \sum_1^6 P(A_i)</M>.
</EXM>
<HEAD2>Infinite product</HEAD2>
We shall often talk about an infinite sequence of random experiments, e.g., keep on tossing a coin again and again. Mathematically,
 we have <M>\Omega_n</M>  and <M>P_n</M>  for <M>n=1,2,3,...</M>  and want to combine them into a single <M>\Omega.</M> 
 Conceptually, this is done much like the finite case. 
<D>\Omega = \Omega_1\times\Omega_2\times\cdots,</D>
which means each element of <M>\Omega</M>  is a sequence <M>(a_1,a_2,...),</M>  where <M>a_n\in\Omega_n.</M>  Any <M>A_n\seq \Omega_n</M> 
 is lifted to a subset of <M>\Omega</M>  as <M>\{(a_1,...)~:~a_n\in A_n~,~\forall i\neq n~~a_i\in\Omega_i\}.</M>
Then we want a probability <M>P</M>  on <M>\Omega</M>  such that for any <M>A_{n_i}\seq \Omega_{n_i}</M>  for <M>i=1,...,k</M> 
(for any  <M>k\in\nn</M>)
 we have them mutually independent under <M>P.</M>  Such a <M>P</M>  indeed exists and is unique. Unfortunately,
 this is rather  technical to prove. 
<P/>
A few of the difficulties are:
<UL><LI><M>\Omega</M>  is uncountable even if all the <M>\Omega_n</M>'s are finite (with at least two elements).</LI>
<LI>This <M>\Omega</M>  will have "bad" subsets for which probability cannot be defined!</LI>
</UL>
In this course, we shall assume the existence and uniqueness of infinite product spaces.

<EXM>
A coin with <M>P(head)=p\in(0,1)</M> is tossed again and
again independently. Show that we must get a head eventually.
<SOLN/>
Here we are working over an infinite product space. For any
finite sequence of <M>H</M>'s and <M>T</M>'s of length <M>n</M>
with exactly <M>k</M> many <M>H</M>'s, the probability is <M>p^k(1-p)^{n-k}.</M>
<P/>
Let <M>A_n</M> be the event that the first <M>n</M> tosses have
produced no <M>H.</M> Also let <M>A</M> denote the event that
no <M>H</M> ever occurs.
<P/>
Then clearly <M>A_1\supseteq A_2\supseteq A_3\supseteq\cdots</M> and <M>A = \cap
A_n.</M> 
<P/>
Thus <M>A_n\searrow A.</M>
<P/>
Hence <M>P(A_n)\to P(A).</M>
<P/>
Now <M>P(A_n) = (1-p)^n\to 0</M> since <M>p\in (0,1).</M>
<P/>
So <M>P(A)=0.</M> Hence <M>P(A^c) = 1,</M> as required.
</EXM>

<HEAD1>Problems for practice</HEAD1>
<OL><EXR>If <M>A,B</M>  are independent, then show that <M>A^c,B</M>  are also independent. Are
 <M>A^c,B^c</M>  also independent?</EXR>
<EXR>Is it possible to have an event that is independent of itself? If so, find all such events. If not, prove why not.</EXR>
<EXR>Is it possible to have an event that is independent of all other events? If so, find all such events. If
 not, prove why not.</EXR>
<EXR>If <M>A,B</M>  are independent, and <M>A,C</M>  are also independent, then is it true that
 <M>A</M>  and <M>B\cup C</M>  must also be independent?</EXR>
<EXR>If <M>A</M>  and <M>B</M>  are mutually exclusive, then must <M>A,B</M>  be independent? Must they be dependent?</EXR>
<EXR>The numbers <M>-10,...,-1,1,...,10</M>  are written on 20 pieces of papers. One of the papers
 is drawn at random. Let <M>A</M>  be the event that the selected number is negative, and <M>B</M>
  be the event that the selected number has absolute value <M>>5.</M>  Are <M>A,B</M>  independent?</EXR>
<EXR>Same set up as above. Find an event <M>C</M>  such that <M>A,B,C</M>  are mutually independent.</EXR>
<EXR>If <M>A\seq B</M>  are two events, can <M>A,B</M>  be independent?</EXR>
<EXR>If <M>P(A_i)=p_i</M>  for <M>i=1,2,3,</M>  and <M>A_i</M>'s are mutually independent, then find <M>P(A_1\cup A_2\cup A_3).</M></EXR>
<EXR>If two fair dice are rolled independently, find the probability that the first shows a number
 strictly larger than the second. </EXR>
<EXR>If two fair dice are rolled independently, find the probability that the first number
divides the second. </EXR>

<EXR><CIMG web="most2.png"/>
<ANS>
Let <M>f = P(</M>Elmer beats father<M>),</M> and <M>c =
P(</M>Elmer beats champion<M>).</M> Then Elmer's chance of
winning for the father-champion-father case is <M>2fc(1-f) 
 +f^2c=A,</M> say.

The winning probability for the other case is: <M>2cf(1-c) +
  c^2f=B,</M> say.

We have <M>f > c.</M> 

So <M>A-B < 0.</M> Hence Elmer should play champion-father-champion.

[Corrected a mistake pointed out by Arnab Sanyal.]
</ANS>
</EXR>

<EXR><CIMG web="most3.png"/>
<ANS>
Let <M>A,B</M> and <M>C</M>, respecively, be the events
that the first, second and third man in the three man jury  
reaches the correct conclusion. Then <M>P(A)=P(B)=p</M>
and <M>P(C)=[[12]],</M> and the three events are independent. 
Then the event that this jury makes the correct decision is 
<M>(A\cap B\cap C^c)\cup(A\cap B^c\cap C)\cup(A^c\cap B\cap
C)\cup(A\cap B\cap C).</M>

This is <M>[[12]](p^2+2p(1-p) +p^2) = p.</M> 

So both the jury are equally likely to reach the correct decision. 

[Thanks to Shounak Kar for correcting a mistake here.]
</ANS>
</EXR>
<EXR><CIMG web="most18.png"/>
<ANS>
<M>2^{-100}{100 \choose 50}\approx 0.08.</M>
</ANS>
</EXR>
<EXR><CIMG web="most20.png"/>
<ANS>Deliberately missing (e.g., firing in the air) is also a possible option!</ANS>
</EXR>
</OL>

</NOTE>@}
