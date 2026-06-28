@{<NOTE>
<M>\newcommand{\v}[1]{\boldsymbol{#1}}</M>
<M>\newcommand{\k}[1]{\chi^2_{(#1)}}</M>
[Update:[Wed Jun 17 IST 2026]]
<TITLE>Sampling distrbutions for normal mean and variance</TITLE>
<HEAD1 u="https://youtu.be/BRwFMYfb4rE">Sampling distributions for normal sample</HEAD1>

<THM>
Let <M>X_1,...,X_n</M>  be a random sample (i.e., IID) from <M>N(\mu, \sigma^2).</M> We consider
 the sample mean <M>\bar X=[[1n]]\sum _1^nX_i</M>  and sample variance <M>S^2=[[1n]]\sum_1^n (X_i-\bar X)^2.</M>   Then 
<OL>
<LI><M>\bar X\sim N(*(\mu,[[\sigma^2][n]])*)</M></LI>
<LI><M>[[nS^2][\sigma^2]]\sim \k {n-1}</M></LI>
<LI><M>\bar X</M>  and <M>S^2</M>  are independent.</LI>
</OL>
</THM>
<PF>Without loss of generality, we take <M>\mu=0</M>  and <M>\sigma=1.</M>
<BECAUSE>Once we have proved the <M>\mu=0</M>  case, we can work with <M>\mu+\sigma X_i</M>  to
 get the general form.</BECAUSE>
In <M>\rr^n</M>  consider the subspace <M>V=span\{\v 1\},</M>  where <M>\v 1</M>  is the vector of al <M>1</M>'s. Clearly,
 <M>dim(V)=1</M>  and <M>dim(V^\perp)=n-1.</M>

We have learnt that in <M>\rr^n</M>  the component (i.e., orthogonal projection) of one vector <M>\v v</M>  along
 another vector <M>\v u</M>  is <M>[[\v u'\v v][\v u'\v u]]\v u.</M> 

So the orthogonal projection of <M>\v X</M>  along <M>\v 1</M>  (i.e., on <M>V</M>) is <M>\bar X\v 1.</M>  

Hence the orthogonal projection of <M>\v X</M>  on <M>V^\perp</M>  is  
<D>\v Y = \v X-\bar X\v 1 = <MAT>X_1-\bar X\\\vdots\\X_n-\bar X</MAT>.</D>
So from earlier result, we immediately see that these two projections must be independent.

Now <M>\bar X</M>  is a function of the first projection, while <M>S^2</M>  is a function of the second. So they are independent.

Also <M>nS^2 = \|\v Y\|^2\sim \k{n-1}.</M>

The distribution of <M>\bar X</M>  is obvious from an earlier theorem.
</PF>
<HEAD2>Problem set <PS/></HEAD2>
<EXR>
Same set up as in the theorem above. What will  the distribution of <M>\sum_1^n (X_i-a)^2</M> be, where <M>a\in\rr</M>  is
a fixed number?
</EXR>
<HEAD1 u="https://youtu.be/mv62pUoznVI"><M>t</M>  distribution</HEAD1>
<DEFN name="$t$-distribution">
If <M>X\sim N(0,1)</M>  and <M>Y\sim\k n</M>  and they are independent, then the distribution of <M>X/(\sqrt{Y/n})</M>  is
 called <M>t</M>-distribution with <M>n</M>  degrees of freedom. Here <M>n>0</M>  need not be an integer.
</DEFN>
Let us derive density of <M>t</M>-distribution with <M>n</M>  degrees of freedom. We shall do this step by step. 

From <M>Y</M>  we shall pass on to <M>Z = \sqrt{[[Yn]]}</M>  and then to <M>[[XZ]].</M>  

Y has density <M>f_Y(y) =<CASES>\mbox{const } e^{-[[y2]]}y^{[[n2]]-1}<IF>y>0</IF> 0<ELSE/></CASES> </M>

The transform to go from <M>Y</M>  to <M>Z</M>  is <M>z = h(y) = \sqrt{[[yn]]}</M>  with inverse <M>y = h ^{-1}(z) = n z^2.</M> 
 
Hence, by the Jacobian formula, <M>Z</M>  has density
<D>f_Z(z) = 2nz f_Y(nz^2) = <CASES>\mbox{const } e^{-nz^2/2} z^{n-2}<IF>z>0</IF> 0<ELSE/></CASES></D>
Next we shall employ the quotient formula to find density of <M>T = [[XZ]]</M>  as 
<MULTILINE>
f_T(t) 
& = & \int_0^\infty u f_X(tu) f_Z(u)\, du\\
& = & \mbox{const} \int_0^\infty u e^{-t^2u^2/2} e^{-nu^2/2} u^{n-2}\, du\\
& = & \mbox{const} \int_0^\infty  u^{n-1} e^{-(t^2+n)u^2/2}\, du.
</MULTILINE>
Substituting <M>v = [[u^2][2]]</M>  we have 
<MULTILINE>
& = & \mbox{const} \int_0^\infty  v^{[[n-1][2]]} e^{-(t^2+n)v}\, dv\\
& = & \mbox{const} \int_0^\infty  v^{[[n+1][2]]-1} e^{-(t^2+n)v}\, dv\\
& = & \mbox{const } \Gamma(*([[n+1][2]])*) (t^2+n)^{-[[n+1][2]]}
& = & \mbox{const } (t^2+n)^{-[[n+1][2]]}.
</MULTILINE>
If you keep track of the constants, you will find that it is
<D>[[\Gamma(*([[n+1][2]])*)][\sqrt{n\pi}\Gamma(*([[n][2]])*)]]\times n^{[[n+1][2]]}.</D>
It should not be difficult to see that <M>t</M>-density is symmetric around 0. The densities are much like the <M>N(0,1)</M> 
 density. They lie somewhere between the Cauchy density and <M>N(0,1)</M>  density. As the degrees of freedom increase
 to <M>\infty,</M>  the <M>t</M>-distribution approaches <M>N(0,1).</M>  For degrees of freedom more than 40, the <M>t</M>-density
 is virtually indisguishable from that of <M>N(0,1)</M>  density.

<HEAD2>Problem set <PS/></HEAD2>
<EXR>Let <M>X_1,...,X_n</M>  be a random sample from <M>N(\mu,\sigma^2).</M>  Then what is the distribution of 
<D>[[\sqrt n(\bar X-\mu)][\sqrt{\sum(X_i-\bar X)^2/(n-1)}]]?</D>
</EXR>


<HEAD1 u="https://youtu.be/xTL6asmWxA8"><M>F</M>  distribution</HEAD1>
<DEFN name="$F$-distribution">
If <M>X\sim \k m</M>  and <M>Y\sim \k n</M>  are independent random variables, then the distribution of <M>[[X/m][Y/n]]</M>  is
 called <M>F</M> -distribution with numerator degrees of freedom <M>m</M>  and denominator degrees of freedom <M>n.</M>
</DEFN>
The density of <M>X</M>  is <M>f_X(x) =<CASES>\mbox{const }x^{[[m2]]-1}e^{-[[x2]]}<IF>x>0</IF> 0<ELSE/></CASES> </M>

Similarly, 
the density of <M>Y</M>  is <M>f_Y(y) =<CASES>\mbox{const }y^{[[n2]]-1}e^{-[[y2]]}<IF>y>0</IF> 0<ELSE/></CASES> </M>

Hence density of <M>Z = [[XY]]</M>  is 
<MULTILINE>
f_Z(z)
& = & \int_0^\infty u f_X(zu)f_Y(u)\, du\\
& = & \mbox{const}\int_0^\infty u (zu)^{[[m2]]-1}e^{-[[zu][2]]} u^{[[n2]]-1}e^{-[[u2]]}\, du\\
& = & \mbox{const }z^{[[m2]]-1}\int_0^\infty  u^{[[m+n][2]]-1}e^{-[[z+1][2]]u}\, du\\
& = & \mbox{const }z^{[[m2]]-1}\Gamma(*([[m+n][2]])*) (*([[z+1][2]])*)^{-[[m+n][2]]}\\
& = & \mbox{const }z^{[[m2]]-1}(z+1)^{-[[m+n][2]]}.
</MULTILINE>
Hence the density of <M>[[nm]]Z</M>  is 
<D>f(x) =<CASES>\mbox{const }x^{[[m2]]-1}(mx+n)^{-[[m+n][2]]}<IF>x>0</IF> 0<ELSE/></CASES> </D>

<HEAD2>Problem set <PS/></HEAD2>
<EXR>Let <M>X_1,...,X_m</M>  and <M>Y_1,...,Y_n</M>  be random samples from
 <M>N(\mu_1,\sigma^2)</M>  and <M>N(\mu_2,\sigma^2)</M>, respectively (same <M>\sigma^2).</M>  
Then what
 is the distribution of 
<D>[[\sum(X_i-\bar X)^2/(m-1)][\sum(Y_i-\bar Y)^2/(n-1)]]?</D>
</EXR>

</NOTE>@}
