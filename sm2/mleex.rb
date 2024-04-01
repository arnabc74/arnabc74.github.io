@{<NOTE>
<HEAD1>Exercises on finding MLE numerically</HEAD1>

<EXR>
Generate a data set of size 10 from  Gamma<M>(\alpha,p)</M> with
pdf
<D>
f(x,\alpha,p) = <CASES>[[p^ \alpha][\Gamma(\alpha)]] x^{\alpha-1}e^{-p x}<IF>x>0</IF>0<ELSE/></CASES>.
</D>
For any given <M>\alpha>0</M> find the MLE of <M>p</M>
analytically. Use this to obtain MLE of <M>p</M>
and <M>\alpha </M> when both are unknown. 
<I>[Hint: The R functions <CODE>digamma</CODE> and 
<CODE>trigamma</CODE> compute first and second derivatives of <M>\log \Gamma (x).</M>]</I>
</EXR>

<EXR><B>(Logistic regression)</B>
We have data <M>(x_1,Y_1),...,(x_n,Y_n),</M> where <M>x_i</M>`s
are fixed and known, and <M>Y_i</M>`s are
independent <M>Bern(F(\alpha + \beta x_i)),</M> where <M>F(x)</M>
is the logistic CDF:
<D>
F(x) = [[1][1+e^{-x}]],\quad x\in\rr.
</D>
Find MLE of <M>\alpha, \beta</M> based on simulated data.
</EXR>

<EXR>
We have a categorical data set with four
categories: <M>A</M>, <M>B</M> <M>C</M> and <M>D</M> with
probabilities given by <M>p^2+q^2</M>, <M>r^2</M> <M>2pq + pr</M>
and <M>pr+2qr,</M> where <M>p+q+r = 1,</M> and <M>p,q,r\geq
0.</M> If the frequencies of the categories are <M>354, 234,
213</M> and <M>56</M>, respectively, obtain MLE of the parameters.
</EXR>
</NOTE>@}
