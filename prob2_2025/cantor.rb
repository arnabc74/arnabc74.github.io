@{<NOTE>
<TITLE>Different types of distributions</TITLE>
<HEAD1>Wierd distributions</HEAD1>
We hae talked about many different types of distributions. Here is a Venn diagram for the different types. 
<CIMG web="vendis.png"></CIMG>
As this diagram shows, there are distributions that are neither discrete nor continuous (green dot in the diagram). Also
 there are continuous distributions
 that do not admit a density (blue dot). We shall now take  a closer look at two such examples.

<HEAD2>Neither continuous nor discrete</HEAD2>
Such distributions abound in reality. Here is a simple example. Imagine a random light bulb with
 light span <M>X.</M>  This means if you turn it on, and never switch it off, and monitor it
 continuously to record the time when it gets fused, then that time is <M>X.</M>   Now, lifespans need to be found for lamps
 for quality control purposes. But it is not feasible to wait all the way until the toughest bulb burns itself out. Instead,
 the monotoring is done only up to a fixed time <M>t</M>, say. If the true life span is <M>X,</M>  then we record <M>Y</M> 
 where
<D>Y = <CASES>X<IF>X\leq t</IF> t<ELSE/></CASES></D>
We say that <M>Y</M>  is a obtained by <TERM>truncating</TERM>  <M>X</M>   at <M>t.</M>

If <M>X</M>  has a CDF like this:
<CIMG web="trunc1.png"></CIMG>
then <M>Y</M>  has a CDF like this:
<CIMG web="trunc2.png"></CIMG>
Though, strictly speaking it is neither continuous nor discrete, yet, colloqually, we often say
 that here we have <I>both</I>  density and mass. The density is up to <M>t,</M>  and the mass is at <M>t.</M>
 
<HEAD1 u="https://youtu.be/VKjHQ4K-3D0">Cantor distribution (graphically)</HEAD1>

The example we are going to describe is called <TERM>Cantor distribution</TERM>. As it has neither a PMF nor a density, we
 shall describe it using its CDF. But its CDF is not easy to write down directly. Instead, we shall construct a sequence
 of CDFs <M>(F_n)</M>  and express the Cantor CDF as their limit. 

<HEAD2>The sequence</HEAD2>
Consider the interval <M>S_0 = [0,1].</M>  If you remove its middle open one-third, then you will be
 left with <M>S_1 = [*[0,[[13]] ]*]\cup[*[ [[23]],1 ]*].</M> 
 If you apply the same thing to each of the intervals in <M>S_1</M>  you will be left with
<D>S_2 = [*[ [[09]],[[19]] ]*]\cup[*[ [[29]], [[39]] ]*]\cup[*[ [[69]], [[79]] ]*]\cup[*[ [[89]], [[99]] ]*].</D>
This recursive process is perhaps better understood diagrammatically:
<CIMG web="canrec.png"></CIMG>
Now we shall define <M>F_n</M>  as the CDF of the uniform distribution over <M>S_n</M>  for <M>n=0,1,2,...</M>

Here the graphs of <M>F_0, F_1</M>  and <M>F_2</M>: 
<CIMG web="cangrsep.png"></CIMG>
<COMMENT>
source('cantor.r')
svg('image/can%draw.svg')
cantor(0);cantor(1);cantor(2);
dev.off()
svg('image/cangrallraw.svg')
cantor(0);cantor(1,T);cantor(2,T);
dev.off()
</COMMENT>

Note that each oblique part in <M>F_n</M>  has ertical height <M>2^{-n}.</M>
It is possible to write down an algebraic formula for <M>F_n.</M>  But it is preferable to think
 in terms of graphs to appreciate
 the following discussion.

<HEAD2>Convergence of <M>F_n</M></HEAD2>
We are going to claim that <M>F_n</M>'s converge. Indeed, they converge uniformly. This should be readily apparent if we
 overlay their graphs. 
<CIMG web="cangrall.png"></CIMG>
To move from one <M>F_n</M>  to the next we are leaving horizontal parts unchanged and replacing each oblique segment like
 this:
<CIMG web="repl.png">Replace the black with the red</CIMG>
Thus, the change from <M>F_n</M>  to any <M>F_m</M>   for <M>m>n</M>  is at most <M>2^{-n}.</M> 
 Digest this well from the graphs, as this will form the main argument in the proof coming up in the next video.  
<HEAD1 u="https://youtu.be/9YGu4b8x9dA">Cantor distribution (rigorously) (part 1)</HEAD1>
Here we shall  formally prove the uniform convergence of <M>(F_n).</M>  We shall employ the uniform Cauchy
 criterion, i.e., we shall show that

<TGT>\forall \epsilon>0~~\exists N\in\nn~~ \forall m,n\geq N~~ \forall x\in\rr~~|F_m(x)-F_n(x)| < \epsilon.</TGT>

You should know from your analysis course that this is equivalent to uniform conergence of <M>(F_n).</M>  

<FLL>\epsilon</FLL> Take any <M>\epsilon>0.</M>

Then we can find <M>N\in\nn</M>  for which <M>2^{-N} < \epsilon.</M>

<EXS>N</EXS> Choose this <M>N\in\nn.</M>

<FLL>m,n</FLL> Take any <M>m,n\geq N.</M>

<FLL>x</FLL> Take any <M>x\in\rr.</M>

<CHK/>
<U>Case 1: <M>F_N</M>  is flat at <M>x</M></U>: Then <M>F_m(x) = F_n(x),</M>  and so <M>|F_m(x) - F_n(x)| = 0 < \epsilon</M>,
 as required.

<U>Case 2: <M>F_N</M>  is oblique at <M>x</M></U>: Let <M>[a,b]</M>  be the oblique interval of <M>F_N</M>  containing <M>x.</M> 
 
Then <M>F_N(a) = F_m(a) </M>  and <M>F_N(b) = F_m(b).</M>  because <M>a,b</M> are end points of the neighbouring flat regions.

Also <M>F_m(a) \leq F_m(x)\leq F_m(b).</M>  

So <M>F_N(a) \leq F_m(x)\leq F_N(b).</M>  Similarly, <M>F_N(a) \leq F_n(x)\leq F_N(b).</M>

Hence <M>|F_m(x)-F_n(x)|\leq F_N(b)-F_N(a) = 2^{-N} < \epsilon</M>, as required. 

<HEAD1 u="https://youtu.be/ry7jBBkmGNw">Cantor distribution (rigorously) (part 2)</HEAD1>
<HEAD2>The limit is a CDF</HEAD2>
Next we claim that <M>F</M>, the uniform limit of <M>F_n</M>'s, is indeed a CDF. Each <M>F_n</M>  is continuous, and 
 uniform limits of continuous functions must be continuous. So <M>F</M>  is continuous (and hence, in particular, right continuous).
 Also each <M>F_n</M>  is non-decreasing, and so must be their limit. Also <M>F(x) = 0</M>  if <M>x< 0</M>  and <M>F(x) = 1</M> 
 if <M>x\geq 1.</M>

By the fundamental theorem of probability, this <M>F</M>  must be the CDF of the distribution of some random variable. It
 is this distribution that we call the <TERM>Cantor distribution</TERM>. 

<HEAD2>A "loose" definition</HEAD2>
Some books provide the following loose definition of the Cantor distribution:
They start by defining the <TERM>Cantor set</TERM>  as <M>S = \cap_n S_n</M>.  Then the define the Cantor distribution as
 the uniform distribution on <M>S</M>.

While this does capture the spirit of the distribution, it is not a rigourous definition, because we have not defined "uniform
 distribution" only for finite sample spaces, and for distributions with densities. The Cantor distribution does not have
 PMF or density (shall show in the next section). So it is not clear what "uniform distribution" means here. 


<HEAD1 u="https://youtu.be/aEVbWTCPLwE">Cantor distribution (properties)</HEAD1>
We have already seen that <M>F</M>  is continuous. However, it does not admit a density, as we show below.

<THM>Cantor distribution does not admit a density.</THM>
<PF>
Let us consider <M>T_n = [0,1]\setminus S_n</M>  for <M>n=0,1,2,...</M> 
 This is the set of points where the graph of <M>F_n</M>  is horizontal.   Then the length of <M>T_n</M>  increases to <M>1.</M> 
Now, <M>F</M>  is differentiable at each point of <M>\cup T_n.</M>  and the derivtive is 0. If we set the derivative 0 everywhere
 else, we get <M>f(x)\equiv 0.</M>  

For <M>F</M>  to admit a density, this <M>f</M>  must be a density. But clearly this <M>f</M> 
 cannot be a density (since its total integral is 0, not 1). Hence
 <M>F</M>  cannot admit a density.
</PF>
<HEAD2>Moments</HEAD2>
If <M>X</M> is a random variable having the  Cantor distribution, then <M>X</M>  is a bounded,
 nonnegative random variable (since it must lie in <M>[0,1]</M>). So all its moments must exist
 finitely. However, computing them may not appear easy. 

For <M>E(X)</M>  we note that <M>1-X</M>  is again a Cantor random variable (since flipping the unit interval around <M>[[12]]</M> 
 does not change the <M>S_n</M>'s). So by symmetry argument, we have <M>E(X) = [[12]]</M>.

We need machinery beyond the present syllabus to  compute <M>E(X^k)</M>  for general <M>k\in\nn</M>.
</NOTE>@}
