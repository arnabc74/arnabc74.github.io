 @{<NOTE>
<TITLE>Notions from measure theory</TITLE><M>
\newcommand{\calF}{{\mathcal F}}
\newcommand{\calP}{{\mathcal P}}
\newcommand{\calB}{{\mathcal B}}
\newcommand{\calD}{{\mathcal D}}
\newcommand{\ind}{{\mathbb 1}}
\newcommand{\area}{\mathrm {area}}
</M>
<HEAD1>Measure</HEAD1>
We often talk about the "size" of different sets. There are various ways to measure the size, length, area, volume, mass,
 cardinality. All these measures share some common properties: they are defined over subsets of
 some universal set (e.g., length for subsets of <M>\rr,</M>  while area for subsets of
 <M>\rr^2</M>), they are always nonnegative
 and they add up over disjoint sets. 

Let <M>\Omega</M>  be our universal set. Let <M>\calP(\Omega)</M>  be its power set. Then <M>\mu:\calP(\Omega)\to[0,\infty)</M> 
 is called a <TERM>measure</TERM>  if for disjoint <M>A_1,A_2,...\in\calP(\Omega)</M>  we have <M>\mu(\cup A_i) = \sum \mu(A_i).</M>

This definition has a couple of problems. First, if we think of "length" for <M>\Omega=\rr,</M> 
 then surely we would like to say that "length" of <M>\rr</M>  is <M>\infty.</M>  But our
 definition needs finite length for every subset of <M>\rr.</M>  So we have to include
 <M>\infty</M>  in the range of <M>\mu.</M>  This will not cause any problem with the countable
 additivity condition, since we are not working with both <M>\infty</M>  and <M>-\infty.</M>  So
 addition is still well-defined, as <M>\forall a\in\rr~~a+\infty = \infty+a = \infty</M>  and
 <M>\infty + \infty= \infty.</M>  

The second problem is more subtle. Sometimes we want the measure to satisfy additional "nice" conditions. 
Often we find that no measure with those "nice" conditions exists. If, however, we define it only for a subcollection of
 subsets of <M>\Omega,</M>  then the problem goes away. The subcollection must of course be rich enough to allow interesting
mathematical  manipulations. So we want a subcollection that is closed under countable union, intrsection and complementation.
 Any such subcollection is called a <TERM><M>\sigma</M>-algebra</TERM>. 


So we get the final definition of measure.
<DEFN name="Measure">
Let <M>\Omega</M>  be any non-empty set. Let <M>\calF</M>  be any <M>\sigma</M>-algebra on <M>\Omega.</M>  Then we called
 <M>(\Omega,\calF)</M>  a <TERM>measurable space</TERM>  and any <M>\mu:\calF\to[0,\infty]</M>  such that 
<D>\forall \mbox{disjoint }A_1,A_2,...\in\calF~~\mu(\cup A_i) = \sum\mu(A_i)</D>
is called a <TERM>measure</TERM>. The triple <M>(\Omega,\calF,\mu)</M>  is called a <TERM>measure space</TERM>. 
 </DEFN>
Notice that the conditions in this definition are much like the probability axioms, except that there we had one extra conditions
 <M>P(\Omega)=1.</M>  This shows that probability is a measure. However, a measure <M>\mu</M>  need not have <M>\mu(\Omega)</M> 
 equal to <M>1.</M>  It could be any finite positive number or even <M>\infty.</M>  If <M>\mu(\Omega)< \infty,</M>  we naturally
 call <M>\mu</M>  a <TERM>finite measure</TERM>. These are generally easier to work with. Infinite measres are harder to
 deal. But there is an useful intermediate type of measure that allows <M>\mu(\Omega)=\infty</M>  and yet retains much of
 the advantages of a finite measure. These are what we work with most of the time. Th definition goes like this.

<DEFN name="$\sigma$-finite measure">
A measure <M>\mu</M>  on <M>(\Omega,\calB)</M>  is called <TERM><M>\sigma</M>-finite</TERM>  if there are disjoints <M>B_1,B_2,...\in\calB</M> 
 such that <M>\Omega = \cup_i B_i</M>  and <M>\forall i~~\mu(B_i)<\infty.</M>
</DEFN>
One example is "length" or <M>\rr.</M>  Entire <M>\rr</M>  has infinite length, but <M>\rr</M>  may be split up into <M>[n,n+1)</M> 
 for <M>n\in\zz</M>  and each of these has finite length.

<EXM>Is <M>\calP(\Omega)</M>  a <M>\sigma</M>-algebra on <M>\Omega?</M>
<SOLN/>
Yes. It is the largest <M>\sigma</M>-algebra on <M>\Omega.</M>
</EXM>
<EXR>Show that for any measure <M>\mu(\phi)=0.</M></EXR>  

<HEAD2>Problem set 1</HEAD2>
<HEAD1>Constructing a measure from intuition</HEAD1>
 How do we construct a measure? Typically we start with some subsets of <M>\Omega</M>  for which the value is obvious. Then
 we use the countable additivity to define it for less obvious sets. Let's do it for "length". We all agree that the length
 of <M>(a,b)</M>  is <M>b-a</M>  for <M>a<b.</M>  Then what should the length of <M>(0,1)\cup
 (3,5)</M>  be? The answer is <M>1+2=3.</M>  Even less obvious is the length of <M>\qq.</M>  It
 turns out to be <M>0+0+\cdots=0</M>  and so  the length of <M>\qq^c</M>  must be <M>\infty.</M>  

Can we do this for all subsets? Or may we run into some difficulty? The answer is very heartening:
 If you have enough "obvious" cases, and there is no inconsistency
among them, then you may extend them uniquely. This is formalised as a famous theorem:

<THM name=" Caratheodory extension">
Let <M>\Omega</M>  be a nonempty set and <M>\calB</M>  be a <M>\sigma</M>-algebra on it. We want to specify a measure <M>\mu</M> 
 on it. For this it it enough to specify <M>\mu</M>  on a subcollection <M>\calF</M>   collection of subsets if  
<OL><LI><M>\mu</M>  is nonnegative and countably additive,</LI>
<LI><M>\calB</M>  is generated by <M>\calF</M></LI>
<LI><M>\calF</M>  is closed under finite intersection,</LI>
<LI><M>\forall A\in\calF~~\exists \mbox{disjoint }B_1,...,B_n\in\calF~~A^c = \cup_1^n B_i.</M></LI>
</OL>
</THM>
We shall not prove this in this course. But let us understand the significance of the conditions. The first condition is
 clearly necessary. If <M>\mu</M>  already fails to be nonnegative or countably additive on <M>\calF</M>  how can we expect
 it to be a measure when extended to  <M>\calB?</M>  If we specify <M>\mu</M>  for each and every set in <M>\calB,</M>  then
 of course it would suffice. But that woluld be too much work. Our aim is to specify <M>\mu</M>  for only a smaller number
 of the sets. Clearly, we cannot fall below a generating set. So that condition puts a lower bound on how low we can go.
 But that lower bound is actually too low, as not all generating collection would do. It must be "rich" enough. If you specify
 <M>\mu</M>  on <M>A</M>  and <M>B,</M>  then you should also specify it for <M>A\cap B,</M>  to help determine how much
 <M>A,B</M>  overlap each other. Also, for each <M>A</M>  we should be able to express <M>A^c</M>  as a finite union of sets
 for which <M>\mu</M>  has been specified. This will help us to place <M>A</M>  in the background of <M>\Omega.</M>  

<HEAD2>Problem set 2</HEAD2>
The following exercises will apply this concept to define "length" for all
 subsets in <M>\calB.</M>  This measure is called <TERM>Lebesgue measure</TERM>  on <M>(\rr,\calB).</M>

Let  <M>\calF</M>  be the collection of all intervals (bounded, unbounded, open, closed,
 semi-open) in <M>\rr.</M>  Also we include <M>\phi</M>  in <M>\calF.</M>  
We can define the length of an interval by intuition: <M>(a,b), [a,b], [a,b)</M>  and <M>(a,b]</M>  all should have length
 <M>b-a.</M>  Unbounded intervals should have length <M>\infty.</M>

<EXR>
Show that
 <M>\forall A,B\in\calF~~A\cap B\in\calF.</M>  
</EXR>

<EXR>Is it true that <M>\forall A\in\calF~~\exists \mbox{disjoint }B_1,...,B_n\in\calF~~A^c = \cup B_i?</M>  
Let <M>A = (0,1).</M>  How many <M>B_i</M>'s would you need? What if <M>B  = [0,1]?</M>  or <M>[[a, \infty)?</M>  or <M>(-\infty,5)?</M> 
</EXR>
<EXR>
In each case below we give some sequence <M>(A_n)</M> of sets in <M>\calF</M>.  check if the sets are disjoint,
 and whether their union
 is again in <M>\calF.</M>  If so check if  <M>\sum_n\mu(A_n) = \mu(*(\cup_n A_n)*).</M>
<OL>
<LI><M>A_n = [0,n))</M>  for <M>n\in\nn.</M></LI>
<LI><M>A_n = [n,n+1]</M>  for <M>n\in\nn.</M></LI>
<LI><M>A_n = [n,n+1)</M>  for <M>n\in\nn.</M></LI>
<LI><M>A_n = [*[ 2^{-n}, 2^{-n+1})*))</M>  for <M>n\in\nn.</M></LI>
<LI>Let <M>(a_n)</M>  be a positive sequence with <M>\sum a_n < \infty.</M>  Let <M>S_n = \sum_1^n a_i.</M>  Let <M>A_n = (2+S_{n-1}, 2+S_n].</M></LI>
</OL></EXR>

<EXR>Is our<M>\mu</M>  here <M>\sigma</M>-finite on <M>\calF?</M> </EXR>

<EXR>
Show that there is a unique measure <M>\mu</M>  on <M>(\rr,\calB)</M>  such that
 <M>\mu(\phi)=0</M>  and <M>\forall a < b~~\mu(#( (a,b) )#) = b-a</M>  and unbounded intervals having length <M>\infty</M>
</EXR>
<COMMENT>
<THEAD1>Uncountable sample space</THEAD1>
We have already seen last semester that for an uncountable <M>\Omega</M>  we may not always be able
 to define a function <M>P:{\mathcal P}(\Omega)\to[0,1]</M> 
 satisfying all the probability axioms.  Please see <LINK to="../prob1_2024/vitali.html">this page
 from the last semester</LINK>  to brush up on this. 

Hence we defined <M>\sigma</M>-algebra. While the simplest <M>\sigma</M>-algebras are the trivial one and the entire power
 set, the most commonly used is the Borel <M>\sigma</M>-algebra. 

Closely related to this is the idea of a measurable function.
</COMMENT>
<HEAD1>Measurable function</HEAD1>
Let <M>(\Omega_1,\calF_1)</M>  and <M>(\Omega_2,\calF_2)</M>  be measurable spaces. Then a function <M>f:\Omega_1\to\Omega_2</M> 
 is called <TERM>measurable</TERM>  if 
<D>\forall B\in\calF_2~~f ^{-1} (B)\in \calF_1.</D>
The most common application of this our course is when <M>(\Omega,\calF,P)</M>  is a probability
 space (i.e., a random experiment) and <M>X:\Omega\to\rr</M>  is a random variable. Here we take
 <M>(\Omega_1,\calF_1) = (\Omega,\calF)</M>  and <M>(\Omega_2,\calF_2) = (\rr,\calB),</M>  where
 <M>\calB</M>  is the Borel sigma-field on <M>\rr.</M>

<DEFN>
By a <TERM>random variable</TERM>  on a probability space <M>(\Omega,\calF,P)</M>  we mean a measurable function <M>X</M> 
 from <M>(\Omega,\calF)</M>  to <M>(\rr,\calB).</M>  Note that <M>P</M>  plays no role in the definition. 
</DEFN> 
We need the measurability condition on <M>X</M>  so that we can talk about <M>P(X\in (a,b)).</M>  For this we need 
<M>\{w\in\Omega~:~X(w)\in (a,b)\}\equiv X ^{-1} (a,b)\in \calF.</M>

<DEFN name="Distribution">
Let <M>(\Omega,\calF,P)</M>  be a probability space. Let <M>X:\Omega\to\rr</M>  be a random variable. By the
 <TERM>distribution</TERM> of 
 <M>X</M>  we mean the function
 <M>P_X:\calB\to[0,1]</M>  given by 
<D>P_X(B) = P(X ^{-1}(B))\mbox{ for } B\in\calB.</D>
</DEFN>
<HEAD2>Problem set 3</HEAD2>
<HEAD1>Lebesgue integration: the idea</HEAD1>
Now we shall discuss a concept that is very important, and is something we have already seen many times. We all know about
 Riemann integration. The idea is to measure the area under the graph of a positive function, by approximating it with steps
 functions with finitely many steps. We do this from both above and below. For this we partition the domain of the function
 into finitely many intervals and raise step functions on them.
<CIMG web="rul.png"></CIMG>
The intuition is that if we take finer and finer partitions and raise the red rectangles as much as we can under the graph,
 we shall come arbitrarily close to the area under the graph. If we do the same from above  the graph using the blue rectangles,
 then also we should come arbitrarily close to the same area. So our intuition dictates that 
<Q>
sup (red area) = inf(blue area),
</Q>
and we plan to use this common value as the area under the curve. This brilliant intuition has just one loop hole, for some
 functions the sup does not equal the inf! We get very anglry with them, and call them non-Riemann integrable. However, these
 bad functions cannot be completely avoided, as they crop up natirally from time to time, usually as the limit of Riemann integrable
 functions. 

Lebesgue had another brilliant idea. Instead of partitionaing the domain is plan was to partition the codomain. So he also
 got red rectangles below the graph and blue rectangles above.
<CIMG web="lul.png"></CIMG>
 And like Riemann he also hoped that
<Q>
sup (red area) = inf(blue area),
</Q>
and he wanted to call the common area the area under the curve. 
Just based on these diagrams, you may think that Lebesgue's idea is no different from Riemann's idea. Actually, Lebesgue's
approximations are more flexible than Riemann's. To understand this look at the graph below, where
 we have shown the lower Lebesgue approximation using just 4 points in the codomain.
<CIMG web="lul2.png">Just three heights, but so many rectangles!</CIMG>
Each value in the codomain, can give birth to many rectangles, depending on the ups and downs of the curve. 

Indeed, a single height can give rise to infinitely many "rectangles"! 
For instance, the function
<D>f(x) =<CASES>1<IF>x\in\qq\cap[0,1]</IF> 0<ELSE/></CASES> </D> 
takes only two values, 0 and 1. Yet each value is taken infinitely often. 
So you can now feel why Lebesgues approximations are more flexible than Riemann's:
<Q>
Riemann's approximations are special cases of Lebesgue's approximations, but
 not <I>vice versa</I>. 
</Q>

As a result here
 the sup(red) and inf(blue)
 match for a more general class
 of functions. In fact, they match for all measurable functions. 
This  also shows that if Riemann's sup(red) and inf(blue) areas meet, then so must Lebesgue's, and the meeting
 point would be the same. 

Now we shall take a rigourous look at Lebesgue's idea. First we need a name for the functions that Lebesgue is using to approximate
 areas. We shall call them <TERM>simple</TERM>  functions.

<DEFN name="Simple function">
A function is called <TERM>simple</TERM>  if it takes only finitely many values.
</DEFN>

We can  express a simple function mathematically using indicator functions. Let a simple function take only the values <M>c_1,...,c_k</M> 
 (all distinct). Let <M>A_i = \{\omega\in\Omega~:~f(\omega) = c_i\}.</M>  An example is shown below.
<CIMG web="simpstep2.png">Clearly the <M>A_i</M>'s partition <M>\Omega</M>.</CIMG>
The <M>A_i</M>'s need not always be just finite union of intervals. For example, in case of the Dirichlet function, we have
 just two <M>A_i</M>'s, one is <M>\qq\cap [0,1]</M>  and the other <M>\qq^c\cap [0,1].</M>  However, we always have only
 finitely many <M>A_i</M>'s. We can now write the simple function as 
<D>f(\omega) = \sum_{i=1}^k c_i\ind_{A_i}(\omega).</D>
Lebesgue wanted to think that each <M>c_i</M>  constributes a "rectangle" with  height <M>c_i</M>  on
 the base <M>A_i.</M> Such a "rectangle" should have
 area <M>c_i\times</M> length
 of <M>A_i</M>. But how to measure length of <M>A_i</M>'s, if they are not just 
 countable unions of intervals? It is this thing that first
 led him to create measure
 theory. As we have already
 stated, not all subsets
 are measurable. So naturally he restrited his attention to only those simple functions <M>\sum_i
 c_i\ind_{A_i}</M>, where the <M>A_i</M>'s are measurable. In modern language he assumed <M>A_i\in\calB.</M>  (By the way,
 he had originally used a much larger <M>\sigma</M>-algebra called the Lebesgue
 <M>\sigma</M>-algebra, which we rarely use nowadays).  
 
<EXR>Prove that  <M>\sum_i c_i\ind_{A_i}</M>    is measureable if and only if <M>\forall i~~A_i\in\calF.</M></EXR>

The next step in Lebesgue's intuition is to approximate the given function using simple functions,
 from below and from above. It turns out that this is possible for <I>every</I>  measurable non-negative function. Indeed,
the next theorem actually constructs a non-decreasing sequence of simple functions that approach the given
 function from below.  A very similar construction works for approximating the function from above. 
 
<HEAD2>Problem set 4</HEAD2>
<HEAD1>Lebesgue integration: details</HEAD1>
<THM>
If <M>f:\Omega\to[0,\infty)</M>  is any measurable function, then there is a non-decreasing sequence <M>(s_n)</M>  of simple
measurable functions such that
<D>\forall \omega\in\Omega~~s_n(\omega) \uparrow f(\omega).</D> 
</THM>
<PF>
For <M>n\in\nn</M>  and <M>\omega\in\Omega</M>  we define <M>s_n</M>  as follows. First partition the codomain
 <M>[0,\infty)</M>  into <M>2</M>  intervals <M>[0,n)</M>  and <M>[n,\infty)</M>  and then
 subdivide the first into equal subintervals of length <M>2^{-n}.</M>  So you get <M>N=n2^n+1</M>  subintervals in all. Call
 these <M>[a_1,b_1),...,[a_N,b_N).</M>  These constitute a partition of the codomain.

Now  set <M>s_n(\omega) = a_k</M>  if <M>f(\omega) \in[ a_k,b_k).</M>  

The following picture shows this process for <M>n=1</M>  and <M>n=2.</M>
<CIMG web="subdiv.png">Notice how the subdivisions for <M>n=2</M>  fit into those for <M>n=1.</M></CIMG>     

For each <M>\omega\in\Omega</M>  and for each <M>n\in\nn</M>  we have <M>s_n(\omega)\leq s_{n+1}(\omega).</M>
<BECAUSE>
If <M>s_n(\omega) = a</M>   and <M>s_{n+1}(\omega) = b,</M>  then <M>f(\omega)\in[a+2^{-n})</M>  and also <M>f(\omega)\in[b+2^{-n-1}).</M> 
 
So, by the contruction of the partitions, <M>[b+2^{-n-1})\seq[a,2^{-n}).</M>

Thus, <M>a\leq b,</M>  as required.
</BECAUSE>

Again, for each <M>\omega\in\Omega</M>  we have <M>s_n(\omega)\to f(\omega).</M>  
<BECAUSE>
To show:

<TGT>\forall \omega\in\Omega~~\forall \epsilon>0~~\exists M\in\nn~~\forall n\geq M ~~|f(\omega)-s_n(\omega)| < \epsilon.</TGT>

<FLL>\omega</FLL> Take any <M>\omega\in\Omega.</M>

<FLL>\epsilon</FLL> Take any <M>\epsilon>0.</M>

<EXS>M</EXS> Choose <M>M\in\nn</M>  such that <M>M> f(\omega)</M>  and <M>2^{-M} < \epsilon.</M>  (Possible since <M>\nn</M> 
 is unbounded above and <M>2^{-n}\to 0</M>  as <M>n\to \infty.</M>

<FLL>n</FLL> Take any <M>n\geq M.</M>

<CHK/>Since <M>f(\omega) < M\leq n,</M>  hence <M>s_n(\omega) < n.</M>  

Thus, <M>f(\omega) \in [s_n(\omega),s_n(\omega)+2^{-n}).</M>
</BECAUSE>
This completes the proof.
</PF>

<EXR>
Show that the convergence is uniform if <M>f</M>  is bounded.
</EXR>

<EXR>
Show that if, in the theorem above,  <M>f</M>  is measurable (w.r.t. any given <M>\sigma</M>-field <M>\calF</M>
 over <M>\Omega</M>  and the Borel <M>\sigma</M>-field over <M>\rr</M>), then so must be each <M>s_n.</M> 
</EXR>

The next step is to show that the red areas indeed converge to the supremum. 
<THM>
If <M>f</M>  is a non-negative measurable function, and <M>s_n</M>'s are simple random variables with <M>s_n\uparrow f,</M> 
 then <M>\int s_n \uparrow \int f.</M>
</THM>
<PF>
Shall show

<TGT>\forall \epsilon>0~~\exists N\in\nn~~\forall n\geq N~~ \int s_n > \int f-\epsilon.</TGT>

This will complete the proof, since anyway <M>(*(\int s_n)*)</M>  is a non-decreasing sequence bounded
 from above by <M>\int f</M> 
  (The case <M>\int f=\infty</M>  is trivially
 included in it). 

Since <M>\int f = \sup\{\int z~:~  z\leq f,~~z \mbox{ simple}\},</M>

hence <M>\exists</M> simple <M> z\leq f</M>  with <M>\int z > \int f-\epsilon.</M> 


Fix some <M>\delta>0.</M>

Let <M>A_n =\{s_n > z-\delta\}.</M>

Then <M>A_n\uparrow\Omega.</M>
<BECAUSE>
Since <M>s_n</M>'s are non-decreasing, hence <M>A_1\seq A_2\seq A_3\seq\cdots.</M>  

Also since <M>\forall\omega\in\Omega~~s_n(w)\uparrow f(w),</M>  hence <M>\cup_n A_n=\Omega.</M>  
</BECAUSE>  

So <M>\int s_n\geq \int_{A_n} s_n \geq \int_{A_n}z  \geq \int z-M\mu(A_n^c)-\delta,</M>
where <M>M = \max Z.</M>  

Taking limit <M>\lim \int s_n \geq z- \delta.</M>  

Since <M>\delta>0</M>  is arbitrary, we have <M>\lim \int s_n \geq \int z.</M>  
</PF>
<HEAD2>Problem set 5</HEAD2>
<HEAD1>Additivity</HEAD1>
We had stated last semester that if <M>X,Y</M>  are two jointly distributed random variables with expectations, and <M>a,b\in\rr</M> 
 are any two numbers, then <M>aX+bY</M>  is also a random variable with expectation, and <M>E(aX+bY) = aE(X)+bE(Y).</M>

First we show that <M>E(X+Y) = E(X)+E(Y)</M>  in three steps.

<U>Step 1</U>: Show this when <M>X,Y</M>  are  simple random variables. We have already done this last semester.

<U>Step 2</U>: Show this for non-negative <M>X,Y.</M>  Let <M>(S_n)</M>  and <M>(T_n)</M>  be simplifications for <M>X</M> 
 and <M>Y,</M>  respectively. Then <M>(S_n+T_n)</M>  is a simplification for <M>X+Y.</M>  

Also <M>E(S_n+T_n) = E(S_n)+E(T_n).</M>  Te result now follows on taking limit of both sides.

<U>Step 3</U>: Show this for general <M>X,Y.</M>  Here we apply step 2 to <M>X_+, X_-, Y_+</M>  and <M>Y_-.</M>  

Then we show that for <M>a>0</M>  we have <M>E(aX) = E(X).</M>  This proof also proceeds in three steps (left as an exercise).

Finally, we show <M>E(-X)= -E(X).</M>  Let <M>Y = -X.</M>  Then <M>Y_+ = X_-</M>  and <M>Y_- = X_+.</M>  So <M>E(Y) = E(Y_+)-E(Y_-) = E(X_-)-E(X_+) = -E(X).</M>

<HEAD1>Radon-Nikodym theorem</HEAD1>
<HEAD2>Problem set 6</HEAD2>

<HEAD1>Uses in probability theory</HEAD1>
<HEAD2>Expectation</HEAD2>
<HEAD2>Absolute continuity</HEAD2>

<HEAD1>Special cases</HEAD1>
We have defined <M>E(X)</M>  in three steps: simple, non-negative and general. But we have given a computational formula
 only in case of simple random variables. If <M>X</M>  takes countably infinite values, <M>x_1,x_2,...</M>  with probabilities
 <M>p_1,p_2,...,</M>  respectively, then we have mentioned that <M>E(X) = \sum_n x_n p_n</M>  if this sum is absolutely convergent.
 This formula actually follows from the general definition, as we now show.

<HEAD2>Countable case</HEAD2>
<THM>If <M>X</M>  takes the nonnegative values <M>x_1<x_2<\cdots</M>   with probabilities
 <M>p_1,p_2,...</M>  where <M>\sum p_i = 1,</M>  then 
<D>E(X) = \sum p_i x_i.</D>
</THM>
<PF>
To show 
<D>\sum p_i x_i = \sup\{E(U)~:~U\mbox{ simple, }U\leq X\}.</D>
Let <M>L= \sum_i p_i x_i,</M>  and <M>{\mathcal D}=\{E(U)~:~U\mbox{ simple, }U\leq X\}.</M>

This requires showing two things: 
<UL><LI><M>L</M>  is an upper bound of <M>{\mathcal D},</M></LI>
<LI>no number less than <M>L</M>  is an upper bound of <M>{\mathcal D}.</M></LI></UL>

<B>Step 1:</B>  To show

<D>\forall U\in{\mathcal D}~~E(U)\leq L.</D>

Take any  <M>U\in{\mathcal D}</M>  be any simple random variable. 

Let <M>U</M>  take only the values <M>u_1,...,u_k.</M>  

Let <M>p_{ij} = P(X=x_i, U=u_j).</M>

Then <M>E(U) =\sum_j (u_j \sum_i p_{ij}) = \sum_j\sum_i u_j p_{ij}.</M>  

Also <M>L = \sum_i x_i \sum_j
 p_{ij}=\sum_i  \sum_j x_i p_{ij}=\sum_j \sum_i x_i p_{ij}.</M>
<BECAUSE>
A finite sum can always be interchanged with an infinite sum, when the summands are all nonnegative. For example,
<D>\sum (a_n+b_n) = \sum a_n + \sum b_n.</D>
If we write <M>c_{1,n}=a_n</M>  and <M> c_{2,n}=b_n</M>  then this is 
<D>\sum_n \sum_i c_{i,n} = \sum_i \sum_n c_{i,n}.</D>  
</BECAUSE>
Now <M>p_{ij}>0\implies u_j\leq x_i.</M>  

Hence <M>\sum_i   u_j p_{ij}\leq \sum_i   x_i p_{ij},</M>  and so <M>\sum_j\sum_i   u_j p_{ij}\leq \sum_j\sum_i   x_i p_{ij}.</M>

Thus, <M>E(U)\leq L,</M>  as required.

<B>Step 2:</B>  Shall show that no <M>L'< L</M>  is an upper bound of <M>{\mathcal D},</M>  i.e.,

<D>\forall L'< L~~\exists U\in{\mathcal D}~~E(U)> L'.</D>  

Let <M>U_n</M>  be the random variable 
<D>
U_n =<CASES>X<IF>X=x_1,...,x_n</IF> 0<ELSE/></CASES>.
</D>  
Then <M>U_n</M>  is a simple random variable such that <M>U_n\leq X.</M> 

So <M>U_n\in{\mathcal D}.</M>
 
Also <M>E(U_n)
 =\sum_{i=1}^n p_i x_i\to L.</M>  

Hence <M>\exists N\in\nn~~E(U_N) > L'.</M>  

Choose this <M>U_N</M>  as our <M>U\in{\mathcal D}.</M>

Since <M>E(U) > L',</M> this completes the proof.
 </PF>


::<EXR>If <M>X</M>  takes the  values <M>x_1,x_2,...</M>  (not necessarily all nonnegative) with probabilities
 <M>p_1,p_2,...</M>  where <M>\sum p_i = 1</M> and <M>\sum |p_i x_i|<\infty,</M> then 
<D>E(X) = \sum p_i x_i.</D>
</EXR>
::<EXR>If <M>X</M>  takes the  values <M>x_1,x_2,...</M>  (not necessarily all nonnegative) with probabilities
 <M>p_1,p_2,...</M>  where <M>\sum p_i = 1</M> and <M>\sum |p_i x_i|=\infty,</M> then what are the possibilities for <M>E(X):</M> 
 finite, <M>\infty</M>, <M>-\infty</M>  or undefined? Give one example of each of the possibilities. Prove the impossibility
 of the other(s).
</EXR>

<HEAD2>Absolutely continuous case</HEAD2>
If a function is Riemann integrable (proper or improper), then it is also Lebesgue integrable, and the two integrals match. Indeed,
 that is why we could use Riemann integraion to compute expectation in the absolutely continuous case.

Riemann integration is defined in terms of step function with finitely many steps. Lebesgue integral is defined in terms of
 simple functions. Now any step function with finitelt many steps is also a simple function, though the converse is not true
 in general. For instance the function <M>f:(0,1)\to\rr</M>  defined by <M>f(x)=<CASES>1<IF>x\in\qq\cap(0,1)</IF> 0<ELSE/></CASES></M> is
 a simple function, but not s step function with finitely many steps. 

Thus, Lebesgue integrals may be expected to be more powerful than Riemann integrals. 

<THM>
Let <M>f:[a,b]\to\rr</M>  be any Riemann integrable function. Then it is also Lebesgue integrable and the Lebesgue integral
 equals the Riemann integral.
</THM>
<PF>
Let <M>S</M>  be the collection of all steps functions with finitely many steps defined on <M>[a,b].</M>

Let <M>T</M>  be the collection of all simple functions  defined on <M>[a,b].</M>

Since <M>f</M>  is Riemann integrable, its 
 lower and upper integrals match:
<D>\sup\{\area(s)~:~s\in S~s\leq f\} = \inf\{\area(s)~:~s\in S~s\geq f\}=R,\mbox{ say.}</D>
Since <M>f</M>  is Riemann integrable, hence it is bounded. Also it can be approximated by simple
 functions. So it is measurable. 

Now 
<M>\{\area(s)~:~s\in T~s\leq f\}</M>  is a bounded nonempty set. So <M>f</M>  is Lebesgue
 integrable over <M>[a,b].</M>  The value of the Lebesgue integral is the supremum, <M>L</M>, say.

Shall show <M>L=R.</M>
Since <M>S\seq T,</M>  hence <D>\{\area(s)~:~s\in S~s\leq f\} \seq \{\area(s)~:~s\in T~s\leq f\}.</D>
So <M>L\geq R.</M>

Now,  <M>\forall s\in S</M>  with <M>s\geq f,</M>  and <M>\forall t\in T</M>  with <M>t\leq f,</M>  we have
<M>t\leq s</M>  and  so <M>\int t \leq \int s=\area(s).</M>  

Taking sup over <M>t</M>  and inf over <M>s</M>, we see that <M>L\leq R.</M>

So <M>L = R.</M>
</PF>

<THM>
Let <M>f</M>  be a nonnegative function defined on <M>[a,\infty)</M>  such that <M>\forall b>a~~f</M>  is Riemann integrable
 on <M>[a,b].</M>  Then the Lebesgue integral <M>\int_{[a,\infty)} f </M> equals the
improper Riemann integral <M>\int_0^\infty f(x)\, dx</M> (both may be <M>\infty</M>).
</THM> 
<PF>
We already have <M>\int_a^{a+n} f(x)\, dx = \int_{[a,a+n]}f.</M>

Let <M>I_n</M>  be the common value. Then <M>(I_n)</M>  is a nondecreasing sequence. So the limit exists (may be <M>\infty</M>).
 
By definition  of improper Riemann integral,  <M>I_n\to \int_a^\infty f(x)\,dx.</M>

Again, by MCT <M>I_n\to \int_{[a,\infty)} f.</M>

Hence the result.
</PF>
<HEAD1>Monotone convergence theorem (MCT)</HEAD1>
<THM name="MCT (simple version)">
Let <M>X_n</M> 's be non-negative  random variables with <M>X_n\uparrow X</M>  for some random variable <M>X.</M>
 Then <M>E(X_n)\uparrow E(X).</M>
</THM>
<PF>
Enough to show simple random variables <M>Y_n</M>  such that <M>Y_n\uparrow X </M> and <M>Y_n\leq X_n.</M>
<BECAUSE>
We already know <M>E(Y_n)\uparrow E(X).</M>  But <M>E(X_n)</M>  is sandwiched between <M>E(Y_n)</M>  and <M>E(X).</M>
</BECAUSE>
Let <M>(Z_{n,k})_k</M>  be the simplification of <M>X_n.</M>  

Let <M>Y_n = \max\{Z_{1,n},...,Z_{n,n}\}.</M>

Then <M>Y_1\leq Y_2\leq\cdots</M>
<BECAUSE>
<MULTILINE>
Y_{n+1} & = & \max\{Z_{1,n+1},...,Z_{n+1,n+1}\}\\
& \geq & \max\{Z_{1,n+1},...,Z_{n,n+1}\}<SINCE><M>\because</M> superset cannot have smaller max</SINCE>\\
& \geq & \max\{Z_{1,n},...,Z_{n,n}\},
</MULTILINE>
by non-decreasing property of <M>Z_{n,k}</M>  w.r.t. <M>k.</M>
</BECAUSE>
Also <M>Y_n\leq X_n.</M>
<BECAUSE>
<M>Z_{k,n}\leq X_k\leq X_n.</M>
</BECAUSE>
Finally, <M>Y_n\uparrow X.</M>
<BECAUSE>
We have <M>Z_{n,k} \leq Y_k.</M>  

Taking limit as <M>k\to \infty,</M>  we have <M>X_n\leq \lim_k Y_k.</M>

Now taking limit as <M>n\to \infty,</M>  we have <M>X\leq \lim_k Y_k.</M>  

Also we have <M>Y_n\leq X_n\leq X.</M>  So <M>\lim_k Y_k\leq X.</M>  

Hence <M>\lim_k Y_k= X.</M>
</BECAUSE>
This completes the proof.
</PF>

<EXR>
If <M>(X_n)</M>  is a <I>nonincreasing</I> sequence of nonnegative random variables converging to some random variable <M>X,</M> 
 and <M>E(X_1)<\infty,</M>  then show that <M>E(X_n)\downarrow E(X).</M>  What if the assumption <M>E(X_1)<\infty</M>  is
 dropped?
</EXR>

<EXR>
Suppose that <M>X_n</M>'s are nonnegative random variables. Show that 
<D>E(\sum_1^\infty X_n) = \sum_1^\infty E(X_n).</D>
</EXR>
In the simple version we assumed that the limit of <M>(X_n)</M>  is a random variable. In particular, we assumed that for
 each <M>\omega\in\Omega</M>  the sequence <M>(X_n(\omega))</M>  converges to some real number. We may actually drop these
 assumptions. We may allow <M>(X_n(\omega))</M>  to diverge. Then the limit <M>X(\omega)</M>  is a function from <M>\Omega</M> 
 to <M>[0,\infty].</M>  One can then <I>show</I>  (not <I>assume</I>) that this <M>X</M>  is a random variable. We do this
 below.

<THM name="MCT (less simple version)">
Let <M>(X_n)</M>  be a sequence of random variables defined on <M>(\Omega,\calF,P)</M>  such that 
<D>\forall\omega\in\Omega~~0\leq X_1(\omega)\leq X_2(\omega)\leq\cdots.</D>
Let <M>X(\omega) = \sup\{ X_n(\omega)~:~n\in\nn\}</M>  (may be <M>\infty</M>). 
Then <M>X</M>  is also a random variable, and <M>E(X_n)\to E(X).</M>
</THM>
<PF>
The proof is somewhat long. But it may be split into a number of well-motivated steps.

<U>Step 1</U>: <B>Here we shall show that <M>X</M>  is a random variable.</B>

We need to show that <M>\forall B\in  \calB~~X ^{-1}(B)\in\calF.</M>

Since <M>\calB</M>  is generated by <M>\{(-\infty, t]~:~t\in\rr\},</M>  hence enough to show 
<M>\forall t\in\rr~~X ^{-1} ((-\infty,t])\in\calF,</M>  i.e., 
<D>\forall t\in\rr~~\{X\leq t\}\in\calF.</D>
But <M>\{X\leq t\} = \cap_n \{X_n\leq t\}.</M>
<BECAUSE>
<M>\because X = \sup X_n</M>, <M>\therefore (X\leq t)\iff(\forall n~~X_n\leq t). </M>
</BECAUSE>
Since <M>X_n</M>'s are random variables, hence <M>\forall n~~\{X_n\leq t\}\in\calF.</M>  

Again, since <M>\calF</M>  is closed under countable intersection, <M>\cap_n\{X_n\leq t\}\in\calF,</M>  completing step
 1.

<U>Step 2</U>: <B>Here we shall show <M>\lim_n E(X_n) \leq E(X).</M></B>


But <M>(E(X_n))</M>  being a non-decreasing sequence, <M>\lim_n E(X_n) = \sup \{E(X_n)~:~n\in\nn\}.</M>

Again, since <M>X</M>  is a random variable (which is clearly nonnegative, since
 <M>X_n</M>'s are), <M>E(X)</M> 
 exists (may be <M>\infty</M>). 

Since <M>\forall n\in\nn~~X_n\leq X,</M>  hence <M>E(X_n)\leq E(X).</M>  So <M>\sup \{E(X_n)~:~n\in\nn\}\leq E(X).</M>  

Hence <M>\lim_n E(X_n) \leq E(X).</M>

<U>Step 3</U>: Here we shall show <M>\lim_n E(X_n) \geq E(X).</M>

We know that <M>E(X) = \sup\{E(S)~:~S\in \calD\},</M>  where <M>\calD = </M>  the set of all
 non-negative simple functions "strictly below"
 <M>X.</M>

Pick any <M>S\in \calD.</M>  

Our plan is to say ''Some <M>X_n</M>   must exceed <M>S.</M> '' But since we are dealing with
 functions, we have to be careful. 

Let <M>B_n = \{\omega\in\Omega~:~X_n(\omega) > S(\omega)\}.</M>  

Then <M>E(S\ind_{B_n})\leq E(X_n\ind_{B_n})\leq E(X_n).</M>
Our plan is to take limit over <M>n</M>  and claim that <M>E(S\ind_{B_n})\uparrow E(S).</M>

Then <M>B_n\seq B_{n+1}.</M>  
<BECAUSE>
<M>\forall\omega\in\Omega~~X_n(\omega)\leq X_{n+1}(\omega).</M>
</BECAUSE> 
Also <M>\cup_n B_n =\Omega.</M>
<BECAUSE>
Clearly, <M>\cup_n B_n \seq\Omega.</M>

Take any <M>\omega\in\Omega.</M>  

Since <M>X_n(\omega)\uparrow X(\omega), </M>  and <M>S(\omega) < X(\omega),</M>  hence <M>\exists n\in\nn ~~X_n(\omega) > S(\omega).</M>

So <M>\omega\in B_n.</M>
</BECAUSE>
Hence, by continuity of probability,  <M>E(S \ind_{B_n})\uparrow E(S).</M>  
<BECAUSE>
Let <M>S = \sum_1^r c_k \ind_{A_k}.</M>

Then <M>E(S\ind_{B_n}) = \sum_1^r c_k E(\ind_{A_k}\ind_{B_n}) = \sum_1^r c_k E(\ind_{A_k\cap B_n})=\sum_1^r c_k P(A_k\cap B_n).</M>

But <M>\lim_n(A_k\cap B_n) = A_k.</M>  

Hence, by continuity of probability, <M>\lim_n P(A_k\cap B_n) = P(A_k).</M>
</BECAUSE>
So we are now able to execute our plan, taking limit over <M>n</M>  of <M>E(S\ind_{B_n})\leq E(X_n)</M>
to get <M>E(S)\leq \lim E(X_n). </M>

But since this holds for all <M>S</M>  strictly less than <M>X,</M>  hence <M>E(X)\leq \lim_n E(X_n),</M>  
completing the proof.
</PF>
<HEAD1>Fatou and DCT</HEAD1>
<HEAD1>Existence of <M>Unif(0,1)</M></HEAD1>
We had talked about the fundamental theorem of probability in the last semester: for any CDF there is a random variable with
 that CDF. Indeed, this is the therem that powers every statement of the form "Let <M>X</M>  be a random variable with a
 given distribution." 

We had given a partial proof earlier in this course: We assumed the existence of a random variable with the <M>Unif(0,1)</M> 
 distribution, and provided a way to manufacture random variables following any given distribution using this.

So the only thing that remains to be checked is the existence of <M>Unif(0,1)</M>  random variables. 
For this we take <M>\Omega = (0,1)</M>  and <M>X:\Omega\to\rr</M>  as <M>X(\omega)=\omega.</M>  We take the Borel <M>\sigma</M>-field
 on <M>\Omega.</M>  Need to show the existence of <M>P:\calB\to[0,1]</M>  such that <M>\forall a<b\in(0,1)~~P(a,b) = b-a.</M>

For this we shall use a technical result called <TERM>Caratheodory extension</TERM>, which we shall not prove in this course.

<THM name=" Caratheodory extension">
Let <M>\Omega</M>  be a nonempty set and <M>\calF</M>  be an algebra over it. Let <M>\mu:\calF\to[0,\infty)</M>  be 
any countable additive function. Then <M>\mu</M>  can be extended to a unique measure over <M>\sigma(\calF).</M>
</THM>

Thanks to this result, we do not have to work with the entire <M>\calB.</M>  Instead, we shall choose a convenient <M>\calF</M> 
 such that <M>\calB = \sigma(\calF).</M>  

One such convenient <M>\calF</M>  is the collection of finite, disjoint unions of intervals in <M>[0,1].</M>  Some typical
 members are <M>(0,1),</M>  <M>(0,0.1]\cup [0.4,0.6).</M>  Since the union of two overlapping
 intervals is again an interval, it is not difficult to see that this <M>\calF</M>  is an algebra.
 We define <M>\mu</M>  over this as follows:
<D>\mu(*(\cup_1^n I_k) = \sum_1^n (b_k-a_k),</D>
where <M>I_k</M>'s are disjoint open/closed/semiopen intervals with end points <M>a_k</M>  and <M>b_k.</M>  

To see countable additivity, we take disjoint <M>A_1,A_2,...\in\calF.</M>     As each <M>A_n</M>  is a disjoint union of
 intervals inside <M>(0,1),</M>  hence <M>\cup A_n</M>  is a countable union of disjoint intervals, <M>I_1,I_2,...</M>

Let <M>m_i =\mu(I_i).</M>  

Since <M>m_i\geq 0</M>  we ge the result by rearrangement. 

The unique Caratheodory extension of this is our required <M>Unif(0,1)</M>  probability. 


</NOTE>@}
