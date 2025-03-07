@{<NOTE>
<M>\newcommand{\v}{\mathbf}</M>
<HEAD1>Exercises on frequency domain analysis of time
series</HEAD1>

<EXR>
Prove that the <M>P</M> matrix is indeed unitary. This will also
show that the set <M>\{\v f_1,...,\v f_n\}</M> is indeed an ONB,
as claimed.
</EXR>

<EXR>
Let <M>z_1,...,z_n\in\cc</M> be the DFT of the time
series <M>x_1,...,x_n.</M> . Prove that <M>\sum |z_i|^2 = \sum
x_i^2.</M> This is one form of <B>Parseval's identity</B>. 
</EXR>

<EXR>
DFT expresses a time series in terms of sinusoidal frequencies
that are integral multiples of <M>[[2\pi][n]],</M> where <M>n</M>
is the lenth of the time series. Now suppose that the original
time series (of length 1000) is itself a pure sinusoid with
frequency <M>45.4\times [[2\pi][1000]].</M>
Guess how its DFT should look like. Check your guess (theoretically
or computationally). What you will see is sometimes
called <B>power leakage</B>.
</EXR>

<COMMENT>L.sq vs Fourier</COMMENT>

<EXR>
Consider the partition of the <M>4\times 4</M> DFT matrix as
given in the notes. It was mentioned that this DFT is essentially
same as two <M>2\times 2</M> DFT`s. Make this precise. 
</EXR>

<EXR>
Show that a <M>6\times 6</M> DFT is essentially made of
two <M>3\times 3</M> DFT`s. 
</EXR>
</NOTE>@}
