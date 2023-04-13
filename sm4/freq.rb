@{<NOTE>
<M>\newcommand{\v}{\mathbf}</M>
<HEAD1>Frequency domain analysis</HEAD1>
Consider a time series data set: <M>X_1,...,X_n.</M> If you think
of these as components of a data vector <M>\v x = (X_1,...,X_n),</M>
then each <M>x_t</M> is the coeffcient of <M>\v e_t</M> in its
representation w.r.t the canonical basis:
<D>
\v x = x_1\v e_1+\cdots+ x_n\v e_n.
</D>  
As we all know, the canonical basis is an ONB. Now we shall do
two somewhat counterintuitive things: <UL><LI>first, we shall
consider <M>\v x</M> as a vector in <M>\cc^n</M> (though all its
components are still real),</LI> 
<LI>and second, we shall take a different ONB: <M>\v f_1,...,\v
f_n</M> of <M>\cc^n</M> (usual inner product) and express <M>\v x</M> w.r.t this new
basis:
<D>
\v x = z_1\v f_1+\cdots+ z_n\v f_n.
</D>
</LI></UL>
Moving back and forth between <M>(x_1,...,x_n)</M>
and <M>(z_1,...,z_n)</M> is pretty straight forward, since 
<D>
<MAT>z_1\\\vdots\\z_n</MAT>=P^* <MAT>x_1\\\vdots\\x_n</MAT>,
</D>
where <M>P</M> is formed by stacking the new ONB side by side as
columns:
<D>
P = <MAT>\v f_1 & \cdots & \v f_n</MAT>.
</D>
This <M>P</M> is a unitary matrix, and so inverting it is as
simple as conjugate transposing it. So 
<D>
<MAT>x_1\\\vdots\\x_n</MAT>=P <MAT>z_1\\\vdots\\z_n</MAT>.
</D>
The representation of the data vector w.r.t. the canonical basis
is called its <B>time domain representation</B>. For a special
choice of the new ONB, the representation w.r.t. that is called
the <B>frequency domain representation</B>.
<P/>
We shall now present this special new ONB. Instead of giving
the <M>\v f_j</M>`s separately, we shall specify
the <M>(h,k)</M>-th entry of the <M>P</M>
matrix:
<D>
P_{h,k} = [[1][\sqrt n]]\exp(*(2\pi i[[(h-1)(k-1)][n]])*). 
</D>
If we take <M>\omega_n = e^{2\pi i/n},</M> (a
primitive <M>n</M>-th root of unity), then 
<D>
P = [[1][\sqrt n]]<MAT>
1 & 1 & \cdots & 1\\
1 & \omega_n & \cdots & \omega_n^{n-1}\\
1 & \omega_n^2 & \cdots & \omega_n^{2(n-1)}\\
\vdots & \vdots & \ddots & \vdots\\
1 & \omega_n^{n-1} & \cdots & \omega_n^{(n-1)^2}
</MAT>.
</D>
The vector <M>(z_1,...,z_n)</M> is often called the <B>Discrete
Fourier Transform (DFT)</B> of the time series. Due to the
structured nature of <M>P,</M> it may be expected that DFT should
less effort to compute than explicit matrix
multiplication. That is indeed true. In fact, if <M>n</M> is an
integral power of <M>2,</M> a class of very efficient algorithm exists
called the <B>Fast Fourier Transform (FFT)</B>. The most famous
algorithm in this class is the Cooley-Tukey algorithm, and we
generally understand this algorithm, when we talk about FFT. 

<P/>

An uncomfortable fact about DFT is that it takes
into <M>\cc^n.</M> If just retain the real part of the DFT, then
we get <B>Discrete Cosine Transform</B>. Similarly, the imaginary
part leads to the <B>Discrete Sine Transform</B>.

<P/>
Let`s now focus on the individual vectors of the new ONB:
<D>
\v f_k = [[1][\sqrt n]]<MAT>1\\ e^{w_k}\\ e^{2w_k}\\ \vdots\\ e^{(n-1)w_k}</MAT>,
</D>
where <M>w_k = 2\pi i (k-1)/n.</M> Since <M>e^{iwt} =
\cos(wt)+i\sin(wt), </M> we may think of <M>\v f_k</M> as a
complex time series whose real and imaginary parts both represent
waves at the particular frequency <M>w_k.</M> 
<P/>
Thus <M>z_k,</M> the coeffcient of <M>\v f_k</M> in the
Fourier representation of the data, may be considered as
measuring the strength of that frequency in the time
series. Indeed, with some physics, one may show that the total
power accounted for by that frequency is proportional
to <M>|z_k|^2.</M> 
  
<HEAD1>Uses</HEAD1>
DFT is one of the most popular techniques used by the sceintific
community at large. We shall touch upon 4 basic types of
applications.

<HEAD2>Finding structure</HEAD2>
Think of a time series as an audio signal, which is obtained by
playing some musical intruments of different frquencies. DFT
should show the different freqncies as different peaks. This
approach  is used in many  music analysis tools. It is
used for detecting periods in unfamiliar times series, like the
sun spot data.

<R>
library(tuneR) #You may need to install it first.
x = normalize(2*sine(440) + sine(340))
x = normalize(2*sine(440,dur=88200) + sine(340,dur=88200))
plot(x)
setWavPlayer("aplay") #You may need to change this depending on your
                      #set up. You not even need this.
play(x)
z = fft(x@left)
plot(abs(z)[1:1000],ty='l')
which(abs(z)>5000)
</R> 
<HEAD2>Removing noise</HEAD2>
When we want to filter out signal from noise, we look for some
detectable characteristic wrt which the signal differes from
signal. Freqeuncy often provides such a characteristic. <LINK to="noisy3.wav">Download
the audio file here.</LINK> 
<R>
x=readWave("noisy3.wav")
play(x)
z = fft(x@left)/sqrt(length(x))
plot(abs(z),ty='l')
length(z)
zclean = z
zclean[abs(z)>1e6]=0
#zclean[abs(z)<1000]=0
plot(abs(zclean),ty='l')
xclean = x
snd = fft(zclean,inv=T)/sqrt(length(x))
tmp = Re(snd)
xclean@left = 30000*tmp/max(abs(tmp))
xclean@right = rep(0,length(x))
play(xclean)
</R>
<HEAD2>Sparsity and compressing</HEAD2>
We often know a narrow frequncy range (or frequncy band) where our
signal is supposed to lie. Anything outside this band may then be
discarded, resulting in drastic reduction in the size of the data
without any appreciable loss of quality. mp3 and jpeg are two
well known examples.
<P/>
Often over-reduction leads to "ringing".
<P/>
<LINK to="original.wav">Download
the audio file here.</LINK> 
<R>
x = readWave("original.wav")
z = fft(x@left)
trimFreq = function() {
  plot(abs(z),ty='l')
  fromUser = locator(1)
  side = floor(fromUser$x)
  abline(v=c(side,29002-side),col='red',lwd=3)
  fromUser = locator(1)
  mid = floor(fromUser$x)
  abline(v=c(mid,29002-mid),col='blue',lwd=3)
  zclean = z
  zclean[mid:(29002-mid)]=0
  zclean[1]=0
  zclean[2:side]=0
  zclean[(29002-side):29000]=0
  plot(abs(zclean),ty='l')
  raw = fft(zclean,inv=T)
  tmp = Re(raw)
  xcomp = x
  xcomp@left = 30000*tmp/max(abs(tmp))
  play(xcomp)
  invisible(list(side=side,mid=mid,clean=zclean,howBad=Im(raw)))
}
</R>
<HEAD2>Convolution</HEAD2>
A completely different type of application utilises an unexpected
property of DFT. Before going into it, let me give an analogy
from high school mathematics. We know log is the opposite of
exponentiation. Now, the original reason behind the introduction
of logarithms was to perform multiplication by addition. The base
of the log was of little consequence. Widely used tools like
Napier's bones and the slide rule, all used logarithms for just
this purpose. 
<P/>
Given two sequences we can define <B>convolution</B> between them
like polynomial multiplication. This operation is often useful
for masking purposes (like moving averaging). An important
property of DFT is that 
<Q>
DFT(x o y) = DFT(x) * DFT(y).
</Q>   
So we can compute 
<Q>
x o y = IDFT(DFT(x) * DFT(y)).
</Q>   
Since computation of DFT or its inverse is pretty cheap, this
roundabout way actually saves a lot of computational labour!

<HEAD1>FFT</HEAD1>
FFT, or rather the Cooley-Tukey algorithm, peforms the matrix
multiplication, keeping account of the fact that certain
multipications occur multiple times. It performs these operations
only once, and reuses the results when used later. To understand
the idea consider the <M>n=4</M> case. Then the unitary matrix is 
<D>
P = <MAT>1 & 1 & 1 & 1\\
1 & \omega_4 & \omega_4^2 & \omega_4^3\\
1 & \omega_4^2 & \omega_4^4 & \omega_4^6\\
1 & \omega_4^3 & \omega_4^6 & \omega_4^9
</MAT>,
</D>  
where <M>\omega_4 = e^{2\pi i/4} = i.</M> In the <M>n=2</M> case
the matrix is
<D>
<MAT>
1 & 1\\
1 & \omega_2
</MAT>,
</D>
where <M>\omega_2 = e^{2\pi i/2} = -1 = \omega_4^2</M>
<P/>
Now look carefully once again at the matrix for the <M>n=4</M>
case (I am writing <M>\omega</M> for <M>\omega_4</M>):
<CIMG web="../colmat.png"/>
I have partitioned the matrix into 4 submatrices: red, blue,
green and black. The red submatrix is just the matrix
for the <M>n=2</M> case. Once you remember that <M>\omega^4 =
1,</M> the green matrix is also the same. The blue matrix is
almost the same matrix, except that the <M>i</M>-th row is
multiplied by <M>\omega^i.</M> The black matrix is the same as
the blue matrix. Thus the <M>n=4</M> case is actually made of 4
copies of the <M>n=2</M> case. 
<P/>
The Cooley-Tukey algorithm utilises this recursive structure for
the case <M>n=2^k</M> for some <M>k.</M>

</NOTE>@}
