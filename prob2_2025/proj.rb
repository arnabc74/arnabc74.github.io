@{<NOTE>
<HEAD1>A curious fact about independence</HEAD1>
We are going to discuss a paradox here. A paradox is born when two intuitive notions contradict each other. Let us start
 with discussing the contending intuitions for our paradox.
<HEAD2>Intuition 1: Approximately same distribution</HEAD2>
Suppose that we have two random variables <M>X,Y</M>. Then their joint CDF is <M>F(X\leq x,Y\leq y).</M> 
This CDF characterises the joint distribution of <M>(X,Y)</M>, i.e., if we have two other random variables <M>S,T</M>  with
 same joint CDF, then <M>(X,Y)</M>  and <M>(S,T)</M>  has the same joint distribution. So it is only natrual to expect 
that if <M>(X,Y)</M>  and <M>(S,T)</M>  have approximately same joint CDF, then their distributions will also be approximately
 the same. By "approximately  same" we mean for some very small <M>\epsilon</M>  we have 
<D>\forall a,b\in\rr~~|F_{XY}(a,b)-F_{ST}(a,b)|<\epsilon.</D>
Here <M>F_{XY}</M>  and <M>F_{ST}</M>  are the joint CDFs of <M>(X,Y)</M>  and <M>(S,T),</M>  respectively. This belief
is what powers statistics, where we really do not handle the random variables directly, but only through their observed values.
 If we have a large number of observatons of a random variable, all that we can hope to be able to get from them is an approximation
 of the underlying distribution. So if <M>F_{XY}\approx F_{ST}</M>, then there is no way you can distinguish them from data.
 In other words, data from <M>(X,Y)</M>  can be mistaken for that from <M>(S,T)</M>  and <I>vice versa</I>. 

<HEAD2>Independent and completely dependent</HEAD2>
We know what is meant by two random variables being independent. In terms of CDF this means 
<D>\forall x,y\in\rr~~F_{XY}(x,y) = F_X(x)F_Y(y).</D> 
 We shall abbreviate this to <M>F_{XY}\stackrel{\epsilon}{\approx}F_{ST}.</M>

Intuitively, this means knowledge about one of the variables sheds no light on the value of the other. What is the opposite
 extreme? Knowing one variable completely specifies the other variable: one is a deterministic function of the other. 

<HEAD2>The paradox</HEAD2>
Given two independent random variables <M>X,Y</M>  and some <M>\epsilon>0</M>  we can manufacture two random variables <M>S,T</M> 
 such that <M>F_{XY}\stackrel{\epsilon}{\approx}F_{ST}</M>
and yet <M>S</M>  and <M>T</M>  are deterministic bijective functions of each other!!
 
More specifically, we have the following theorem.
<THM>
Let <M>X,Y</M>  be independent random variables with density <M>f(x) = <CASES>1<IF>0 < x < 1</IF> 0<ELSE/></CASES></M>  
Let <M>\epsilon>0.</M>  Then we can find random variables <M>S,T</M>  such that
<OL>
<LI><M>F_S = F_X</M>  and <M>F_T = F_Y</M></LI>
<LI><M>F_{XY}\stackrel{\epsilon}{\approx}F_{ST}</M></LI>
<LI><M>S</M>  and <M>T</M>  are deterministic functions of each other.</LI>
</OL>
</THM>
In plain words, this means data from perfectly dependent variables are indistinguishable from the
 data from independent variables!!!

 This surprising theorem has a constructive proof. Indeed, you can write a simple program to actually manufacture data from
 <M>(S,T)</M>  to see the counter-intuitive behaviour for yourself! The project is to explore the proof. 

By the way, the theorem can be easily generalised to work with any continuous distributions for <M>X</M>  and <M>Y.</M>
<HEAD1>The proof</HEAD1>
We shall present the idea behind the proof step by step. We start with <M>S=X</M>  and <M>T=S.</M>  Then we shall make <M>T</M> 
 more and more complicated (but always piecewise linear!) functions of <M>S.</M>  
<HEAD2>Step 1: Simplest case</HEAD2>
 We have <M>S=X</M>  and <M>T=S.</M>  Write down the joint CDF of <M>(S,T).</M>  Also write down the joint CDF of <M>(X,Y).</M> 
 It would be instructive to try to make 3D sketches of <M>F_{XY}</M>  and <M>F_{ST}.</M>

</NOTE>@} 
