 @{<NOTE>
<HEAD1>Standard absolutely continuous distributions</HEAD1>
Here we shall consider some standard absolutely continuous distributions. 

<HEAD2><M>Unif(a,b)</M></HEAD2>
This distribution captures the idea of a random variable that take any value in <M>(a,b)</M>  with equal probability. It
 has PDF <M>f(x) =<CASES>[[1][b-a]]<IF>a < x < b</IF> 0<ELSE/></CASES> </M>
Notice that a PDF must be defined over entire <M>\rr.</M>  Hence we need the "else" clause. Also <M>a< x < b</M>  could be
 replaced by <M>a\leq x < b</M>  or <M>a\leq x \leq b</M>  or <M>a< x \leq b</M>  without any change in meaning. 

The CDF is 
<D>F(x) = <CASES>0<IF>x < a</IF> [[x-a][b-a]]<IF>a\geq x < b</IF> 1<IF>b\geq x</IF></CASES>.</D>

Of a great importance is the special case <M>Unif(0,1).</M>  It plays a crucial role in the proof of the fundamentant theorem
 of probability as well as random number generation using a computer. Both these applications come from the same theorem.
 To prepeare for the theorem we define a right-inverse of any CDF. 

<DEFN>
Let <M>F</M>  be any CDF. Then define <M>F^-:(0,1)\to\rr</M>  as 
<D>F^-(x) = \inf\{t~:~F(t)\geq x\}.</D>
</DEFN>
This is well-defined since if <M>a\in (0,1)</M>  then <M>\{t~:~F(t)\geq a\}</M>  is nonempty (as
 <M>\lim_{x\to \infty}F(x)= 1</M>), and is bounded below (as <M>\lim_{x\to -\infty}F(x)= 0</M>  and <M>F</M>  is non-decreasing).

A couple of properties of <M>F^-</M>  are in order:
<THM>
Let <M>F</M>  be any CDF. Then <M>F^-</M>  is non-decreasing. Also <M>\forall x\in(0,1)~~F(F^-(x))=x.</M> 
</THM>
Now for the all-important theorem.  
<THM>
Let <M>U\sim Unif(0,1).</M>  Let <M>F(x)</M>  be any CDF.
 Then <M>F^-(U)</M>  must have CDF <M>F.</M>
</THM>
<PF>
 Let <M>Y = F^-(U).</M>  Then for any <M>a\in\rr</M>  we have 
<D>P(Y\leq a) = P(F^-(U)\leq a) = P(U\leq F(a)) = F(a),</D>
completing the proof.
</PF>
This shows that if we can show the existence of (or generate random numbers from)  <M>Unif(0,1)</M>, then we can do so for
 any CDF.

::<EXR>Show that <M>f(x) = <CASES>e^{-x}<IF>x>0</IF> 0<ELSE/></CASES></M>  is a PDF. Suggest how you
 may generate a random variable with this PDF starting from a <M>Unif(0,1)</M>  random variable.</EXR>
SS
It has a partial converse, which is also important.
<THM>
If <M>X</M>  is a continuous random variable with CDF <M>F,</M>  then <M>F(X)\sim Unif(0,1).</M>
</THM>
<PF>
Clearly, <M>Y=F(X)</M>  can only take values in <M>[0,1].</M>  So <M>P(Y\leq y) = 0</M>  if
 <M>y<0</M>  or if <M>y>1.</M>  

Take any <M>y\in[0,1].</M>  Then <M>P(Y\leq y) = P(F(X)\leq y)= P(X\leq F^-(y))= F(F^-(y))=y.</M> 
</PF>
This is used to construct a P-P plot.

<HEAD2>Exponential distribution</HEAD2>
<DEFN>We say that <M>X</M>  has an <TERM>Exponential distribution</TERM>  with <TERM>rate</TERM> 
 <M>\lambda</M>  if it has PDF <M>f(x)=<CASES>\lambda e^{-\lambda x}</CASES></M></DEFN>

<HEAD1>Problems for practice</HEAD1>
::<EXR><EIMG web="rossdistrib1.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib2.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib3.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib4.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib5.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib6.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib7.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib8.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib9.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib10.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib11.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib12.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib13.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib14.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib15.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib16.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib17.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib18.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib19.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib20.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib21.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib22.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib23.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib24.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib25.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib26.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib27.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib28.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib29.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib30.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib31.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib32.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib33.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib34.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib35.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib36.png"></EIMG></EXR>
::<EXR><EIMG web="rossdistrib37.png"></EIMG></EXR>
::<EXR><EIMG web="rosspdf9.png"/>

Here is Example 5b that is refered above:
<IMG web="rosspdf10.png">Example 5b</IMG>
</EXR>

::<EXR><EIMG web="rosspdf15.png"/></EXR>
::<EXR><EIMG web="hpspdf21.png"/></EXR>
::<EXR><EIMG web="hpspdf23.png"/></EXR>
::<EXR><EIMG web="hpspdf25.png"/></EXR>
::<EXR><EIMG web="hpspdf27.png"/></EXR>
---
::<EXR><EIMG web="hpspdf28.png"/></EXR>
::<EXR><EIMG web="hpspdf29.png"/></EXR>
::<EXR><EIMG web="hpspdf30.png"/></EXR>
::<EXR><EIMG web="hpspdf31.png"/></EXR>
::<EXR><EIMG web="hpspdf32.png"/></EXR>
::<EXR><EIMG web="hpspdf33.png"/></EXR>
::<EXR><EIMG web="hpspdf34.png"/></EXR>
::<EXR><EIMG web="hpspdf35.png"/></EXR>
::<EXR><EIMG web="hpspdf36.png"/></EXR>
::<EXR><EIMG web="hpspdf37.png"/></EXR>
::<EXR><EIMG web="hpspdf38.png"/></EXR>
::<EXR><EIMG web="hpspdf39.png"/></EXR>
---
::<EXR><EIMG web="hpspdf41.png"/></EXR>
::<EXR><EIMG web="hpspdf42.png"/></EXR>
::<EXR><EIMG web="hpspdf43.png"/></EXR>
::<EXR><EIMG web="hpspdf44.png"/></EXR>
</NOTE>@}
