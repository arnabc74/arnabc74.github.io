 @{<NOTE>
<TITLE>Notions from measure theory</TITLE><M>
\newcommand{\calF}{{\mathcal F}}
\newcommand{\calP}{{\mathcal P}}
\newcommand{\calB}{{\mathcal B}}
\newcommand{\calD}{{\mathcal D}}
\newcommand{\ind}{{\mathbb 1}}
\newcommand{\area}{\mathrm {area}}
</M>
<HEAD1>Lebesgue integration: the idea</HEAD1>
<HEAD2>Problem with Riemann integration</HEAD2>
We all know about
 Riemann integration. We shall illustrate the idea with a positive, bounded function
 <M>f:[a,b]\to\rr</M>. The idea is to measure
 the area under its graph by  approximating it with steps
 functions with finitely many steps. We do this from both above and below. For this we partition the domain of the function
 into finitely many intervals and raise rectangles on them as follows.
<CIMG web="rul.png"></CIMG>
The intuition is that if we take finer and finer partitions and raise the red rectangles as much as we can under the graph,
 we shall come arbitrarily close to the area under the graph. If we do the same from above  the graph using the blue rectangles,
 then also we should come arbitrarily close to the same area. So our intuition dictates that 
<Q>
sup (red area) = inf(blue area),
</Q>
and we plan to use this common value as the area under the curve. This brilliant intuition has just one loop hole, for many
 functions the sup does not equal the inf! We call such functions non-Riemann integrable, and try
 to avoid them at all costs.  However, these
 bad functions cannot be completely avoided, as they crop up naturally from time to time, usually as the limit of Riemann integrable
 functions. 
<HEAD2>Lebesgue's solution</HEAD2>
Lebesgue had a solution for this. Instead of partitioning the domain his plan was to partition the codomain. So he also
 got red rectangles below the graph and blue rectangles above as follows.
<CIMG web="lul.png"></CIMG>
 And like Riemann he also hoped that
<Q>
sup (red area) = inf(blue area),
</Q>
and he wanted to call this the area under the curve. Before exploring this idea further, let's get comfortable with splitting
 the codomain. 

<HEAD2>Problem set <PS/></HEAD2>
<EXR>Consider the following graph of a bounded, nonnegative function. Finitely many values are marked
 on the <M>y</M>-axis.
<CIMG web="splitex1.png"></CIMG>
 Draw horizontal lines through them, and obtain the red and blue areas. </EXR>

<EXR>Repeat for the following function.
<CIMG web="splitex2.png"></CIMG>
</EXR>

<HEAD1>Why Lebesgue's solution works</HEAD1>
Just based on these diagrams, you may think that Lebesgue's idea is no different from Riemann's
 idea. But actually, Lebesgue's
approximations are more flexible than Riemann's. To understand this look at the graph below, where
 we have shown the lower Lebesgue approximation using just 4 points in the codomain.
<CIMG web="lul2.png">Just three heights, but so many rectangles!</CIMG>
Each value in the codomain, can give birth to many rectangles, depending on the ups and downs of the curve. 

Indeed, a single height can give rise to infinitely many "rectangles"! 
For instance, the function
<D>f(x) =<CASES>1<IF>x\in\qq\cap[0,1]</IF> 0<ELSE/></CASES> </D> 
takes only two values, 0 and 1. Yet each value is taken infinitely often. 
So you can now feel why Lebesgue's approximations are more flexible than Riemann's:
<Q>
Riemann's approximations are special cases of Lebesgue's approximations, but
 not <I>vice versa</I>. 
</Q>

As a result here
 the sup(red) and inf(blue)
 match for a more general class
 of functions. 
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
 of <M>A_i</M>. But how to measure length of <M>A_i</M>'s? 
It is this question that first
 led him to create measure
 theory. 

<HEAD2>Problem set <PS/></HEAD2>

<EXR>There are two countries <M>T</M>  and <M>S.</M>  Every inhabitant of <M>T</M>  is at least as
 tall as every inhabitant of <M>B.</M>  Consider the two statements:
<OL>
<LI>the height of shortest inhabitant of <M>T</M>  equals that of the tallest inhabitant of <M>S.</M></LI>
<LI>the height of shortest lady of <M>T</M>  equals that of the tallest lady of <M>S.</M></LI>
</OL>
Then which of the following is/are true?
<HL>
<LI><M>1\Rightarrow 2</M>  but <M>2\not\Rightarrow 1</M></LI>
<LI><M>2\Rightarrow 1</M>  but <M>1\not\Rightarrow 2</M></LI>
<LI><M>1\Leftrightarrow 2</M></LI>
<LI><M>1\not\Rightarrow 2</M>  and <M>2\not\Rightarrow 1</M></LI>
</HL>
 </EXR>
<EXR>Let <M>A</M>  be the set of all step functions with domain <M>[0,1]</M>  with finitely many steps.
 Let <M>B</M>  be the set of all simple functions with the same domain. Then which of the following is true?
<OL>
<LI><M>A\subsetneq B</M></LI>
<LI><M>B\subsetneq A</M></LI>
</OL>
</EXR>


<HEAD1>Defining 'length'</HEAD1>
Suppose that we are trying to defined Lebesgue integral over an
interval <M>[a,b].</M> Then we need to define 'length's of subsets of <M>[a,b].</M>
Instead of writing 'length', we shall use the
letter <M>\lambda(A)</M> to mean 'length' of <M>A\seq[a,b].</M>
<UL><LI>
We know that if <M>A = [s,t]</M>, then <M>\lambda(A)=t-s.</M>

In particular, <M>\lambda(\{t\}) = \lambda([a,a]= 0</M> have length 0, and
so <M>\lambda((s,t))=\lambda((s,t])=\lambda([s,t))=t-s.</M>
</LI>
<LI>Length should satisfy  countable additivity of disjoint
sets. In other words, if <M>A_1,A_2,...\seq [a,b]</M> are
disjoint sets for which we have defined length,
then <M>\lambda(\cup A_n)</M> should be <M>\sum \lambda (A_n).</M> 

Thus, the "length" of the set of all rationals
in <M>\lambda(\qq\cap [a,b])=0,</M> and hence 
The "length" of all irrationals in <M>\lambda(\qq^c\cap[0,1])=b-a.</M>
</LI></UL>
 Proceeding in this way we can <I>reasonably hope</I> to extend the
definition of <M>\lambda</M> to a class of subsets of <M>\rr</M> which
contains all the intervals, and is
closed wrt countable union, intersection and complementation. Can
 we really do this? The short answer is "Yes". A
 more detailed answer starts with a few definitions.

<DEFN name="$ \sigma $-algebra">
If a collection of subsets of some set <M>\Omega</M> is closed
under countable set operations (intersection, union,
complementation) and contains <M>\Omega</M> we call it a <TERM>$\sigma $-algebra</TERM> over <M>\Omega.</M>
</DEFN>


<DEFN name="Borel $ \sigma $-algebra">
The <TERM>Borel $ \sigma $-algebra</TERM> over <M>[a,b]</M> is
defined as the smallest $ \sigma $-algebra over <M>[a,b]</M>
containing all the interval subsets of <M>[a,b].</M>
</DEFN>

Here the term "smallest" needs some attention. How do we know
there is indeed such "the smallest" $ \sigma $-algebra? 

<BECAUSE>
The power set of <M>[a,b]</M> is a <M>\sigma</M>-algebra containing all the interval subsets. Also, the intersection of 
two <M>\sigma</M>-algebras is again a <M>\sigma</M>-algebra, as is trivially obvious from the definition.
</BECAUSE>

Instead of saying the "smallest <M>\sigma</M>-algebra containing such-n-such sets" we more often
 say "<M>\sigma</M>-algebra <TERM>generated</TERM>
 by such-n-such sets."

We shall denote the  <TERM>Borel <M>\sigma </M>-algebra</TERM> by <M>\calB.</M>  Its members are
 called <TERM>Borel sets</TERM>.

As we have already commented it seems to be a <I>reasonable hope</I>  that we should be able to define <M>\lambda(B)</M> 
 for all <M>B\in\calB.</M>  This hope indeed comes true, thanks to the following theorem. 

<THM name=" Caratheodory extension">
Let <M>\Omega</M>  be a nonempty set and <M>\calD</M>  be a <M>\sigma</M>-algebra on it. We want to specify a measure <M>\mu</M> 
 on it. For this it it enough to specify <M>\mu</M>  on a subcollection <M>\calF</M>   collection of subsets if  
<OL>
<LI><M>\mu</M>  is nonnegative and countably additive,</LI>
<LI><M>\mu(\Omega) < \infty,</M></LI>
<LI><M>\calF</M>  generates <M>\calD</M>,</LI>
<LI><M>\calF</M>  is closed under finite intersection,</LI>
<LI><M>\forall A\in\calF~~\exists \mbox{disjoint }B_1,...,B_n\in\calF~~A^c = \cup_1^n B_i.</M></LI>
</OL>
</THM>
We shall not prove this in this course. But let us understand the significance of the conditions.
<OL>
<LI> The first condition is
 clearly necessary. If <M>\mu</M>  already fails to be nonnegative or countably additive on <M>\calF</M>  how can we expect
 it to be a measure when extended to  <M>\calB?</M></LI>
<LI>The finiteness condition is just a technical condtion, that we shall relax later.</LI>
<LI>  If we specify <M>\mu</M>
  for each and every set
 in <M>\calB,</M>  then
 of course it would suffice. But that woluld be too much work. Our aim is to specify <M>\mu</M>  for only a smaller number
 of the sets. Clearly, we cannot fall below a generating set. So the third condition puts a lower bound on how low we can go.</LI>
<LI>
 But that lower bound may actually prove to be too low. <M>\calF</M> must
 be "rich" enough. If you specify
 <M>\mu</M>  on <M>A</M>  and <M>B,</M>  then you should also specify it for <M>A\cap B,</M>  to help determine how much
 <M>A,B</M>  overlap each other.</LI>
<LI>This condition takes care of the complementation.  For each <M>A</M>  we should be able to express <M>A^c</M>  as
 a finite union of sets
 for which <M>\mu</M>  has been specified.</LI></OL>

Our <I>reasonable hope</I>  comes true once we take <M>\calF</M>  to the collection of all intervals in <M>[a,b]</M>  and
 <M>\calD = \calB.</M>

Thus we are now able to define <M>\lambda (B)</M>  for all Borel <M>B\seq[a,b].</M>
Usually, <M>\lambda(B)</M> is called
the <TERM>Lebesgue measure</TERM>  of <M>B.</M>
If <M>B</M>  is not Borel, then <M>\lambda(B)</M>  is undefined.

<HEAD1>Back to Lebesgue integral</HEAD1>

As not all subsets  are measurable, he naturally  restricted his attention to only those simple functions <M>\sum_i
 c_i\ind_{A_i}</M>, where the <M>A_i\in\calB.</M>
 
<ALERT/>Historically, Lebesgue did not use Borel <M>\sigma</M>-algebra. He had constructed his own <M>\sigma</M>-algebra
 (which is now called the Lebesgue <M>\sigma</M>-algebra). It is a much larger superset of the
 Borel <M>\sigma</M>-algebra,
 and is also more difficult to work with. That is why most modern treatments of measure theory
 work with the Borel <M>\sigma</M>-algebra instead of  the Lebesgue <M>\sigma</M>-algebra. 

The next step in Lebesgue's intuition is to approximate the given function using simple functions,
 from below and from above. 

We want to  make sup(red) and inf(blue) equal. It turns out (a non-trivial theorem) that this will
 happen if and only if 
<D>\forall B\in\calB~~f ^{-1} (B)\in \calB.</D>
Such  functions are called <TERM>measurable</TERM> 
 functions. A word or warning here: Don't forget that we are working with only nonnegative, bounded functions over <M>[a,b].</M> 
 
 functions here. So we are stating that <I>such a function</I> is Lebesgue integrable iff it is measurable. 

If we allow functions that take both positive and negative values, and are unbounded, then the result may fail. But don't
 worry, we shall take care of that soon, by considering the positive and the negative parts separately. 

You will recall that we had arrived at precisely the same condition while defining random variables. So we may say that all
 nonnegative, bounded
 random variables are Lebesgue integrable. 
 
<HEAD2>Problem set <PS/></HEAD2>

<EXR>Find <M>\int f\, d \lambda,</M>  where 
<D>f(x) = <CASES>1<IF>x\in\qq^c\cap [0,1]</IF> 0<ELSE/></CASES> </D>
What is <M>\int_0^1 f(x)\, dx</M>  using Riemann integration?
</EXR>

<EXR>Prove that  <M>\sum_i c_i\ind_{A_i}</M>    is measureable if and only if <M>\forall i~~A_i\in\calB.</M></EXR>

<HEAD1>Generalising the solution</HEAD1>
Lebesgue's approach can be generalised in different ways. We shall discuss these now.
<HEAD2>Allowing unbounded functions and unbounded domains</HEAD2>
Since the Lebesgue integral exists for all bounded, non-negative measurable functions, hence it is enough to consider only
 the sup of the approximations from below. This immediately allows us to define Lebesgue integral
 for unbounded, measurable functions
 as well. We just allow the sup to be <M>\infty.</M>  

Similarly we may now carry out the procedure
 over an unbounded  domain, like <M>\rr</M>  or <M>(0,\infty)</M>  etc.  There are just one
 problem. In Caratheodory extension theorem we had a condition <M>\mu(\Omega)< \infty.</M> This worked well with us since
 for any <M>a \leq b </M> we had <M>\lambda([a,b]) = b-a < \infty.</M>  But clearly <M>\lambda(\rr) =\infty.</M>  Fortunately,
 Caratheodory extension theorem has a version that replaces the condition <M>\mu(\Omega)< \infty</M>  with <M>\mu(\Omega_i) < \infty</M> 
 where <M>\Omega = \cup_{i=1}^\infty \Omega_i</M>  is a disjoint union. This condition is satisfied here as <M>\lambda((n,n+1]) < \infty.</M> 
 
There is also a minor trouble involving defining area of rectangles with base length infinite. 
 Any "rectangle" with base
length <M>\infty</M>  and positive height has area <M>\infty</M>, and any "rectangle" with zero
 height has zero area (even if its base has measure <M>\infty</M>).  

Now that we are allowing the Lebesgue integral to equal <M>\infty,</M>  we need a little shift in terminology: We shall say
 that a nonnegative function is <TERM>Lebesgue integrable</TERM>  if its Lebesgue integral is finite.

<HEAD2>Allowing negative values</HEAD2>
Moving from non-negative functions to general functions is easy. For <M>f:\rr\to\rr</M>  we define <M>f_+ =\max\{f,0\}</M> 
 and <M>f_- =\max\{-f,0\}.</M>  Then <M>f = f_+-f_-.</M>  We define <M>\int f\, d \lambda = \int f_+\, d \lambda -\int f_-\, d \lambda,</M>  if
 both the integrals on the rhs are not <M>\infty.</M>

We shall say a function <M>f</M>  (possibly taking both positive and negative values)
 <TERM>Lebesgue integrable</TERM>  if both <M>f_+</M>  and <M>f_-</M>  are Lebesgue integrable.

<HEAD2>Problem set <PS/></HEAD2>
<EXR>Find <M>\int f(x)\, d \lambda</M>  where <M>f:\rr\to\rr</M>  is defined as  <M>f(x)
 =<CASES>2<IF>x\in\qq^c</IF>-1<ELSE/></CASES></M></EXR>

<EXR>Find <M>\int f(x)\, d \lambda</M>  where <M>f(x)=x.</M></EXR>

<EXR>Show that <M>\int f\, d \lambda</M>  exists, then so must <M>\int (-f)\, d \lambda</M>  and <M>\int (-f)\, d \lambda = -\int f\, d \lambda.</M></EXR>

<HEAD1>General measures</HEAD1>
For a simple function <M>\sum_{i=1}^n c_i 1_{A_i}</M> we defined the Lebesgue integral as
<D>\sum_{i=1}^n c_i \lambda(A_i),</D>
where <M>c_i</M>  is the height of the <M>i</M>-th rectangle, and <M>\lambda(A_i)</M>  is the "length" of its base. Then
 we took supremum and infimum etc. It
 turns out that the entire process of defining Lebesgue integrals need only two properties of
 Lebesgue measure: its non-negativity and countable additivity over disjoint sets. The fact that
 the length of <M>(a,b)</M>  is <M>b-a</M>  is not important. This motivates the following
 generalisation of the concept of "length":
<UL><LI>
Our <M>f:\rr\to\rr</M>   may be replaced by <M>f:\Omega\to\rr</M>  for any non-empty set <M>\Omega.</M>  Typical choices
 for <M>\Omega</M>  could be <M>\rr^2</M>  or <M>\rr^3</M>  or some finite set. However, any non-empty set would do in general. 
</LI>
<LI>We just need some way to measuring the size of subsets of <M>\Omega.</M>  For <M>\rr</M>  we
 used "length". For subsets of
 <M>\rr^2</M>  we may use "area", while "volume" may be used for subsets of <M>\rr^3.</M>  For a
 finite <M>\Omega</M>  we may use "cardinality". All
 that we need is that the measure
 should be non-negative, and should add up over countably many disjoint sets, i.e., if
 we denote the "measure of size" of a set <M>A\seq\Omega</M>  by <M>\mu(A)</M>  then we want
 <M>\mu(A)\geq 0</M>  and 
<M>\mu(\cup_i A_i) = \sum_i\mu(A_i)</M>  for disjoint subsets  <M>A_1,A_2,...</M>
 of <M>\Omega.</M>
</LI>
<LI>As in the case of "length", it may not be possible  in general to define such <M>\mu</M>  for
 <I>all</I>  subsets of <M>\Omega.</M>  It is enough to be able to define it for a class of
 subsets of <M>\Omega</M>. But in order to do mathematical manipulations, that class should be
 closed under countable set
 operations (union, intersection,
 complementation). Any such class, as we have already learned, is called a  <M>\sigma</M>-algebra.
Once we have decided upon the <M>\sigma</M>-algebra and the measure to use, we shall work with simple functions
 <M>\sum_{i=1}^n c_i  1_{A_i}</M>  where the
 <M>A_i</M>'s are in the <M>\sigma</M>-algebra, so that we may compute <M>\mu(A_i).</M></LI></UL>

Let us write down the definition of a <TERM>measure</TERM>  clearly.

<DEFN name="Measure">
Let <M>\Omega</M>  be any non-empty set. Let <M>\calF</M>  be any <M>\sigma</M>-algebra on
 <M>\Omega.</M>  Then by a <TERM>measure</TERM>  we understand a function <M>\mu:\calF\to[0,\infty]</M>  such that 
<D>\forall \mbox{disjoint }A_1,A_2,...\in\calF~~\mu(\cup A_i) = \sum\mu(A_i)</D>
</DEFN>
Notice that we have allowed <M>\mu(A) = \infty.</M>  For instance, "length" of <M>(0,\infty)</M>  is <M>\infty,</M>  and
 "area" of <M>\rr^2</M>  is also <M>\infty.</M>

Everything else now follows as in case of "length", we have "red rectangles" from below and "blue
 rectangles" from above. For a very general class of functions we have sup(red) = inf(blue). For
any such nice function, <M>f</M>,  we define this common value to be the <TERM>Lebesgue
 integral</TERM>  of <M>f</M>  wrt <M>\mu</M>, and write it as 
<D>\int f\, d\mu.</D>
In particular, if <M>f</M>  is itself a simple function 
<D>f(x) = \sum_{i=1}^n c_i 1_{A_i},</D> 
then we have 
<D>\int f\, d\mu = \sum_{i=1}^n c_i \mu(A_i).</D> 
Of course, we need all the <M>A_i</M>'s to be in the <M>\sigma</M>-algebra we are using. Otherwise, <M>\mu(A_i)</M>  would
 not make any sense.

<HEAD2>Problem set <PS/></HEAD2>
<EXR>Let <M>\Omega = \{1,...,9\}.</M>  We defne, for any <M>A\seq\Omega</M>, its measure as
<M>\mu(A) = |A|,</M>  the
 number of elements in <M>A.</M>  Consider <M>f:\Omega\to\rr</M>  as <M>f(i) = i (\mbox{mod }2) + 1.</M>  Find <M>\int f\, d\mu.</M></EXR>
<EXR>Show that any <M>\sigma</M>-algebra on <M>\Omega</M>  must contain <M>\phi</M>  and <M>\Omega.</M></EXR>
<EXR>Is <M>\calP(\Omega)</M>  a <M>\sigma</M>-algebra on <M>\Omega?</M>
<ANS>
Yes. It is the largest <M>\sigma</M>-algebra on <M>\Omega.</M>
</ANS></EXR>
<EXR>Is <M>\{\phi,\Omega\}</M>  a <M>\sigma</M>-algebra on <M>\Omega?</M>
<ANS>Yes, it is the smallest <M>\sigma</M>-algebra on <M>\Omega.</M></ANS></EXR>

<EXR>Show that for any measure <M>\mu(\phi)=0.</M></EXR>  

<EXR>If <M>\mu(A) = 3</M>  and <M>\mu(B) = 5.5</M>  and <M>\mu(A\cap B) = 2</M>, then what is <M>\mu(A\cup B)?</M></EXR>

When we take some probability measure in place of <M>\mu,</M>  we get the familiar definition of expectation. 

<COMMENT>
<THEAD1>Constructing a measure from intuition</THEAD1>
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

<THEAD2>Problem set <TPS/></THEAD2>
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
Let <M>A = (0,1).</M>  How many <M>B_i</M>'s would you need? What if <M>B  = [0,1]?</M>  or <M>[a, \infty)?</M>  or <M>(-\infty,5)?</M> 
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

The next exercise asks you to prove the existence of <M>Unif(0,1),</M>  thus completing the
 proof of the fundamental theorem. 

<EXR>Follow the same procedure as in the exiercises above to show that there is a measure 
 on <M>\Omega = (0,1)</M>  such that for each <M>0 \leq a \leq b\leq 1</M>  we have
 <M>\mu((a,b))=\mu((a,b]) =\mu([a,b)) =\mu([a,b])=b-a.</M>  Show that this <M>\mu</M>  is a
 probability. This is called <M>Unif(0,1).</M>    </EXR>
<THEAD1>Uncountable sample space</THEAD1>
We have already seen last semester that for an uncountable <M>\Omega</M>  we may not always be able
 to define a function <M>P:{\mathcal P}(\Omega)\to[0,1]</M> 
 satisfying all the probability axioms.  Please see <LINK to="../prob1_2024/vitali.html">this page
 from the last semester</LINK>  to brush up on this. 

Hence we defined <M>\sigma</M>-algebra. While the simplest <M>\sigma</M>-algebras are the trivial one and the entire power
 set, the most commonly used is the Borel <M>\sigma</M>-algebra. 

Closely related to this is the idea of a measurable function.
</COMMENT>
<HEAD1>Expectation as Lebesgue integral</HEAD1>
We have mentioned earlier that for Lebesgue integrals sup(red)=inf(blue) for a rather general class
 of functions. In particular, when we worked with <M>f</M>  defined on   <M>\rr</M>  equipped with <M>\calB</M>
  and <M>\lambda</M>, we had given a characterisation of all functions for which the Lebesgue
 integral <M>\int f\, d \lambda</M>  exists: 
<D>\forall B\in\calB~~f ^{-1}(B)\in\calB.</D>
It is not unexpected that if <M>f</M>  is defined on <M>\Omega</M>  equipped with <M>\calF</M>  and <M>\mu,</M>  then the
 characterisation is
<D>\forall B\in\calB~~f ^{-1}(B)\in\calF.</D>
Such functions are called <TERM>measurable</TERM>  functions. These functions are very nicely behaved. In particular, limits
 of measurable functions are again measurable. This is the most important reason for preferring Lebesgue integration over Riemann integration.
 If <M>f_n\to f</M>  pointwise, and <M>\int f_n\, d \mu</M>  exist for each <M>n,</M>  then the existence of <M>\int f\, d \mu</M> 
 is immediately guaraneteed. 

Interestingly, the concept of a measurable function also arises in a different way in probability theory. Let <M>X</M>  be
 a random variable. We know that underlying every random variable there is a random experiment, or
 more precisely, a  probability space
 <M>(\Omega,\calF, P)</M>  such that
 <M>X:\Omega\to\rr.</M>  When we want to talk
 about things like  <M>P(X\in
 B)</M>  we actually mean
 <M>P(\{\omega~:~X(\omega)\in B\})</M> or <M>P(X ^{-1}(B)).</M> In order for this to be defined we need <M>X ^{-1}(B)\in\calF.</M> 
 In other words, we need a random variable to be measurable. Indeed, this is part of the definition of a random variable.
 
<DEFN name="Random variable">
Let <M>(\Omega,\calF, P)</M>  be a probability space. By a <TERM>random variable</TERM>  we mean a measurable function <M>X:\Omega\to\rr,</M> 
 i.e., 
<D>\forall B\in\calB~~X^{-1}(B)\in\calF.</D>
</DEFN>


<HEAD2>Problem set <PS/></HEAD2>
<EXR>Characterise measurable functions from <M>(\rr,\calP(\rr))</M>  to <M>(\rr,\{\phi,\rr\}).</M> 
</EXR>
<EXR>Characterise measurable functions from  <M>(\rr,\{\phi,\rr\})</M>  to <M>(\rr,\calP(\rr))</M>. 
</EXR>


<HEAD1>Two technical results</HEAD1>
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


The next step is to show that the red areas indeed converge to the supremum (since we are also
 allowing the supremum to be <M>\infty</M>, we should better say <I>diverge</I> to the supremum in that case). 
<THM>
If <M>f</M>  is a non-negative measurable function, and <M>s_n</M>'s are simple random variables with <M>s_n\uparrow f,</M> 
 then <M>\int s_n \uparrow \int f.</M>
</THM>
<PF>
We shall only deal with the case <M>\int f < \infty.</M>  The case <M>\int f = \infty</M>  is left as an exercise.

Shall show

<TGT>\forall \epsilon>0~~\exists N\in\nn~~\forall n\geq N~~ \int s_n > \int f-\epsilon.</TGT>

This will complete the proof, since anyway <M>(*(\int s_n)*)</M>  is a non-decreasing sequence bounded
 from above by <M>\int f</M> 


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

But we had <M>\int z > \int f- \epsilon.</M>

Hence <M>\lim \int s_n > \int f- \epsilon,</M>  as required.
</PF>
<HEAD2>Problem set <PS/></HEAD2>
<EXR>
Show that the convergence in the first theorem is uniform if <M>f</M>  is bounded.
</EXR>

<EXR>
Show that if, in the first theorem above,  <M>f</M>  is measurable (w.r.t. any given <M>\sigma</M>-field <M>\calF</M>
 over <M>\Omega</M>  and the Borel <M>\sigma</M>-field over <M>\rr</M>), then so must be each <M>s_n.</M> 
</EXR>

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

<HEAD2>Problem set <PS/></HEAD2>
<HEAD1>Monotone convergence theorem (MCT)</HEAD1>
<THM name="Monotone convergence theorem (MCT)">
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
<HEAD2>Problem set <PS/></HEAD2>
<HEAD1>Fatou and DCT</HEAD1>
<THM name="Fatou's lemma">
Let <M>(X_n)</M>  be  a sequence of nonnegative random variables.  Then
<D>E(\liminf X_n) \leq \liminf E(X_n).</D>
</THM>
<PF>
Let <M>Y_n = \inf\{X_k~:~k\geq n\}.</M>

Then <M>Y_n\uparrow \liminf X_n.</M>

So, by MCT, <M>E(Y_n)\to E(\liminf X_n).</M>

Now <M>E(X_n) \geq E(Y_n).</M>

Hence 
<D>E(\liminf X_n) \leq \liminf E(X_n),</D>
as required.
</PF>

<THM name="Dominated Convergence Theorem (DCT)">
Let <M>(X_n)</M>  be a a sequence of random variables with <M>\forall n~~|X_n|\leq Y</M>  for some <M>Y</M>  
with <M>E(|Y|)< \infty.</M> Also let <M>X_n\to X.</M>  
 Then <M>E|X_n-X|\to 0</M>  and so, in particular, <M>E(X_n)\to E(X).</M>
</THM>
<PF>
Clearly, <M>|X|\leq Y.</M>

So, by triangle inequality, <M>|X_n-X|\leq |X_n|+|X|\leq 2Y.</M>

Let <M>Z_n = 2Y-|X_n-X|.</M>  Then <M>Z_n</M>'s are all nonnegative random variables. 

Applying Fatou's lemma to <M>(Z_n)</M>, we have 
<D>E(\liminf Z_n)\leq \liminf E(Z_n) = 2E(Y)-\limsup E|X_n-X| = 2E(Y).</D>
Now 
<D>\liminf Z_n = 2Y-\limsup|X_n-X| = 2Y,</D>
and 
<D>\liminf E(Z_n) = 2E(Y)-\limsup E|X_n-X| .</D>
So we have 
<D>2Y\leq 2Y-\limsup E|X_n-X|,</D>
or <M>\limsup E|X-n-X|\leq 0.</M>

Hence <M>E|X_n-X|\to 0,</M>  as required.
</PF>
<HEAD2>Problem set <PS/></HEAD2>
<HEAD1>Radon-Nikodym theorem</HEAD1>
<THM name="Radon-Nikodym theorem">
Let <M>\mu</M>  be any <M>sigma</M>-finite measure on <M>(\Omega,\calF).</M>  Let <M>\nu</M>  be another meaure on <M>(\Omega,\calF)</M> 
 with the property that 
<D>\forall B\in\calF~~(\mu(B)=0\Rightarrow\nu(B)=0).</D>
Then there is a measurable f <M>f:\Omega\to\rr</M>  such that for any measurable function <M>h:\Omega\to\rr</M>  we have
 <D>\int h\, d\nu = \int hf\, d\mu.</D> 
This <M>f</M>  is called a <TERM>density</TERM>  of <M>\nu</M>  wrt <M>\mu.</M>
</THM>
<PF>Omitted.</PF>

We have used a special case of this theorem, where <M>\nu</M>  is a probability measure and <M>\mu</M>  is the Lebesgue measure.
 Such probability measures are called <TERM>absolutely continuous</TERM>. We have worked with the special case where we had
 a density that was Riemann integrable as well.
 
<HEAD2>Problem set <PS/></HEAD2>

</NOTE>@}
