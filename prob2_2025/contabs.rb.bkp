 @{<NOTE>
<TITLE>Distributions with density</TITLE>
<HEAD1 u="https://youtu.be/AwB5Xw7Hedw">The concept of density</HEAD1>
We already know the following two definitions.
<DEFN name="Cumulative distribution function (CDF)">
Let <M>X</M>  be a random variable. By its <TERM>cumulative distribution function (CDF)</TERM> we mean the function <M>F:\rr\to[0,1]</M> 
 given by
<D>F(x) = P(X\leq x),\quad x\in\rr.</D>
</DEFN>

<DEFN name="Continuous distribution">A random variable <M>X</M>  is said to be  <TERM>continuous</TERM>  or to have a
 <TERM>continuous distribution</TERM>  if its CDF is continuous.</DEFN>
A special class of such random variables is given in the following definition:
<DEFN>A random variable <M>X</M>  is said to have <TERM>probability density function (PDF)</TERM> 
(or, more simply, a <TERM>density</TERM>) <M>f:\rr\to[0,\infty)</M>
if for every <M>a\leq b\in\rr</M>  we have 
<D>P(X\in[a,b]) = \int_a^b f(x)\, dx.</D>
</DEFN>
<COMMENT><ALERT/>A little point about integration is in order here. There are different types of integration possible, all denoted by the
 familiar <M>\int</M>  symbol. The type of integration that we learn at school is called Riemann integration. In probability
 theory, we use a generalisation of Riemann integration called <TERM>Lebesgue integration</TERM>. We shall introduce Lebesgue
 integration formally later in this course. Until then all our integrations will be in the familiar Riemann sense (possibly improper). So, in particular, we are assuming
 <M>f</M>  to be (improper) Riemann integrable over every interval. Since Riemann integration is a special case of Lebesgue
 integration, this will not cause any problem. 
</COMMENT>

<HEAD2>Properties of PDF</HEAD2>
The following facts all come from continuity of probability. 
<THM>
Let <M>X</M>  have a density <M>f(x).</M>  Then 
<OL>
<LI><M>\forall a\in\rr~~P(X=a) = 0.</M></LI>
<LI><M>\forall a<b\in\rr~~P(a < X < b) =P(a < X \leq b) =P(a \leq X < b) =P(a \leq X \leq b) = \int_a^b f(x)\, dx.</M></LI>
<LI><M>\forall a\in\rr~~P(a < X )  = P(a\leq X)=\int_a^\infty f(x)\, dx.</M></LI>
<LI><M>\forall a\in\rr~~P(X < a)  = P(X\leq a)=\int_ \infty^a f(x)\, dx.</M></LI>
<LI><M>\int_ \infty^ \infty f(x)\, dx = 1.</M></LI>
</OL>
</THM>

<HEAD2>Problem set <PS/></HEAD2>
::<EXR><EIMG web="rosspdf31.png"/></EXR>
::<EXR><EIMG web="rosspdf32.png"/></EXR>
::<EXR><EIMG web="rosspdf2.png"/></EXR>
::<EXR><EIMG web="rosspdf3.png"/></EXR>
::<EXR><EIMG web="rosspdf5.png"/></EXR>
::<EXR><EIMG web="rosspdf21.png"/></EXR>


::<EXR><EIMG web="hpspdf13.png"/></EXR>
::<EXR><EIMG web="hpspdf22.png"/></EXR>

<HEAD1 u="https://youtu.be/gNzIXFDJ5C8">More about PDF</HEAD1>
A PDF can look surprisingly complicated. We shall explore the general form later when we shall
 learn about something called the Lebesgue integral.  Fortunately, for all practical applications the PDF is quite simple:
 it is positive and Riemann integrable (in fact, usually continuous) on some interval, and vanishes outside it. We
 shall exclusively work with such PDFs.  There
 is a simple characterisation of such densities:
<THM>
Let <M>I</M>  be any interval in <M>\rr.</M>  Let <M>f:\rr\to[0,\infty)</M>  vanish outside <M>I.</M>  Then <M>f</M>  is
 a density of some random variable if and only if <M>\int_{-\infty}^\infty f(x)\, dx = 1.</M>
</THM>
We shall prove it soon. But first some examples.

<EXM>
<M>f(x) = <CASES>3x^2<IF>x\in (0,1)</IF> 0<ELSE/></CASES></M>
is one density.
</EXM>
The supporting interval may be unbounded. 
<EXM>
<M>f(x) = <CASES>2e^{-2x}<IF>x\in (0,\infty)</IF> 0<ELSE/></CASES></M>
is a density.
</EXM>
The density may be unbounded. 
<EXM>
<M>f(x) = <CASES>[[1][\pi\sqrt{x(1-x)}]]<IF>x\in (0,1)</IF> 0<ELSE/></CASES></M>
is a density.
</EXM>
Both the density and the supporting interval may be unbounded.
<EXM>
<M>f(x) = <CASES>cx^{-[[12]]} e^{-x/2}<IF>x\in (0,\infty)</IF> 0<ELSE/></CASES></M>
is a density.
</EXM>

<HEAD2>Problem set <PS/></HEAD2>

<EXR>Is <M>f(x) = [[1][\pi(1+x^2]]</M>  a density?</EXR>

<EXR>Is it possible to find <M>c\in\rr</M>  such that <M>f(x)=ce^{-|x|}</M>  is a density? Sketch the graph of <M>f(x).</M></EXR>

<EXR>Is it possible to find <M>c\in\rr</M>  such that <M>f(x)=<CASES>[[c][x]]<IF>x>0</IF> 0<ELSE/></CASES></M>  is a density?</EXR>

<HEAD1 u="https://youtu.be/RKzORDfHLSY">Proving the theorem (part 1)</HEAD1>
We know that the CDF of a random variable must satisfy the following conditions:
<OL><LI><M>F(x)</M>  must be non-decreasing.</LI>
<LI><M>\lim_{x\to-\infty} F(x) = 0.</M></LI>
<LI><M>\lim_{x\to\infty} F(x) = 1.</M></LI>
<LI><M>F</M>  must be right continuous.</LI>
</OL>
Conversely, the <TERM>fundamental theorem of probability</TERM>  guarantees that any <M>F:\rr\to[0,1]</M>  with these properties must
 be the CDF of some random variable (i.e., there must exist some probability space and a random variable defined on it with
<M>F</M>  as the CDF.

We have a similar characterisation for densities as well. This is given in the next theorem. 
 
<THM>
A function <M>f:\rr\to[0,\infty)</M>  is a density of some random variable if and only if  <M>\int_ {-\infty}
 ^\infty f(x)\, dx = 1.</M> 
</THM>
Let us start proving the theorem.

Let <M>F(x) = \int_{- \infty}^x f(t)\, dt.</M>  

Then 
<OL><LI> <M>F(x)</M>  is non-decreasing, because <M>f</M>  is non-negative.
</LI><LI>
<M>\lim_{x\to\infty} F(x) = 1</M>, since <M>\int_{-\infty}^\infty f(x)\, dx = 1.</M>  
</LI><LI>
<M>\lim_{x\to-\infty} F(x) = 0</M>.
<BECAUSE>
<M> F(x) =\int_{-\infty}^x f(x)\, dx = \int_{-\infty}^0 f(x)\, dx-\int_x^0 f(x)\, dx.</M>

So 
<MULTILINE>
\lim_{x\to-\infty} F(x) 
& = & \lim_{x\to-\infty} [*[ \int_{-\infty}^0 f(x)\, dx-\int_x^0 f(x)\, dx]*]\\
& = & \int_{-\infty}^0 f(x)\, dx-\lim_{x\to-\infty} \int_x^0 f(x)\,dx\\
 = \int_{-\infty}^0 f(x)\, dx-\int_{-\infty}^0 f(x)\, dx = 0.
</MULTILINE>
</BECAUSE></LI>
<LI>
Also <M>F</M>  is continuous (and so right continuous) everywhere.
<BECAUSE>
Take any <M>a\in\rr.</M>
<U>Case 1: <M>f</M>  is bounded by some <M>B>0</M>  in a neighbourhood of <M>a</M></U>:  
Then for any <M>x</M>  in that neighbourhood, we have
<M>|F(x)-F(a)| = [|[\int_a^{x} f(x)\, dx]|]\leq B|x-a|\to 0</M>
as <M>x\to a.</M>

<U>Case 2: <M>f</M>  is unbounded in every neighbourhood of <M>a</M></U>: Here the result will follow from property of 
improper Riemann integrals. We shall explore this in the exercies below.
</BECAUSE>
</LI></OL>
The proof is not yet over. But let us solve some problems to digest the argument so far.
<HEAD2>Problem set <PS/></HEAD2>
<EXR>
Consider a density with a graph as shown below.
<CIMG web="densunb.png"></CIMG>
Find <M>F(a).</M>  Then express <M>F(x)-F(a)</M>  as the difference of two integrals (you may use
 <M>b</M>  for this). Finally show that <M>\lim_{x\to a+} F(x)-F(a) = 0.</M> 
</EXR>
<EXR>
Consider the same density as in the last exercise.
Show (trivially) that <M>\lim_{y\to a-} F(y)-F(a) = 0.</M> 
</EXR>


<HEAD1 u="https://youtu.be/lSVLrhkst1Y">Proving the theorem (part 2)</HEAD1>

So by the fundamental theorem of probability, there exists a random variable <M>X</M>  with CDF  <M>F(x).</M>

To complete the proof we need to show that <M>X</M>  has PDF <M>f(x),</M>  i.e., 

<TGT>\forall a \leq b~~P(a \leq X \leq b) = \int_a^b f(t)\, dt.</TGT>

<FLL>a,b</FLL> Take any <M>a\leq b.</M>

Here <M>F</M>  is a continuous function. So <M>P(X=a) = 0.</M>

Hence 
<D>P(a\leq X\leq b) = P(a < X\leq b) = P(X\leq b)-P(X\leq a) = F(b)-F(a) = \int_{-\infty}^b f(t)\, dt-\int_{-\infty}^a f(t)\, dt = \int_a^b f(t)\, dt,</D>
completing the proof.
<HEAD2>From CDF to PDF</HEAD2>
It is possible to recover a density from the CDF as follows. Let <M>F</M>  be the CDF having a density. Then
<M>F</M> must be continuous.  Define <M>f</M>  as follows;
<D>f(x) = <CASES>F'(x)<IF>\mbox{it exists}</IF> 0<ELSE/></CASES> </D>
This <M>f</M>  must be a PDF for our CDF. For most applications, <M>F</M>  will fail to be differentiable at only finitely
 many points.

For this technique to work <M>F</M>  must actually have a density. Otherwise, the
 <M>f(x)</M>  obtained by this procedure will not be a density. 
For example, for a
 discrete distribution, the CDF is a step function, and so the above prescription would lead to <M>f(x)\equiv 0.</M>

If you are given a CDF <M>F</M>, and you do not know if it has a density, then you should stll define <M>f</M>  as above,
 and actually check if <M>\forall x\in\rr~~F(x) = \int_{-\infty}^x f(t)\, dt.</M>  

<HEAD2>Problem set <PS/></HEAD2>
::<EXR><EIMG web="rosspdf1.png"/></EXR>
::<EXR><EIMG web="rosspdf4.png"/></EXR>
::<EXR><EIMG web="hpspdf1.png"/>
The answer should not involve any limit of <M>F_X.</M>
</EXR>

::<EXR><EIMG web="hpspdf8.png"/>

Here is Equation (3) mentioned above:

<IMG web="hpspdf9.png">Equation 3</IMG></EXR>
::<EXR><EIMG web="hpspdf10.png"/>

Equation (3) is as given in the exercise above.
</EXR>
::<EXR><EIMG web="hpspdf14.png"/></EXR>
<HEAD1 u="https://youtu.be/e7osUxY0sUU">Nonuniqueness of density</HEAD1>
It is  a somewhat disconcerting fact that density of a distribution is not unique. For intance, 
 changing a density at any countable number of points to arbitrary non-negative values would still
 keep it a density for the same distribution.

<EXM>
<M>f(x)=<CASES>2e^{-2x}<IF>x>0</IF> 0<ELSE/></CASES></M>   and
<M>f(x)=<CASES>2e^{-2x}<IF>x>0,\,x\neq3</IF> 10000<IF>x=3</IF> 0<ELSE/></CASES></M>  
are both densities corresponding to the same distribution.
</EXM>
 However, the following result provides some relief.

<THM>
If <M>f(x)</M>  and <M>g(x)</M>  are both densities for the same distribution and both are continuous at some <M>a\in\rr,</M> 
 then <M>f(a)=g(a).</M>
</THM>
<PF>
Let, if possible, <M>f(a)\neq g(a).</M>  Say <M>f(a)> g(a).</M>  

Let <M>h(x) = f(x)-g(x).</M>  Then <M>h(x)</M>  is continuous at <M>x=a</M>  and <M>h(a)>0.</M>  

So <M>\exists\delta>0~~\forall x\in (a-\delta,a+\delta)~~h(x)>[[h(a)][2]].</M>

Hence <M>\int_{a-\delta}^{a+\delta} h(x)\, dx \geq \delta h(a) > 0.</M>

But this is impossible, since <M>\int_{a-\delta}^{a+\delta} f(x)\, dx =\int_{a-\delta}^{a+\delta} g(x)\, dx, </M>  since
 both are equal to <M>P(a-\delta< X < a + \delta).</M>
</PF>

Indeed, we shall mostly work with random variables <M>X,</M> for which there will be an density which will
 be continuous over an interval
 <M>I,</M>  for which <M>P(X\in I)=1.</M>
<HEAD2>Problem set <PS/></HEAD2>
<EXR>
If <M>f,g:\rr\to\rr</M>  are two functions such that <M>\forall a\leq b~~\int_a^b f(x)\, dx = \int_a^b g(x)\, dx,</M>  and
 they are both continuous at <M>x=c,</M>   then show that <M>f(c)=g(c).</M>  
<ANS>
Let, if possible,  <M>f(c)\neq g(c).</M>  Without loss of generality <M>f(c)< g(c),</M>  say. 

Consider <M>h(x) = g(x)-h(x).</M>

Then <M>h</M>  is continuous at <M>c</M>  and <M>h(c)>0.</M>  

Note that it is enough to show that
<D lab="*">\exists \delta>0~~\int_{a-\delta}^{a+\delta} h(x)\, dx>0.</D>
<BECAUSE> 
 This will complete the
 contradiction, because then <M>\int_{a-\delta}^{a+\delta} g(x)\, dx>\int_{a-\delta}^{a+\delta} f(x)\, dx,</M>  
contradicting the given condition. 
</BECAUSE>
Since <M>h(x)</M>  is continuous at <M>x=c,</M>  we have
<D>\forall \epsilon>0~~\exists \delta>0~~\forall x\in(c-\delta,c+\delta)~~h(x)\in(h(c)-\epsilon,h(c)+\epsilon).</D>
Choose <M>\epsilon= [[h(c)][2]]>0.</M>

Then  
<D>\exists \delta>0~~\forall x\in(c-\delta,c+\delta)~~h(x)\in(h(c)-\epsilon,h(c)+\epsilon).</D>
For any <M>x\in(c-\delta,c+\delta)</M>  we have <M>h(x)> h(c)-\epsilon = 2 \epsilon-\epsilon = \epsilon>0.</M>

So <M>\int_{a-\delta}^{a+\delta} h(x)\, dx\geq 2\delta \epsilon>0.</M>

Hence we have shown (*), completing the proof.
</ANS>
</EXR>
<EXR>
State true or false: if <M>f(x)</M>  is a density, and <M>g(x)</M>  is obtained by changing <M>f(x)</M>  at only countably
 many points, then <M>g(x)</M>  is also a density corresponding to the same distribution. (Assume that <M>g(x)</M>  is non-negative).
</EXR>

<EXR>State true or false: If a distribution has a density, then it also has a continuous density.</EXR>

<EXR>In this problem we shall say that a density  <M>f</M> "sits on"  an interval
 <M>I</M>  if<Q> <M>\forall
 x\in I~~f(x)>0</M>  and <M>f(x)</M>  vanishes outside <M>I.</M></Q>
  Let <M>f,g</M>  be two densities
 for the same distribution. If <M>f</M>  "sits on"an interval  <M>I</M>  and <M>g</M>  "sits on"
 an interval <M>J</M>, then show that the closure if <M>I</M>  and <M>J</M>   must match. (This closure is called the
<TERM>support</TERM>  of the distribution).
  </EXR>
<HEAD1 u="https://youtu.be/SDGTjfYfOZ4">Physical interpretation of density</HEAD1>
If <M>X</M>  has a density <M>f(x)</M>  which is continuous at <M>x=a</M>  then <M>f(a)</M>  measures
 "something like <M>P(X\approx a)</M>". However, there are not even approximately equal. In
 particular, <M>f(a)</M>  may very well exceed <M>1.</M>  The precise statement is 
<D>f(a) = \lim_{\epsilon\to 0+} [[P(X\in (a-\epsilon, a+\epsilon))][2 \epsilon]].</D>
Thus, if we have a density like the following, then <M>X</M>  is more likely to take values near <M>B</M>  than near <M>A</M> 
 or <M>C.</M>
 <CIMG web="pdfpeaks.png"/>
Just like everything else in probability theory, densities are also born out of statistical
 regularity. You might remember that probability came out of limit of proportions, and hence PMF
 was born out of barplots of relative frequencies. Similarly, densities are born of histograms, a graphical device to show
 relative frequency densities. Suppose that we have a random variable <M>X</M>  that can assume all values in an interval
 <M>[a,b].</M>  If we repeat the underlying random experiment a large number of times independently, then we shall get many
 values of <M>X</M>, that we can show along a number line:
<CIMG web="hist1.png">Random values of <M>X</M>  along the number line.</CIMG>
This plot, however, is too clutterred as many points get plotted on top of each other. A more lucid plot is the histogram:
<CIMG web="hist2.png">A histogram of the same random values of <M>X</M>.</CIMG>
 Here we have partitioned the range of <M>X</M>  into a number of subintervals (or
 <TERM>bin</TERM> s) and have computed the
<TERM>relative frequency density</TERM>
 for each bin as 
<D>\mbox{rel. freq density of a bin} = [[\mbox{number of points in the bin}][\mbox{sample size}\times
 \mbox{bin width}]].</D>
Then we have erected a rectangle on each bin with height equal to the relative frequency density for that bin. As sample
 size tends to infinity, the shape of the histogram stabilises due to statistical regularity. If we now make the bins finer
 and finer, then the limiting shape of the histogram approaches a certain shape, which is the PDF. 

<COMMENT>
png('image/hist%d.png')
x = rbeta(1000,3,6)
bareplot(x,rep(0,length(x)), ylim=c(-0.1,0.1))
abline(h=0)
hist(x,prob=T,ylab="Relative frequency density")
dev.off()
</COMMENT>
<HEAD2>Problem set <PS/></HEAD2>
<EXR>Get/download a large data set on some continuous variable (height, weight, blood pressure
 etc). Make a histogram of the first half using R:
<R>
hist(dat[1:(n/2)], prob=T)
</R>
Here <CODE>dat</CODE>  is the array storing the values. The length of the array is <CODE>n</CODE>. Notice the shape.
Now make a histogram of the rest of the data:
<R>
hist(dat[(n/2):n], prob=T)
</R>
If <CODE>n</CODE>  is large enough (say at least 5000), then you should see striking similarity between the shapes of these
 two histograms.
</EXR>

<EXR>This is a more specific version of the last exercise, where we shall work with audio data.
 Record some audio data of ambitent noise (e.g., sound of fan, AC, crowded place) using your laptop
 or mobile. (You should get a
 file with <CODE>.wav</CODE>
  or <CODE>.mp3</CODE>  extension).  If you cannot record yourself, you may use this hardly audible audio file <LINK
 to="test.wav">test.wav</LINK>  of me rubbing my hands together. Download it your machine. Load it using R:
<R>
install.packages('tuneR') #You need to do this only once.
library(tuneR)
dat = readWave('test.wav') #You may need to give the entire path of the file
hist(dat@left,probability=TRUE)
hist(dat@left,breaks=20,probability=TRUE) #finer histogram
</R>
</EXR>
<EXR>
Let <M>X_1,X_2,...</M>  be IID with some common density <M>f(x).</M>  Fix any <M>a<b.</M>  Let <M>Y_n</M>  be the proportion
 of the <M>X_1,...,X_n</M>  landing in <M>[a,b].</M>  (i.e., you count the number of <M>X_i</M>'s inside <M>[a,b]</M>  for
 <M>i=1,...,n,</M>  and divide that number by <M>n</M>). Show that <M>Y_n</M>  converges <M>\int_a^b f(x)\, dx.</M>  [Hint:
 Use the weak law of large numbers that you learned last semester.]
</EXR>
<HEAD1 u="https://youtu.be/JMx3Wcx37M4">Are continuous distributions counterintuitive?</HEAD1>
It may seem counterintuitive that  <M>\forall a\in\rr~~P(X=a)=0</M>, and yet <M>P(X\in\rr)=1.</M>  There are two ways to
 think about it:
<OL><LI>A straight line segment consists of individual points, each of which has lenth zero, yet
 the segment does have strictly positive length. The intuituion that lengths of constituents add
 up to the length of thw whole works only for the countable case.</LI>
<LI>But when we carry out the random experiment behind <M>X</M>  we do get some value <M>a.</M> 
 If <M>P(X=a)=0,</M>  then shouldn't <M>\{X=a\}</M>  be an impossible event? Actually, when we say
 <M>\{X=a\}</M>  we are making a measurement, and all measurements have finite precision. If the
 precision of the measurement is <M>\epsilon,</M>  then the satement ''<M>X</M>  is found to be
 <M>a</M>'' actually means <M>X\in[*[a-[[\epsilon2]], a+[[\epsilon2]])*),</M>  which indeed has some positive probability.</LI>
</OL>


<HEAD2>Problem set <PS/></HEAD2>
::<EXR>
If <M>X</M>  has density <M>e^{-x}</M>  for <M>x>0</M>  (and 0 else), then show that 
<D>\lim_{\epsilon\to0+}[[P(1-\epsilon,1+\epsilon)][2 \epsilon]] = [[1e]].</D>
</EXR>
::<EXR>
If <M>X</M>  has density <M>e^{-x}</M>  for <M>x>0</M>  (and 0 else), then show that 
<D>\lim_{\epsilon\to0+}[[P[2,2+\epsilon)][\epsilon]] = e^{-2}.</D>
</EXR>

<EXR>
If <M>X</M>  has density <M>f(x)</M>  which is continuous at <M>x=a,</M>  then prove that
<D>\lim_{\epsilon\to0+}[[P(a-\epsilon,a+\epsilon)][2 \epsilon]] = f(a).</D>
Can you drop the continuity assumption?
</EXR>

<EXR>
Let <M>X</M>  have density <M>f(x)=<CASES>1<IF>x\in(0,1)</IF> 0<ELSE/></CASES></M>  Find 
<D>\lim_{\epsilon\to0+}[[P(1-\epsilon,1+\epsilon)][2 \epsilon]].</D>  
</EXR>
<HEAD1 u="https://youtu.be/NbjZeS88QkE">Expectation and moments</HEAD1>

We had already defined expectation of a random variable in general. That definition reduces to the following.
<THM>
Let <M>X</M>  be a non-negative random variable with density <M>f.</M> 
Then <M>E(X)=\int_0^\infty x f(x)\, dx</M> (which may be <M>\infty</M>).
</THM>
We shall prove this near the end of this course. Until then we shall treat this as the definition
 of <M>E(X)</M>  when <M>X</M>  has density <M>f.</M>

If <M>X</M>  can take negative values, then we again use the <M>X_+</M>, <M>X_-</M>  technique.

The following familiar properties of expectation (which are actually consequences of the general
 definition) can be easily shown to hold in this special case:
<THM>
If <M>X, Y</M>  are jointly distributed  random variables with expectations defined (may be <M>\infty</M> 
 or <M>-\infty</M>), and <M>X\leq Y,</M> then <M>E(X)\leq E(Y).</M>
</THM> 

<THM name="Linearlity of expectation">
If <M>X,Y</M>  are jointly distributed random variables with finite expectations and
 <M>a,b\in\rr</M>, then <M>aX+bY</M>  also has finite expectation, <M>E(aX+bY) = aE(X)+bE(Y).</M>
</THM>
Both these properties follow directly from properties of integration.

The following theorem is also of a familiar form:
<THM>
Let <M>X</M>  be a random variable with density <M>f.</M>  Let <M>h:\rr\to\rr</M>  be a any function such that <M>h(X)</M> 
 is  a random variable. Then <M>E(h(X))=\int_{-\infty}^\infty h(x) f(x)\, dx</M>  if <M>\int_{-\infty}^\infty |h(x) f(x)|\, dx < \infty.</M> 
 If <M>\int_{-\infty}^\infty |h(x) f(x)|\, dx = \infty,</M>  then <M>E(h(X))</M>  does not exist.
</THM>
While we shall not prove this here, you should be aware of one subtle implication. Suppose that
 <M>X</M>  has density <M>f</M>  and we are trying to find <M>E(X^2).</M>  Then here are two ways of proceeding:
<OL><LI>Work out the distribution of <M>Y=X^2</M>  and find <M>E(Y)</M>  using the general
 definition, this may be very compicated to do in practice, but at least one can do this in principle.</LI>
<LI>Use the above theorem.</LI>
</OL> 
 Both the approaches should produce the same result. This is the main implication of the theorem. The usefulness of the theorem
lies in the fact that the second approach is usually much easier than the first. 


We define <M>V(X)</M>  and the other moments as usual. Their
properties (e.g., Chebyshev inequality) are intact.


<HEAD2>Problem set <PS/></HEAD2>
::<EXR><EIMG web="rosspdf6.png"/></EXR>
::<EXR><EIMG web="rosspdf7.png"/></EXR>
::<EXR><EIMG web="rosspdf8.png"/></EXR>
::<EXR><EIMG web="rosspdf26.png"/></EXR>
::<EXR><EIMG web="rosspdf27.png"/></EXR>
::<EXR><EIMG web="rosspdf33.png"/></EXR>
::<EXR><EIMG web="rosspdf34.png"/></EXR>
<HEAD1>Hazard rate</HEAD1>
An important class of distributions are called <TERM>life span distributions</TERM>. Imagine a
 huge population of perishable objects that have a well-defined life span. (e.g., animals,
 electronic components, but not vegetables, as "death" is not well-defined there). 
We pick one element at random and follow it until it dies.  Let <M>X</M>  be the age at death. Clearly, <M>X</M>  is a non-negative
 random variable. Typically we consider it as having a density. Then a quantity of interest is what is the chance of death
 at a given age. This gives rise to the following definition.
<DEFN name="Hazard rate">
If a non-negative <M>X</M>  has density <M>f</M>  and CDF <M>F,</M>  then its its <TERM>hazard rate</TERM>  at time <M>t\leq 0</M> 
 is 
<D>h(t) = [[f(t)][1-F(t)]],</D>
when <M>F(t) < 1.</M>
</DEFN>
We can think of it as 
<D>\lim_{\delta t\to 0+} P(X\leq t+\delta t | X > t) =\lim_{\delta t\to 0+} [[P(X\in [t,t+\delta t] ][ P(X > t) ]].</D>

<EXM>Let <M>X</M>  have density 
<D>f(x) = <CASES>e^{-x}<IF>x>0</IF> 0<ELSE/></CASES>. </D>
Find its hazard rate function.
<SOLN/>
<M>F(x) = <CASES>0<IF>x\leq 0</IF>1-e^{-x}<IF>x> 0</IF></CASES>.</M>  So 
<D>h(t) = [[e^{-t}][1-(1-e^{-t})]] = 1.</D>
</EXM>
<HEAD2>Problem set <PS/></HEAD2>
::<EXR><EIMG web="rosspdf17.png"/></EXR>
::<EXR><EIMG web="rosspdf18.png"/></EXR>
::<EXR><EIMG web="rosspdf28.png"/></EXR>
::<EXR><EIMG web="rosspdf29.png"/></EXR>
::<EXR><EIMG web="rosspdf39.png"/></EXR>
::<EXR><EIMG web="rosspdf40.png"/></EXR>
<HEAD1 u="https://youtu.be/PKqSKFayRZ0">Uniform distribution</HEAD1>
Last semester we often worked wih the discrete uniform distribution, e.g., fair coin toss, fair die roll, drawing a card
 from a well-shuffled deck, picking a ball at random, etc. For the continuous case, the analog is
 the <TERM>uniform distribution</TERM>. 
<DEFN name="Uniform distribution">
Let <M>A\seq \rr</M> (<M>\rr^2</M>  or <M>\rr^3</M>) have finite length (area or volume), <M>|A|.</M>   We say
 that <M>X</M>  has uniform
 distribution over <M>A</M>  if for any <M>B\seq A</M>  with length (area or volume) <M>|B|</M>  we have
<D>P(X\in B) = [[ |B| ][ |A| ]].</D>
</DEFN> 
<EXM>Let <M>Q</M>  be chosen randomly from the unit square in <M>\rr^2.</M>  If
 <M>Q\equiv(X,Y)</M>, then find <M>P(X< Y).</M><SOLN/>
Look at the following diagram. 
<CIMG web="unifsq.png"/>
Here <M>|A| = 1</M>  and <M>|B| = [[12]].</M>  So <M>P(X < Y) = P( (X,Y)\in B) = [[ |B| ][ |A| ]] = [[12]].</M>
</EXM>

<EXM>Let <M>X</M>  be uniformly distirbuted over <M>[0,1].</M>  Then find 
<FL>
<LI><M>P(X\leq -1)</M></LI>
<LI><M>P(X\leq 0)</M></LI>
<LI><M>P(*(X\leq [[12]])*)</M></LI>
<LI><M>P(X\leq 1)</M></LI>
<LI><M>P(X\leq 2)</M></LI>
</FL>
Sketch the CDF of <M>X.</M>  Does <M>X</M>  have a PDF?
<SOLN/>
<FL>
<LI><M>P(X\leq -1)=0,</M></LI>
<LI><M>P(X\leq 0)=0,</M></LI>
<LI><M>P(*(X\leq [[12]])*)=[[12]],</M></LI>
<LI><M>P(X\leq 1)=1,</M></LI>
<LI><M>P(X\leq 2)=1.</M></LI>
</FL>
<CIMG web="unifcdf.png">Sketch of the CDF</CIMG>
Yes, by differentiating it, we get a PDF 
<D>f(x) = <CASES>1<IF>x\in(0,1)</IF> 0<ELSE/></CASES>. </D>
We could replace <M>(0,1)</M>  by <M>[0,1]</M>  or <M>(0,1]</M>  or <M>[1,0).</M>
</EXM>
<HEAD2>Problem set <PS/></HEAD2>
::<EXR><EIMG web="hpspdf2.png"/></EXR>
::<EXR><EIMG web="hpspdf3.png"/></EXR>
::<EXR><EIMG web="hpspdf4.png"/></EXR>
::<EXR><EIMG web="hpspdf5.png"/></EXR>
::<EXR><EIMG web="hpspdf6.png"/></EXR>
::<EXR><EIMG web="hpspdf12.png"/></EXR>
::<EXR><EIMG web="hpspdf26.png"/></EXR>
::<EXR><EIMG web="rosspdf37.png"/></EXR>
::<EXR><EIMG web="rosspdf38.png"/></EXR>

::<EXR><EIMG web="rosspdf11.png"/></EXR>
::<EXR><EIMG web="rosspdf12.png"/></EXR>
::<EXR><EIMG web="rosspdf13.png"/></EXR>
::<EXR><EIMG web="rosspdf14.png"/></EXR>
::<EXR><EIMG web="rosspdf16.png"/></EXR>
::<EXR><EIMG web="rosspdf20.png"/></EXR>

<HEAD1>Miscellaneous</HEAD1>
<HEAD2>Problem set <PS/></HEAD2>


::<EXR><EIMG web="rosspdf22.png"/></EXR>
::<EXR><EIMG web="rosspdf25.png"/></EXR>
::<EXR><EIMG web="rosspdf37.png"/></EXR>
::<EXR><EIMG web="rosspdf38.png"/></EXR>
::<EXR><EIMG web="rosspdf36.png"/></EXR>

</NOTE>@}
