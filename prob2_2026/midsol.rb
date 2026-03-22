 @{<NOTE>
<HEAD1>Midsem solution</HEAD1>
In all the solutions below part of the text is written in <WR>handwriting style.</WR>
This is the part that a student may write in the exam (along with the relevant diagrams). 
<HEAD2>Question 1</HEAD2>
Here <M>(X,Y)\sim Unif(S),</M>  where <M>S=\{(x,y)~:~x\in[0,1],~y\in[x^2,x]\}.</M>  To find the desnity of <M>X+2Y.</M>

The first thing you should do here is to make a sketch of the region <M>S.</M>  
<CIMG web="midq11.png"/>
Then decide the support of <M>X+2Y.</M>
<WR>
Here <M>X+2Y</M>  must lie in <M>[0,3].</M>  
</WR> 
You are starting with a bivariate distribution, and want to arrive at an univariate one. So our modus operandi could be
 to first use the Jacobian method to 
 transform from <M>(X,Y)</M>  to some <M>(U,V),</M>  where either <M>U</M>  or <M>V</M>  is the random variable of our interest. 
Then we can integrate out the other variable.

 For the Jacobian part we need a bijection:
<WR>
Let <M>U = X+2Y</M>  and <M>V = Y.</M>  
</WR>
You could have chosen <M>V = X</M>  also. I chose <M>Y</M>  so that I could avoid dividing by <M>2</M>  in the inverse.
Before you start algebraic manipulations, you should visualise the transform. Here <M>(1,0)\mapsto (1,0)</M>  and <M>(0,1)\mapsto (2,1).</M> 
 So the graph paper transforms as follows. 
<CIMG web="midq12.png">The red dot of the original graph goes to the blue dot in the new graph</CIMG>
So our region of interest should transform as shown below.
<CIMG web="midq13.png"></CIMG>
Or original distribution was uniform, the transform is linear (so no uneven stretching). Hence <M>(U,V)</M>  must be uniform
 over the green region. 

First we find the inverse map (proving as a side effect that the transform is a bijection):
<WR>
We have <M>X = U-2V</M>  and <M>Y = V,</M>  ie
<D><MAT>X\\Y</MAT>  = <MAT>1 & -2\\0& 1</MAT><MAT>U\\V</MAT></D>  

Thus, the map <M>(X,Y)\mapsto (U,V)</M>  is bijective. 
</WR>
Next we compute the Jacobian. 
<WR>
Since it is linear, the Jacobian is just the matrix <M><MAT>1 & -2\\0 & 1</MAT>,</M>  which has determinant 1. 
</WR>
So there is no change in area.

Let's work out the the density of <M>(X,Y).</M>  
<WR>
Now the joint density of <M>(X,Y)</M>  is <M>f_{X,Y}(x,y) =<CASES>6<IF>(x,y)\in S</IF> 0<ELSE/></CASES>, </M>
since area of <M>S</M>  is <M>\int_0^1 (x-x^2)\, dx = [[12]]-[[13]] = [[16]].</M>
</WR>
So we can apply the Jacobian transform to get the new density for <M>(U,V).</M>
<WR>
So the joint density of <M>(U,V)</M>  is <M>f_{U,V}(u,v) = f_{X,Y}(u-2v, v) = <CASES>6<IF>(u-2v,v)\in S</IF> 0<ELSE/></CASES>.</M>
</WR>
We now need a new name for the green region.
<WR>
Let <M>T = \{(u,v)~:~(u-2v,v)\in S\}.</M>
</WR>
We are now to integrate over <M>v.</M> 

<CIMG web="midq14.png"></CIMG>
 This amounts to finding the length
 of the thick part of the vertical line through <M>u.</M> Understand this well before reading the
 algebraic manipulations below.  
For a given <M>u\in[0,3]</M>  we need to find the two end points of the thick segment. The upper end point is obviously <M>v = u/3.</M> 
 
To find the lower end point (<M>A</M>) we need to see where the <M>y = x^2</M>  curve is in the <M>(u,v)</M>-plane. This
 curve will intersect the vertical line through <M>u</M>  at two points (<M>A</M>  and <M>B</M>). The diagram shows that
 we need the lower one. 
<WR>
<M>y = x^2</M>  becomes <M>v = (u-2v)^2.</M>  
</WR>
We may write this as a quadratic in <M>u</M>  or as a quadratic in <M>v.</M>  But since we need to find <M>v</M>  for a given
 <M>u,</M> we shall prefer the latter.
<WR>
This is <M>4v^2-(4u+1)v+u^2 = 0.</M>

Hence <M>v = [[4u+1\pm\sqrt{8u+1}][8]].</M>

Keeping only the smaller root, we have
<M>v = [[4u+1-\sqrt{8u+1}][8]].</M>

So the thick line segment has length 
<D>[[u3]]- [[4u+1-\sqrt{8u+1}][8]].</D>
Since the density is the constant <M>6</M>  over the green region, the required marginal density is 
<D>f_U(u) = \int_{- \infty}^ \infty f_{U,V}(u,v) dv = <CASES>6(*([[u3]]- [[4u+1-\sqrt{8u+1}][8]])*)<IF>u\in[0,3]</IF> 0<ELSE/></CASES>.</D>
</WR>
Here is a little R code to check what we have done:
<R>
x = runif(10000)
y = runif(10000)
keep = (x >= y) & (y >= x*x)
png('image/midoverlay.png')
hist(x[keep]+2*y[keep],prob=T)
f = function(u) {
    6*(u/3-(4*u+1-sqrt(8*u+1))/8)
}
curve(f(x),add=T)
dev.off()
</R>
You may like to carefully at the code to learn how we simulated from <M>Unif(S).</M>

Here is the resulting plot:
<CIMG web="midoverlay.png">Pretty good fit!</CIMG> 
<HEAD2>Question 2</HEAD2>
<M>\newcommand{\x}[1]{X_{(#1)}}</M>
Here we are to find the joint density of <M>(X_{(2)}, X_{(5)})</M>   where <M>X_1,...,X_5</M>  are iid <M>Unif(0,1).</M> 
 
We shall start by finding the joint distribution function, <M>F(a,b) = P(\x 2\leq a, \x 5\leq b)</M>, and then differentiate
 it partially wrt <M>a,b</M>  to obtain the required density. 
<WR>
Clearly, <M>(\x 2, \x 5)</M>  can take values in <M>S=\{(a,b)~:~ 0\leq a \leq b\leq 1\}.</M>  So the required joint density
 must vanish outside <M>S</M>. 

Let <M>(a,b)\in S.</M>

Let <M>F(a,b) = P(\x 2\leq a, \x 5\leq b).</M>

Then <M>\{\x 2 \leq a, \x 5\leq b\}</M>  means all the <M>X_i</M>'s are in <M>[0 b],</M>  and at
 least two are in <M>[0, a].</M> 
 
If the number of <M>X_i</M>'s in <M>[0, a]</M>  is <M>k</M>, then the remaining <M>5-k</M>  are in <M>(a, b].</M>  

Pick the <M>k</M> of the <M>5</M>  <M>X_i</M>'s:  <M>\binom 5 2</M>  ways.

Put them in <M>[0,a]:</M>  <M>a^k.</M>

Put the remaining <M>5-k</M>  in <M>(a, b]:</M>  <M>(b-a)^{5-k}.</M>

So  <M>F(a,b) = b^5- \underbrace{(b-a)^5}_{k=0}-\underbrace{5  a(b-a)^4}_{k=1}.</M>

Hence <M>f(a,b) = [[\partial^2][\partial a\partial b]] F(a,b) =\cdots=60 a(b-a)^2.</M>

Thus the required joint density is 
<D>f(a,b) = <CASES>60a(b-a)^2<IF>0<a<b<1</IF> 0<ELSE/></CASES>. </D>
</WR>

<HEAD2>Question 3</HEAD2>
We have <M>X\sim Expo(1)</M>  and <M>Y|X=x\sim Unif(0,x).</M>  To find <M>E(Y)</M>  and <M>P(Y < X).</M>

<WR>
Since <M>Y|X=x\sim Unif(0,x),</M>  hence <M>E(Y|X) = [[X2]].</M>

By the tower property, <M>E(Y) = E(E(Y|X)) = E(*([[X2]])*) = [[12]] E(X) = [[12]],</M>  since <M>X\sim Expo(1),</M>  and
 hence <M>E(X) = 1.</M>

Let <M>Z =<CASES>1<IF>Y< X</IF> 0<ELSE/></CASES>. </M>

Then <M>P(X< Y)= E(Z).</M>

Now <M>E(Z|X) = 1,</M>  since <M>Y|X=x\sim Unif(0,x).</M>  

So, by the tower property, <M>P(X < Y) = E(Z) = E(E(Z|X)) = 1.</M>
</WR>
</NOTE>@}
