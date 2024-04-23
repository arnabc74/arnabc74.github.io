<NOTE>
@{<M>
\newcommand{\contra}{\Rightarrow\Leftarrow}
\newcommand{\bc}{\because}
\newcommand{\tf}{\therefore}
</M>@}
@{<HEAD1>Connected</HEAD1>@}
<EXM ref="2022.16a" paper="2022.16a"><EBODY>@{<E>
<M>(X,\tau)</M> is a topological space and <M>A\seq X,</M>
and <M>C</M> is a connected subset of <M>X</M> that intersects
both <M>A</M> and <M>X \setminus A.</M> Prove that <M>C</M>
intersects boundary of <M>A.</M>[2]
</E>@}</EBODY><SOLN/>@{<WR>
We know that <M>A^\circ, \partial A</M>  and <M>(A^c)^\circ</M>   form a partition of <M>X.</M>  

Let, if possible, <M>C\cap \partial A=\phi.</M> 

 Then <M>C = U\cup V,</M>  where <M>U= C\cap A^\circ</M>  and
 <M>V= C\cap (A^c)^\circ.</M>

In the subspace topology of <M>C</M>  both <M>U</M>  and <M>V</M>  are open. Also they are disjoint. So they are clopen in
 <M>C.</M>  Thus, they provide a disconnection of <M>C (\contra\bc C</M>  is connected<M>).</M>
</WR>@}</EXM>


<EXM ref="2022.16b" paper="2022.16b"><EBODY>@{<E>
<M>f:[0,1]\to[0,1]</M> is a continuous function. Show that there
exists <M>C\in[0,1]</M> such that <M>f(C)=C,</M>
where <M>[0,1]</M> is endowed with the usual subspace topology.[3]
</E>@}</EBODY><SOLN/>@{<E>Intermediate value theorem</E>@}  lAgAo @{<M>f(x)-x</M>@}-er upar.</EXM>


<EXM ref="2022.17" paper="2022.17"><EBODY>@{<E>
Prove that the union of any family of connected sets, every pair
of which has an element in common, is a connected set in any
topological space. Is the intersection of two connected sets
alaways connected? Justify.[3+2]
</E>@}</EBODY><SOLN/>@{<WR>
<U>First part</U>: Let <M>\{C_ \alpha~:~\alpha\in \Lambda\}</M>  be a family of connected subsets in some topological space
 <M>(X,\tau)</M>  such that <M>\forall \alpha,\beta\in \Lambda~~C_ \alpha\cap C_ \beta\neq\phi.</M>  

Let <M>C = \cup_{ \alpha\in \Lambda} C_ \alpha.</M>

Let, if possible, <M>C</M>  be not connected. Let <M>C = D\cup E </M> be a disconnection. 

Then <M>\forall \alpha\in \Lambda~~(C_ \alpha\seq D\mbox{ or } C_ \alpha\seq E).</M>
<BECAUSE>Otherwise, for some <M>\alpha\in \Lambda</M>  we have <M>C_ \alpha\cap D\neq\phi</M>  and
 <M>C_ \alpha\cap E\neq\phi.</M>  Then <M>(C_ \alpha\cap E)\cup(C_ \alpha\cap E)</M>  is a disconnection for <M>C_ \alpha.</M></BECAUSE>
Also, <M>\exists \alpha\in \Lambda~~C_ \alpha\seq D</M>  and <M>\exists \beta\in \Lambda~~C_ \beta\seq E.</M>
<BECAUSE>Otherwise, either <M>D=\phi</M>  or <M>E=\phi.</M></BECAUSE>

Then <M>C_ \alpha\cap C_ \beta = \phi(\contra).</M>

<U>Second part</U>: No, the intersection of two connected sets need not be connected. For example, 
in the picture below <M>A</M>  and <M>B</M>  are two connected subsets of <M>\rr^2</M>  (usual topology). 
<CIMG web="conninter.png"/>
The intersection (shown in red) is not connected.
</WR>@}</EXM>

<EXM ref="2023.14a" paper="2023.14a"><EBODY>@{<E>
Prove that the set of real numbr <M>\rr</M> with lower limit
topology is disconnected.[2]
</E>@}</EBODY><SOLN/>@{<WR>
<M>(-\infty,0), ([0,\infty)</M>  provides one disconnection.
</WR>@}</EXM>

<EXM ref="2023.14b" paper="2023.14b"><EBODY>@{<E>
Prove that a topological space containing a dense connected set
is connected. [3]
</E>@}</EBODY><SOLN/>@{<WR>
Let <M>(X,\tau)</M>  be a topological space with a dense subset <M>D</M>, which is connected. Shall show that <M>X</M>  is
 connected.

Let, if possible, <M>X = U\cup V </M> be a disconnection. 

Since <M>D</M>  is dense, and <M>U,V </M> are non-empty open sets, hence <M>D\cap U\neq\phi</M>  and <M>D\cap V\neq\phi.</M> 
 
Thus <M>D = (D\cap U)\cup (D\cap V)</M>  is a disconnection for <M>D (\contra\bc D</M>  is connected<M>).</M>
</WR>@}</EXM>

<EXM ref="2023.17a" paper="2023.17a"><EBODY>@{<E>
If every continuous real valued function on a topological
space <M>(X,\tau)</M> takes on all values between any two values
that it assumes, then prove that <M>(X,\tau)</M> is connected. [2]
</E>@}</EBODY><SOLN/>@{<WR>
Let, if possible, <M>(X,\tau)</M>  have a disconnection <M>X = U\cup V.</M>  
Let <M>f:X\to\rr</M> be defined as <M>f(x)=<CASES>1<IF>x\in U</IF> 0<IF>x\in V</IF></CASES>.</M>  

Since <M>U\cap V=\phi,</M>  this is well-defined. 

This function is continuous.
<BECAUSE>
Let <M>A\seq\rr</M>  be open. 
<UL>
<LI>If <M>0\in A,</M>  but <M>1\not\in A,</M>  then <M>f ^{-1}(A)= V.</M></LI>
<LI>If <M>1\in A,</M>  but <M>0\not\in A,</M>  then <M>f ^{-1}(A)= U.</M></LI>
<LI>If <M>0,1\in A,</M>    then <M>f ^{-1}(A)= X.</M></LI>
<LI>If <M>0,1\not\in A,</M>   then <M>f ^{-1}(A)= \phi.</M></LI>
</UL>
Thus, in all the cases <M>f ^{-1}(A)\in \tau.</M>
</BECAUSE>
But <M>f</M>  does not take the value <M>[[12]]</M>  which is between <M>0</M>  and <M>1(\contra).</M>  
</WR>@}</EXM>

<EXM ref="2021.16a" paper="2021.16a"><EBODY>@{<E>
If every real valued continuous function defined on a a
topological space <M>X</M> takes on every value between any two
values that it assumes, then prove that <M>X</M> is connected.[3]
</E>@}</EBODY><SOLN/>Ager a.nkaTAi.</EXM>

<EXM ref="2023.17b" paper="2023.17b"><EBODY>@{<E>
If <M>A</M> is a connected subset consisting of at least two
points in a metric space <M>(X,d),</M> then prove that <M>A</M> is
uncountable. [3]
</E>@}</EBODY><SOLN/>@{<WR>
Let <M>a\neq b\in A.</M>  We define <M>f:A\to\rr</M>  as <M>f(x) = d(a,x).</M>  

Then <M>f(a) = 0</M>  and <M>f(b) = d(a,b)>0.</M>  

By intermediate value theorem, <M>f</M>  must take all values in <M>[0,d(a,b)].</M>  

Hence <M>\forall y\in [0,d(a,b)]~~\exists x\in A~~f(x) = y.</M>

Since <M>[0,d(a,b)]</M>  is uncountable, so is <M>A.</M>  
</WR>@}</EXM>
<EXM ref="2021.17a" paper="2021.17a"><EBODY>@{<E>
If <M>A</M> is a connected subset of a metric space <M>(X,d)</M>
consisting of at least two points, then prove that <M>A</M> is uncountable.[3]
</E>@}</EBODY><SOLN/>Ager a.nkaTAi.</EXM>



<EXM ref="2021.15a" paper="2021.15a"><EBODY>@{<E>
In a topological space <M>(X,\tau),</M> <M>E</M> is a connected
subset of <M>X</M> so that <M>E=A\cup B\cup C,</M> where <M>A</M>
and <M>B</M> are separated and <M>C</M> is connected. Show
that <M>A \cup C</M> is connected.[3]
</E>@}</EBODY><SOLN/>ekhAne @{<M>A</M>@}  Ar @{<M>B</M>@}-ke @{<E>separated</E>@}  balAr mAne @{<M>A\cap \overline B = \overline A\cap B = \phi.</M>@}
@{<WR>
Let, if possible, <M>A\cup C</M>  be not connected. Let <M>(U,V)</M>  be a disconnection. Then either <M>C\seq U</M>  or
 <M>C\seq V,</M>  since <M>C</M>  is connected. Wlog, let <M>C\seq V.</M>  Then  <M>(U,V\cup B)</M>  is a disconnection.
 for <M>A\cup B\cup C.</M>  
<BECAUSE>
<M>U</M>  is clopen in <M>A\cup C.</M>  Since <M>C\cap U=\phi,</M>  hence <M>U\seq A.</M> 
 Since <M>A,B</M>  are separated, hence  <M>B</M>  is separated from <M>U.</M>  So <M>U</M>  is clopen in <M>A\cup B\cup C.</M> 
 </BECAUSE>
This gives a contradiction, since <M>A\cup B\cup C</M>  is connected. 
</WR>@}
</EXM>

<EXM ref="2021.15b" paper="2021.15b"><EBODY>@{<E>
Consider <M>\rr</M> endowed with the usual
topology, <M>f:\rr\to\rr</M> is any function such
that <M>f(\qq)\seq\rr\setminus\qq</M>
and <M>f(\rr\setminus\qq)\seq\qq.</M> Show that <M>f</M> is not a
continuous function.[2]
</E>@}</EBODY><SOLN/>@{<WR>
Let <M>a= f(0)</M>  and <M>b = f(\sqrt2).</M>  Then <M>a\neq b,</M>  since <M>a\not\in\qq</M>  and <M>b\in\qq.</M>  Let,
 wlog, <M>a < b.</M>  Then by the intermediate value theorem all the values in <M>\qq^c\cap[a,b]</M>  must be taken by <M>f(x)</M> 
 for <M>x\in[0,\sqrt2]\cap \qq.</M>  But this is impossible, since <M>\qq^c\cap[a,b]</M>  is uncountable, while <M>\qq\cap[0,\sqrt2]</M> 
 is countable.
</WR>@}</EXM>


<EXM ref="2021.16b" paper="2021.16b"><EBODY>@{<E>
Prove that a continuous mapping from a connected space to the
real line having only rational values is constant.[2]
</E>@}</EBODY><SOLN/>@{<WR>
Let, if possible, the function be not constant. Then <M>\exists a,b~~f(a)\neq f(b).</M>  

By intermediate value theorem, <M>f</M>  must take all values  between <M>f(a)</M> and <M>f(b).</M>  Since <M>\qq^c</M> 
 is dense in <M>\rr,</M>  hence there must be at least one irrational between <M>f(a)</M>  and <M>f(b).</M>  
But, by the given condition, <M>f </M> cannot attain this value <M>(\contra).</M>
</WR>@}</EXM>


<EXM ref="2021.17b" paper="2021.17b"><EBODY>@{<E>
Find all components of the set of rational numbers endowed with
the subspace topology from the usual topology of <M>\rr.</M>[2]
</E>@}</EBODY><SOLN/>
@{<WR>
The singletons <M>\{r\}</M>  for <M>r\in\qq</M>  are the components. Obviously each such singleton is a
 connected subset of <M>\qq.</M>  

Let, if possible, there be a connected component with more than one element. Let <M>r< s</M>  be in such a component,
 <M>A.</M>  

Since <M>\qq^c</M>  is dense in <M>\rr,</M>  we have <M>\qq^c\cap[r,s]\neq\phi.</M>  

We pick some <M>a\in\qq^c\cap[r,s].</M>

Then <M>A\cap(-\infty,a)\cap\qq</M>  and <M>A\cap(a,\infty)\cap\qq</M>  provide a disconnection of <M>A(\contra).</M>
</WR>@}
</EXM>

<EXM ref="2023.16b" paper="2023.16b"><EBODY>@{<E>
Prove that each component of a topological space is closed. [2]
</E>@}</EBODY><SOLN/>@{<WR>

Ler <M>A</M>  be a connected component of a topological space <M>(X,\tau).</M>  

Then <M>A</M>  is the intersection of all its  clopen supersets.
<BECAUSE>
Let <M>C</M>  be a clopen superset of <M>A.</M>  Let <M>p\in C^c.</M>   Then <M>C^c</M>  and
 <M>C</M>  provide a disconnection for <M>A\cup\{p\}.</M> 

Conversely, let <M>q</M>  be in the intersection of all clopen supersets of <M>A.</M>  Let, if possible, <M>A\cup\{q\}</M> 
 have a disconnection <M>(U,V).</M>  Since <M>A</M>  is connected, hence <M>A\seq U</M>  or <M>A\seq V.</M>  If <M>A\seq U,</M> 
 then <M>U</M>  is a clopen superset of <M>A,</M>  and hence <M>q\in U.</M>  So <M>V=\phi (\contra).</M>  Similarly, if <M>A\seq V,</M> 
 then <M>U=\phi (\contra).</M>
</BECAUSE>
 Since arbitrary intersectons of closed sets are closed,
 hence <M>A</M>  must be closed.
</WR>@}</EXM>

<EXM ref="2022.1d" paper="2022.1d"><EBODY>@{<E>
A connected subset <M>G</M> of the real line <M>\rr</M> with at
least two points must be
<HL>
<LI>a finite set</LI>
<LI>a bounded set</LI>
<LI>an infinite closed set</LI>
<LI>an uncountable set.</LI>
</HL>
</E>@}</EBODY><SOLN/>
@{<WR>Connected subsets of <M>\rr</M>  under the usual topology are the intervals. An interval
 with at least two (distinct) points is an uncountable set. The last option is correct.</WR>@}
</EXM>

<EXM ref="2023.1h" paper="2023.1h"><EBODY>@{<E>
A continuous function <M>f</M> from an infinite connected
space <M>(X,\tau)</M> to a discrete two-point
space <M>\{0,1\}</M> 
<VL>
<LI>must be constant.</LI>
<LI>must be non-constant.</LI>
<LI>is not closed.</LI>
<LI>is not open.</LI>
</VL> 
</E>@}</EBODY><SOLN/>
@{<WR>
Let <M>f:X\to\{0,1\}</M>  be continuous. Now <M>\{0\}</M>  and <M>\{1\}</M>  are both open in the codomain. 

So <M>f ^{-1}(\{0\})</M>  and <M>f ^{-1}(\{1\})</M>  must be open in the domain. Also, these are complements of each other.
 Hence both must be closed. 

So both are clopen. Since the domain is connected, hence the only clopen subsets in it are <M>\phi</M>  and <M>X.</M>  

So either <M>f ^{-1}(\{1\}) = X</M>  and <M>f ^{-1}(\{0\}) = \phi,</M>  or <M>f ^{-1}(\{1\}) = \phi</M>  and <M>f ^{-1}(\{0\}) = X.</M>

In either case, <M>f </M> is a constant function, as required.
</WR>@}
</EXM>


@{<HEAD1>Separable and countable</HEAD1>@}

<EXM ref="2023.9a" paper="2023.9a"><EBODY>@{<E>
Give example of a topological space which is <M>T_1</M> but
not <M>T_2.</M> Justify your answer. [2]
</E>@}</EBODY><SOLN/>
@{<WR>
<M>\rr</M>  with cofinite topology is one such example. 

Let <M>a\neq b\in\rr.</M>  

Then <M>\{a\}^c</M>  is an open neighbourhood of <M>b</M>  that does not contain <M>a.</M>  Hence <M>T_1.</M>

We consider <M>0\neq 1\in\rr.</M>   Let <M>A</M> and <M>B</M>   be any open neighbourhoods of <M>0</M>  and <M>1</M>, respectively.
 Then both <M>A, B</M>  are cofinite, and since <M>\rr </M> is infinite, both must be infinite. So <M>A\not\seq B^c</M> 
 and <M>B\not\seq A^c.</M>  Hence <M>A\cap B\neq\phi.</M>  

So the space is not <M>T_2.</M>
</WR>@}
</EXM>

<EXM ref="2023.9b" paper="2023.9b"><EBODY>@{<E>
Prove that a topological space <M>(X,\tau)</M> is <M>T_1</M> if
and only if every neighbourhood of any limit point <M>p</M> of
any set <M>A\seq X</M> intersects <M>A</M> in countably infinite
number of points.[2+3]
</E>@}</EBODY><SOLN/>
a.nkaTAr bhASA niye ekTu samasyA Achhe. AmrA jAni ye, @{<E>usual topology</E>@}  nile @{<M>\rr</M>@}  hala @{<M>T_1.</M>@}  
er madhye ekTA @{<E>set</E>@}  nite pAri @{<M>A=(0,1)</M>@}  yAr ekTA @{<E>limit point</E>@}  hala
 @{<M>[[12]].</M>@}  er yekono @{<E>neighbourhood</E>@}-i @{<M>A</M>@}-ke @{<E>uncountably
 infinite</E>@}-sa.nkhyak bindute @{<E>intersect</E>@}  kare.   tabe ekhAne @{<E>countably infinite </E>@} balechhe kena? 
eTA anekTA sei ''kon.h kon.h mAse AThAsh din Achhe?'' prashnaTAr mata. yehetu balini ''kebalmAtra AThAsh dinai Achhe'', 
tAi uttar hala sab mAsei AThAsh din Achhe. ekhAneo temni @{<E>countably infinite </E>@}-er madhye @{<E>uncountably infinite </E>@}-o 
dharA Achhe. bas+tuta.H ekhAne sref ''@{<E>infinite</E>@}'' ballei sabcheye bhAlo hata.  
@{<WR>
Let <M>U_1</M>  be any neighbourhood of <M>p.</M>  

Since <M>p </M> is a limit point of <M>A,</M>  hence <M>A\cap U_1</M>  contains at least one point <M>q_1</M>  other than <M>p.</M> 
 
Since the space is <M>T_1,</M>  we can find some neighbourhood <M>U_2</M>  of <M>p</M>  such that
 <M>q_1\not\in U_2.</M>  As before we can find <M>q_2\neq p</M>  in <M>A\cap U_2.</M>  

Clearly, <M>q_1\neq q_2,</M>  since <M>q_1\not\in U_2 </M> and <M>q_2\in U_2.</M>  

Again, by <M>T_1</M>  property, we can find neighbourhoods <M>U_3</M>  of <M>p</M>  such that
 <M>q_1, q_2\not\in U_3. </M>   and find <M>q_3\in A\cap U_3. </M>  

Continuing in this way we can produce a (countably) infinite sequence of distinct points in <M>A\cap U_1.</M>  

Conversely, let the given condition hold. Let, if possible, the space be not <M>T_1.</M>  

Then we can find two distinct points <M>a,b</M>  that cannot be weakly separated.

Then every neighbourhood of <M>a</M>  contains <M>b.</M>  Hence <M>a</M>  is a limit point of
 <M>\{b\}.</M>  But since <M>\{b\}</M>  is a just a finite set, not neighbourhood of <M>a</M>  can
 intersect <M>\{b\}</M>  at infinitely many points. This contradicts the given condition.   
</WR>@}
</EXM>

<EXM ref="2022.12b" paper="2022.12b"><EBODY>@{<E>
Prove that <M>\rr</M> endowed with cofinite topology is not a
first countable space.[2]
</E>@}</EBODY><SOLN/>@{<WR>
Let, if possible, the space be first countable. Then there is countable local base <M>A_1,A_2,...</M>  at <M>0.</M>  

Each <M>A_1^c</M>  is finite. Let <M>B = \cup_n A_n^c.</M>  Then <M>B</M>  is countable. 

Since <M>\rr</M>  is uncountable, hence <M>B^c</M>  is uncountable. 

We pick some <M>r\in B^c</M> such that <M>r\neq 0.</M>   Then <M>\{r\}^c</M>  is a neighbourhood of <M>0.</M>  However, it
cannot be expressed as the union of any number of <M>A_n</M>'s. 
</WR>@}</EXM>

<EXM ref="2021.1d" paper="2021.1d"><EBODY>@{<E>
An uncountable set with cofinite topology is
<VL>
<LI>both <M>T_1</M> and first countable space.</LI>
<LI>both <M>T_2</M> and first countable space.</LI>
<LI>a first countable space, but not a <M>T_2</M> space.</LI>
<LI>neither a first countable space nor a <M>T_2</M> space.</LI>
</VL>
</E>@}</EBODY><SOLN/>
Agei dekhiyechhi ye, @{<M>T_2</M>@}  nay, eba.n  @{<E>first countable</E>@}-o nay. 
</EXM>


<EXM ref="2021.1f" paper="2021.1f"><EBODY>@{<E>
The number of <M>T_1</M> topologies that can be defined on a
finite set with <M>n</M> elements is 
<HL><LI>1</LI><LI><M>n</M></LI><LI><M>2^n</M><LI><M>n-1.</M></LI></LI></HL>
</E>@}</EBODY><SOLN/>@{<E>Discrete topology</E>@}-i khAli hate pAre. yadi @{<M>n=2</M>@}  hay,
 tabe duTo @{<E>point</E>@}-ke @{<E>weakly spearate</E>@}  rAkhAr ekTAi path, oderke AlAdA kare
 niye @{<E>open</E>@}  @{<E>set</E>@}  bAnAno. 

yadi @{<M>n\geq 3 </M>@} hay, tabe dharo @{<E>point</E>@}-gulo hala @{<M>a_1,...,a_n.</M>@} 
tumi @{<M>a_1</M>@}  Ar @{<M>a_i</M>@}-ke @{<E>weakly spearate</E>@}  karAr janya
 @{<M>a_1</M>@}-er eman ekTA @{<E>neighbourhood</E>@}  chAibe, yAte @{<M>a_i</M>@}  nei. eTA sab
 @{<M>i=2,...,n</M>@}-er janya khATe. ei @{<E>neighbourhood</E>@}-gulor @{<E>intersection</E>@} 
 ekTA @{<E>open</E>@}  @{<E>set</E>@}  habe. seTA to sref @{<M>\{a_1\}.</M>@}  ekaibhAbe pratiTA
 @{<M>\{a_i\}</M>@}-i ekekTA @{<E>open</E>@}  @{<E>set.</E>@}  </EXM>

<EXM ref="2021.12b" paper="2021.12b"><EBODY>@{<E>
If <M>(X,\tau)</M> is a <M>T_1</M> space and every intersection
of open sets is open in <M>(X,\tau),</M> prove that <M>\tau</M>
is the discrete topology on <M>X.</M>[2]
</E>@}</EBODY><SOLN/>Ager a.nker yuk+tiTAi khATbe.</EXM>

<EXM ref="2022.9a" paper="2022.9a"><EBODY>@{<E>
Show that every metric space is a first countable space, but not
necessarily second countable.[2]
</E>@}</EBODY><SOLN/>
@{<WR>
If <M>(X,d)</M>  is a metric space, then at each point <M>p</M>  a countable local base is
 <M>{*{N(*(p,[[1n]] )*)~:~n\in\nn}*}.</M>

Consider the space <M>\rr</M>  under the metric <M>d(x,y) =<CASES>1<IF>x\neq y</IF> 0<ELSE/></CASES>. </M>  The topology
induced by this metric is the discrete topology, where each singleton is a open set. Hence any base must contain all the
 singletons. Since <M>\rr</M>  is an uncountable set, any base must be uncountable.

 
So this metric space is not second countable. 
</WR>@}
</EXM>

<EXM ref="2022.9b" paper="2022.9b"><EBODY>@{<E>
Let <M>X</M> be an uncountable set, and <M>p</M> be a fixed point
in <M>X.</M> Consider the topology <M>\tau=\{A\seq X~:~p\in
A\}\cup\{\phi\}</M> on <M>X.</M> Examine whether <M>(X,\tau)</M>
is a second countable space.[1+2]
</E>@}</EBODY><SOLN/>
@{<WR>
No, it is not second countable. 

Let <M>q\neq p.</M>  Then <M>\{p,q\}</M> 
 is an open set, but <M>\{q\}</M>  is not. So <M>\{p,q\}</M>  must be in any base. But <M>q</M>  may be taken in uncountably
 infinitely many ways. So any base must be uncountably infinite.
</WR>@}</EXM>

<EXM ref="2023.11a" paper="2023.11a"><EBODY>@{<E>
Let <M>(X,\tau)</M> be a topological space and <M>{\cal B}</M> a
local base at <M>c\in X.</M> Prove that a
sequence <M>\{x_n\}_n</M> converges to <M>c\in X</M> if and only
if for every <M>B\in{\cal B}</M> there exists a positive
integer <M>m</M> such that for all <M>n\geq m,</M> <M>x_n\in
B.</M> [3]
</E>@}</EBODY><SOLN/>
@{<WR>
<U>(If part)</U>: Shall show

<TGT>\forall U\in \tau\mbox{ with } <M>c\in U</M>~~\exists K\in\nn~~\forall n\geq K~~x_n\in U.</TGT>

<FLL>U</FLL> Take any <M>U\in\tau</M>  with <M>c\in U.</M>  

Then <M>\exists B\in {\cal B}~~c\in B\seq U.</M>  

By the given condition, <M>\exists m\in\nn~~\forall n\geq m~~x_n\in B.</M>

<EXS>K</EXS> Choose <M>K = m\in\nn.</M>  

<FLL>n</FLL> Take any <M>n\geq K.</M>

<CHK/>Then <M>x_n\in B\seq U,</M>  as required.

<U>(Only if part)</U>: Shall show 

<TGT>\forall B\in {\cal B}~~\exists K\in\nn~~\forall n\geq K~~x_n\in B.</TGT>

<FLL>B</FLL> Take any <M>B\in{\cal B}.</M>

Since <M>B\in\tau,</M>  hence <M>\exists K\in\nn~~\forall n\geq K~~x_n\in B.</M>

<EXS>K</EXS> Choose this <M>K\in\nn.</M>

<FLL>n</FLL> Take any <M>n\geq K.</M>

<CHK/>Then <M>x_n\in B,</M>  as required.
</WR>@}</EXM>

<EXM ref="2022.10" paper="2022.10"><EBODY>@{<E>
Let <M>(X,\tau)</M> be a first countable space and <M>f:X\to
Y</M> be any function (<M>Y</M> being any topological space) such
that for any sequence <M>\{x_n\}</M> converging to any
point <M>x\in X,</M> the sequence <M>\{f(x_n)\}</M> converges
to <M>f(x).</M> Prove that <M>f</M> is continuous on <M>X.</M>[5]
</E>@}</EBODY><SOLN/>
@{<WR>
Let, if possible, <M>f</M>  be not continuous. 

Then we can find some open <M>V</M> in <M>Y</M> such that <M>U = f ^{-1} (V)</M> 
  is not open in <M>X.</M>

Since <M>U</M>  is not open, hence we can pick some <M>a\in U</M>  such that no neighbourhood of <M>a</M>  is completely
 inside <M>U.</M>  

Let <M>\{B_n\}</M>  be a  local base at <M>a.</M>

Then <M>\forall n\in\nn~~\exists x_n\in B_n\setminus U.</M>  

Thus we have a sequence <M>\{x_n\}_n.</M>   Since this is sequence is outside <M>U,</M>  hence <M>f(x_n)</M>  is outside
 <M>V.</M>  Hence <M>f(x_n)\not\to f(a).</M>  

However, <M>x_n\to a.</M>   (why?)
</WR>@}
</EXM>

<EXM ref="2022.11" paper="2022.11"><EBODY>@{<E>
Let <M>f:X\to Y</M>, <M>g:X\to Y</M> be two continuous functions
from a topological space <M>(X,\tau)</M> to a Hausdorff
space <M>(Y,\sigma).</M> Prove that

(a) <M>F = \{x\in X~:~f(x)=g(x)\}</M> is a closed set.

(b) <M>f|_D = g|_D\implies f=g,</M> where <M>\bar D = X.</M>[3+2]
</E>@}</EBODY><SOLN/>
@{<WR>
(a) Let <M>a\in F^c.</M>  Then <M>f(a)\neq g(a).</M>  Since <M>(Y,\sigma)</M>  is Hausdorff, <M>\exists U,V\in\sigma</M> 
 such that <M>f(a)\in U,</M>  <M>f(b)\in V</M>  and <M>U\cap V=\phi.</M>  

So <M>f ^{-1} (U)</M>  and <M>g ^{-1} (V)</M>  are open sets in <M>X.</M>  

Let <M>W  = f ^{-1}(U)\cap g ^{-1}(V).</M>  It is an open set containing <M>a.</M>  

For each <M>x\in W</M>  we have <M>f(x)\in U</M>  and <M>g(x)\in V.</M>   Since <M>U\cap V = \phi,</M>  hence <M>F(x)\neq g(x).</M>

So <M>W\seq F^c,</M>  proving that <M>F </M> is open in <M>X.</M>
</WR>@}
</EXM>

<EXM ref="2022.12a" paper="2022.12a"><EBODY>@{<E>
A <M>G_\delta </M> set in a space <M>X</M> is a set that equals a
countable intersection of open sets of <M>X.</M> Show that
if <M>X</M> is a first countable <M>T_1</M>-space, every
singleton set is a <M>G_\delta </M> set.[3]
</E>@}</EBODY><SOLN/>
@{<WR>
Take any <M>a\in X. </M>  Since <M>X</M>  is first countable, hence there is a countable local base <M>\{B_n~:~n\in\nn\}.</M> 
 
Claim: <M>\cap _n B_n = \{a\}.</M>  

Justification: Clearly <M>a\in \cap_n B_n.</M>  Let <M>b\in X</M>  wher <M>b\neq a.</M>  Since <M>X </M> is <M>T_1,</M> 
 we can find a neighbourhood <M>U</M>  of <M>a</M>  such that <M>b\not\in U.</M>  

Now, there is some <M>k\in\nn</M>  such that <M>a\in B_k\seq U.</M>  

Hence <M>b\not\in\cap_n B_n.</M>  Since <M>b\neq a</M>  is arbitrary, the claim is justified.///

Hence <M>\{a\}</M>  is a <M>G_ \delta</M>  set, as required.  
</WR>@}</EXM>



<EXM ref="2023.10" paper="2023.10"><EBODY>@{<E>
Let <M>X</M> be an uncountable set and <M>p</M> be a fixed point
in <M>X.</M> Define 
<D>\tau = \{G\seq X~:~\text{either } p\not\in G\text{ or if }p\in G\text{ then } X\setminus G\text{ is finite}.\}</D>
Prove that <M>(X,\tau)</M> is a topological space which is not
first countable. [2+3]
</E>@}</EBODY><SOLN/>
@{<WR>
<U>First part</U>:  <M>\bc\not\in \phi,</M>  <M>\tf \phi\in\tau.</M>

<M>\bc p\in X </M> and <M>X </M> is cofinite, <M>\tf X\in\tau.</M>

Let <M>\{G_ \alpha~:~\alpha\in A\}\seq \tau.</M>   If <M>\exists \alpha\in A~~(p\in G_ \alpha</M>  and <M>G</M>  is cofinite<M>),</M> 
 then so is <M>\cup_{\alpha\in A} G_ \alpha, </M> and hence <M>\cup_{\alpha\in A} G_ \alpha\in\tau.</M>

Otherwise, <M>\forall \alpha\in A~~p\not\in G_ \alpha.</M>  Hence <M>p\not\in \cup_{\alpha\in A} G_ \alpha.</M>

Hence <M>\cup_{\alpha\in A} G_ \alpha\in\tau.</M>

Let <M>H_1, H_2\in\tau.</M>  If <M>p\notin H_1 </M> or <M>p\notin H_2, </M>  then <M>p\notin H_1\cap H_2. </M>  Hence <M>H_1\cap H_2\in\tau.</M>

Otherwise, <M>p\in H_1,H_2</M>  and both <M>H_1,H_2</M>  are cofinite. So <M>p\in H_1\cap H_2</M>  and <M>H_1\cap H_2</M> 
 is cofinite. So <M>H_1\cap H_2\in\tau.</M>  

Hence <M>\tau</M>  is a topology.

<U>Second part</U>: 

Let, if possible, the topology be first countable. Let a countable local base at <M>p </M> be <M>\{B_n~:~n\in\nn\}.</M>

Since each <M>B_n</M>  contains <M>p,</M>  hence each <M>B_n</M>  is cofinite. 

 
Let <M>C = \cup_n B_n^c,</M>  which is a countable union of finite sets, and hence countable. Since <M>X</M>  is uncountable,
 <M>C^c\neq\phi.</M>  

We take any  <M>x\in C.</M>. Then  <M>\{x\}^c</M>  is an open set containing <M>p.</M>  

So there must be some <M>n\in\nn</M>  such that <M>B_n\seq\{x\}^c,</M>  ie, <M>c\in B_n^c(\contra\bc x\in C^c).</M>   

</WR>@}
</EXM>

<EXM ref="2021.11b" paper="2021.11b"><EBODY>@{<E>
Consider a topology <M>\eta</M> on <M>\rr</M> given by <M>\eta =
\{U\seq\rr~:~\text{ either } 1\not\in U \text{ or } \rr\setminus
U\text{ is finite}\}.</M> Prove that <M>(\rr,\eta)</M> is not
first countable.[2]
</E>@}</EBODY><SOLN/>AgerTAr matai.</EXM>

<EXM ref="2023.11b" paper="2023.11b"><EBODY>@{<E>
Let <M>f:(X,\tau_1)\to(Y,\tau_2)</M> be an open, continuous
surjective map, where <M>X</M> is first countable. Prove
that <M>Y</M> is first countable.[2]
</E>@}</EBODY><SOLN/>
@{<WR>
Let <M>y\in Y.</M>  Since <M>f</M>  is surjective, <M>y = f(x)</M>  for some <M>x\in X.</M>

Since <M>X</M>  is first countable, there is a countable local base <M>\{B_n~:~n\in\nn\}</M>  at <M>x.</M>  

Let <M>U_n = f(B_n).</M>

Since <M>f</M>  is an open map, hence <M>U_n</M>'s are all open. 

Shall show that <M>\{U_n~:~n\in\nn\}</M>  is a local base at <M>y.</M>  

We take any open set <M>V</M>  in <M>Y</M>  such that <M>y\in V.</M>  

Since <M>f </M> is continuous, <M>f ^{-1} (V)</M>  is open in <M>X.</M> Also, its contains <M>x.</M>  

So there is some <M>n\in\nn</M>  such that <M>B_n\seq f ^{-1}(V).</M>  So <M>f(B_n)\seq V,</M>  ie, <M>U_n\in V.</M>

Hence the result.
</WR>@}
</EXM>

<EXM ref="2021.11a" paper="2021.11a"><EBODY>@{<E>
<M>f:(X,\tau)\to (Y,\tau')</M> is a open, continuous surjection,
and <M>(X,\tau)</M> is a first countable space. Prove
that <M>Y</M> is first countable.[3]
</E>@}</EBODY><SOLN/>Ager a.nkaTAi.</EXM>

<EXM ref="2021.12a" paper="2021.12a"><EBODY>@{<E>
<M>f:(X,\tau)\to (Y,\tau')</M> is  continuous and injective,
where <M>Y</M> is a Hausdorff space. Show that <M>X</M> is Hausdorff.[3]
</E>@}</EBODY><SOLN/>@{<WR>
Let <M>a,b\in X</M>  be distinct. (If no such distinct pair, then vacuously Hausdorff.)

Since <M>f</M>  is injective, <M>f(a)</M>  and <M>f(b)</M>  are distinct in <M>Y.</M>  Since
 <M>Y</M>  is Hausdorff, can find disjoint open sets <M>A</M>  and <M>B</M>  in <M>Y</M>  such
 that <M>f(a)\in A</M> and <M>f(b)\in B.</M>  

Since <M>f</M>  is continuous, hence <M>f ^{-1}(A)</M> and <M>f ^{-1}(B)</M>  are open. Also they are disjoint.

Since <M>a\in f ^{-1}(A)</M>  and <M>b\in f ^{-1}(B)</M>, hence they provide a strong separation of <M>a,b.</M>
</WR>@}</EXM>

<EXM ref="2023.12a" paper="2023.12a"><EBODY>@{<E>
If <M>(X_1,\tau_1)</M> and <M>(X_2,\tau_2)</M> are two <M>T_2</M>
spaces, then prove that their product space <M>(X,\tau)</M> is
also a <M>T_2</M> space. [3]
</E>@}</EBODY><SOLN/>
@{<WR>
Let <M>(a_1,a_2),(b_1,b_2)</M>  be two distinct points in <M> X=X_1\times X_2.</M>  

Then  <M>a_1,b_1\in  X_1</M>  and <M>a_2,b_2\in X_2.</M>

<U>Case I: <M>a_1\neq b_1</M>  </U>: Since <M>X_1</M>  is <M>T_2,</M>  we can find two disjoint open sets <M>A_1,B_1</M> in <M>X_1</M>
such that <M>a_1\in A_1</M> and <M>b_1\in B_1.</M>  

Also we take any two open sets <M>A_2,B_2</M> in <M>X_2</M>   such that <M>a_2\in A_2</M>  and <M>b_2\in B_2.</M>  

Then <M>A_1\times A_2</M>  and <M>B_1\times B_2</M>  are disjoint open sets in <M>X</M> 
 containing <M>(a_1,b_1)</M>  and <M>(a_2,b_2)</M>, respectively. 

 <U>Case I: <M>a_1= b_1</M></U>: Then we must have <M>a_2\neq b_2.</M> We repeat the above agument
 with <M>X_2</M> this time, since <M>X_2 </M> is also Hausdorf.
</WR>@}</EXM>

<EXM ref="2023.12b" paper="2023.12b"><EBODY>@{<E>
Let <M>f:(X,\tau_1)\to(Y,\tau_2)</M> be a continuous map,
and <M>Y</M> be <M>T_2.</M> Prove that the
set <M>\{(x,f(x))~:~x\in X\}</M> is a closed set in <M>X\times
Y,</M> where <M>X\times Y</M> is endowed with the product topology.[2]
</E>@}</EBODY><SOLN/>
@{<WR>
Let <M>G=\{(x,f(x))~:~x\in X\}.</M>  We take any <M>(a,b)\in (X\times Y)\setminus G.</M>

So <M>b\neq f(a).</M>  Since <M>Y</M>  is <M>T_2,</M>  hence can find two disjoint open sets <M>U</M>  and <M>V</M>  in <M>Y</M> 
 such that <M>f(a)\in U</M>  and <M>b\in V.</M>  

Since <M>f</M>  is continuous, <M>f ^{-1}(U)</M>  and <M>f ^{-1}(V)</M>   open in <M>X.</M>  Also these are disjoint.

Clearly, <M>a\in f ^{-1}(U).</M>   

Consider the open set <M>f ^{-1}(U)\times V</M>  in <M>X\times Y.</M>  It contains <M>(a,b).</M>

Also <M>\forall x\in f ^{-1}(U)~~f(x)\in U,</M>  and hence <M>\forall x\in f ^{-1}(U)~~f(x)\not\in V.</M>  

So <M>f ^{-1}(U)\times V\seq G^c,</M>  completing the proof.
</WR>@}
</EXM>

<EXM ref="2021.2" paper="2021.2"><EBODY>@{<E>
Let <M>(X,\tau)</M> be the topological product of the family of
topological spaces <M>\{(X_i,\tau_i)~:~i=1,2,...,n\}</M>
and <M>p_i:X\to X_i</M> denote the <M>i</M>-th projection map for
all <M>i=1,...,n.</M> Prove that

(a) <M>p_i</M> is an open map for each <M>i.</M>

(b) <M>\tau</M> is the smallest topology on <M>X</M> such that
each <M>p_i</M> is continuous.[2+3]
</E>@}</EBODY><SOLN/>
@{<WR>
(a) Let <M>U</M>  be an open set in the product topology. Shall show that <M>p_i(U)</M>  is open in <M>X_i.</M>  

Take any point <M>a\in p_i(U).</M>  Then there is some point <M>b\in U</M>   such that <M>a = p_i(b).</M>  

Since rectangles form a base in the product topology, <M>\forall k</M>  there must exist open sets
 <M>U_k</M>  in <M>X_k</M>  such that <M>b\in U_1\times\cdots\times U_n\seq U.</M>

So <M>p_i(b)\in p_i(U_1\times\cdots\times U_n)\seq p_i(U),</M>  ie, <M>a\in U_i\seq p_i(U).</M>

Hence <M>p_i(U)</M>  is open in <M>X_i,</M>  as required.   

(b) To make <M>p_i</M>'s continuous, we need to have all sets of the form <M>X_1\times\cdots X_{i-1}\times U_i\times X_{i+1}\times\cdots X_n</M> 
 in the topology, where <M>U_i</M>  is any open set in <M>X_i.</M>

Taking finite itersections, the topology must contain all rectangles. Since these constitute a base for  <M>\tau,</M>   we
 must have <M>\tau</M>  inside the topology, completing the proof.
</WR>@}
</EXM>

<EXM ref="2023.8" paper="2023.8"><EBODY>@{<E>
Let <M>(X,\tau)</M> be the topological product of a family of
topological spaces <M>\{(X_i,\tau_i)~:~i=1,2,...,n\}</M>
and <M>p_i:X\to X_i</M> denote the <M>i</M>-th projection map for
all <M>i=1,2,...,n.</M> Then prove that

(a) <M>p_i</M> is an open map for all <M>i=1,2,...,n.</M>

(b) the product topology <M>\tau</M> is the smallest topology
on <M>X</M> such that each projection map is continuous.

[2+3]
</E>@}</EBODY><SOLN/>Ager a.nkaTAi.</EXM>


<EXM ref="2021.4" paper="2021.4"><EBODY>@{<E>
Let <M>(X,d)</M> be  a metric space and <M>A</M> be a non-empty
subset of <M>X.</M> Prove that the
functions <M>f_A:(X,\tau(d))\to\rr</M> defined by <M>f_A(x) =
\inf\{d(x,a)~:~a\in A\},</M> for all <M>x\in X,</M> is continuous
on <M>X</M> (where <M>\tau(d)</M> denotes the metric topology
on <M>X</M> induced by <M>d</M>). Hence prove that for
any <M>A\seq X,</M><D>
\overline A = \{x\in X~:~d(x,A)=0\}
</D>
in <M>(X,\tau(d)).</M>[3+2]
</E>@}</EBODY><SOLN/>
@{<WR>
Shall show

<TGT>\forall \alpha\in\rr ~~\ub{f_A ^{-1}(-\infty,\alpha)\in\tau(d)}_G.</TGT>

<FLL>\alpha</FLL> We take any <M>\alpha\in\rr</M>. 

<CHK/>If <M>G=\phi,</M>  and hence <M>G\in\tau.</M>  

Otherwise, we take any <M>x\in G.</M>  

Then <M>\inf\{d(x,a)~:~a\in A\} < \alpha.</M>

Let <M>\epsilon = \alpha-\inf\{d(x,a)~:~a\in A\}>0.</M>

Then <M>N(*(x,[[\epsilon2]])*)\seq G.</M>
<BECAUSE>
Take any <M>y\in N(*(x,[[\epsilon2]])*)</M>  and any <M>a\in A.</M>

Then, by triangle inequality, <M>d(a,y) \leq d(a,x)+\d(x,y) < d(a,x) + \epsilon.</M>

So, taking infimum over <M>a\in A</M> , we have 
<D>f_A(y) \leq  f_A(x) + [[\epsilon2]] < \alpha-[[\epsilon2]] < \alpha.</D>
</BECAUSE>  
Hence <M>G\in\tau(d).</M>
</WR>@}
</EXM>

<EXM ref="2021.5" paper="2021.5"><EBODY>@{<E>
(a) <M>\tau</M> is the usual topology on <M>\rr</M>
and <M>\tau'=\{A\cup B~:~A\in\tau,~~B\seq \rr\setminus\qq\}.</M>
Prove that <M>\tau'</M> is a topology on <M>\rr</M> which is
finer than <M>\tau.</M>

(b) Find the interior of the set <M>\{\sqrt2+n~:~n\in\nn\}</M>
in <M>(\rr,\tau').</M> [3+2]
</E>@}</EBODY><SOLN/>
@{<WR>
(a) 

<U><M>\tau'</M>  is a topology</U>: <M>\phi\in\tau</M>  and <M>\phi\seq \qq^c.</M>  Hence
 <M>\phi = \phi\cup\phi\in\tau'.</M>

Again, <M>\rr\in\tau.</M>  So <M>\rr = \rr\cup\phi\in\tau'.</M>

Let <M>\{G_ \alpha~:~\alpha\in \Lambda\}\seq\tau'.</M>  

Then <M>\forall \alpha\in ^{-1}~~ G_ \alpha = A_ \alpha \cup B_ \alpha</M>  
for some <M>A_ \alpha\in\tau</M>  and some <M>B_ \alpha\in\qq^c.</M>

Hence 
<D>\cup_{\alpha\in \Lambda} G_ \alpha = \ub{\cup_{\alpha\in \Lambda} A_ \alpha}_A \bigcup \ub{\cup_{\alpha\in \Lambda} B_ \alpha}_B \in\tau',</D> 
since <M>A\in\tau</M>  and <M>B\seq\qq^c.</M>

Finally, let <M>G_1,G_2\in\tau'.</M>  Then <M>G_i = A_i\cup B_i </M> for <M>i=1,2</M>  for some <M>A_1,A_2\in\tau </M> and
 <M>B_1,B_2\seq\qq^c.</M>  

So 
<D>G_1\cap G_2 = (A_1\cap A_2)\cup (B_1\cap B_2)\in\tau',</D>
since <M>A_1\cap A_2\in\tau</M>  and <M>B_1\cap B_2\seq\qq^c.</M>

<U><M>\tau'</M>  is finer than <M>\tau</M></U>:

Since <M>\phi\seq\qq^c,</M>  hence <M>\forall A\in\tau~~A = A\cup\phi\in \tau'.</M>

(b) Let <M>C=  \{\sqrt2+n~:~n\in\nn\}.</M>  

Since <M>\phi\in\tau</M>  and <M>\forall n\in\nn~~\sqrt2+n\in\qq^c,</M>  we see that <M>\{\sqrt2+n\} = \phi\cup\{\sqrt2+n\}\in\tau'.</M>

Thus, each singleton subset of <M>C</M>  is open wrt <M>\tau'.</M>  Hence the required interior is <M>C</M>  itself.
</WR>@}
</EXM>

<EXM ref="2021.6a" paper="2021.6a"><EBODY>@{<E>
Prove that an isometry <M>f:(X,d)\to(Y,d')</M> is a homeomorphism
from <M>(X,\tau(d))</M> to <M>(Y,\tau(d')).</M>
(Here <M>(X,d)</M> and <M>(Y,d')</M> are two metric spaces,
and <M>\tau(d)</M> and <M>\tau(d')</M> are the topologies
generated by the corresponding metric on <M>X</M> or <M>Y,</M> respectively.)[3]
</E>@}</EBODY><SOLN/>
ekhAne bhASAr sAmAnya samasyA Achhe. @{<E>Isometry</E>@}  mAne eman @{<E>function</E>@}, yeTA dUrat+wa raxA kare, mAne @{<M>x_1,x_2</M>@}-r 
madhye dUrat+wa yA, @{<M>f(x_1), f(x_2)</M>@}-er madhyer dUrat+wao tA-i habe. er madhye kothAo @{<E>onto</E>@}  dharA nei. 
kintu ekhAne seTA dhare nite habe. 
@{<WR>
We assume that <M>f</M>  is onto.

Since <M>f</M>  is an isometry, it is one-one.
<BECAUSE>
<M>x_1\neq x_2\implies d(x_1,x_2) > 0 \implies d'(f(x_1),f(x_2))= d(x_1,x_2)> 0\implies f(x_1)\neq f(x_2).</M>
</BECAUSE>
Shall show that <M>f </M> is continuous, ie

<TGT>\forall U\in \tau(d')~~f ^{-1}(U)\in\tau(d).</TGT>

<FLL>U</FLL> We take any <M>U\in\tau(d').</M>  

If <M>f ^{-1} (U)=\phi,</M>  then done.

Otherwise, let <M>a\in f ^{-1}(U).</M>

Then <M>f(a)\in U.</M>  Since <M>U\in\tau(d'),</M>  hence <M>f(a)\in N_{d'}(f(a),\epsilon)\seq U</M>  for some <M>\epsilon>0.</M>

Hence <M>a\in f ^{-1}(#(N_{d'}(f(a),\epsilon) )#)\seq f ^{-1}(U).</M>

But, since <M>f</M>  is an isometry, hence <M>N_{d'}(f(a),\epsilon) )#) = N_d(a,\epsilon).</M>

Hence <M>a\in N_d(f(a),\epsilon) )#)\seq f ^{-1}(U).</M>

So <M>f ^{-1}(U)\in\tau(d).</M>

Next, let <M>V\in\tau(d).</M>  Shall show that <M>f(V)\in\tau(d').</M>  

We take any <M>b\in f(V).</M>  Then <M>f ^{-1}(b)\in V.</M>  

Since <M>V\in\tau(d),</M>  hence <M>N_d(f ^{-1}(b),\delta) \seq V.</M>

Hence <M>f(#(N_d(f ^{-1}(b),\delta) )#) \seq f(V).</M>

But, since <M>f</M>  is an isometry, hence <M>f(#(N_d(f ^{-1}(b),\delta) )#)  = N_{d'}(f(b),\delta).</M>

Hence <M>N_{d'}(f(b),\delta)\seq f (V)</M>  proving that <M>f(V)\in\tau(d').</M>  
</WR>@}
</EXM>
<EXM ref="2021.3" paper="2021.3"><EBODY>@{<E>
Prove that a topological invariant is a metric invariant. Is the
converse true? Justify.[3+2]
</E>@}</EBODY><SOLN/>pratham a.nsher uttar Ager a.nkei rayechhe. dwitIya a.nsher uttar hala--
@{<WR>
No, a metric invariant need not be a topological invariant. 

One example is boundedness. If <M>(X,d)</M>  and <M>(Y,d')</M>  are both metric spaces with a bijective isometry between
 them, then <M>X</M>  i bounded if and only if <M>Y</M>  is bounded. 

But it is not a topological invariant. For example <M>(0,1)</M>  under usual topology is homeomorphic to <M>\rr</M>  under
 usual topology. But <M>(0,1)</M>  is bounded under the usual metric, while <M>\rr</M>  is not. 
</WR>@}
</EXM>

<EXM ref="2021.6b" paper="2021.6b"><EBODY>@{<E>
If <M>\{A_\alpha~:~\alpha\in \Lambda\}</M> is an infinite family
of subsets in any topological space <M>(X,\tau),</M> then the
equality <M>\overline{\cup_{\alpha\in \Lambda} A_\alpha} = \cup_{\alpha\in \Lambda} \overline{A_\alpha}</M> is always
true--correct or justify.[2]
</E>@}</EBODY><SOLN/>@{<WR>
The result is not correct. 

<U>Counterexample</U>: <M>\rr</M>  with usual topology. <M>A_n={*{ [[1n]] }*}</M>  for <M>n\in\nn.</M>  
Then <M>\overline{\cup_n A_n}=  \{0\}\cup \cup_n A_n.</M>

But <M>\cup_n \overline A_n}=  \cup_n A_n,</M>  which does not contain <M>0.</M> 

A possible correction is: 
<M>\cup_{\alpha\in \Lambda} \overline{A_\alpha}\seq \overline{\cup_{\alpha\in \Lambda} A_\alpha}.</M> 

This is correct, because if  <M>A= \cup_ \alpha A_ \alpha</M>, then <M>\forall \alpha~~A_ \alpha\seq A.</M>  Hence <M>\forall \alpha~~\overline A_ \alpha\seq \overline A.</M>

So <M>\cup_\alpha\overline A_ \alpha\seq \overline A.</M>
</WR>@}</EXM>

<EXM ref="2021.7a" paper="2021.7a"><EBODY>@{<E>
<M>(X,\tau)</M> is a topological space and <M>D</M> is a dense
subset of <M>X.</M> Prove that, for an open subset <M>Y</M>
of <M>X,</M> <M>D\cap Y</M> is dense in the subspace topology
on <M>Y.</M> Is the result true if <M>Y</M> is not open? Justify.[3] 
</E>@}</EBODY><SOLN/>@{<WR>
<U>First part</U>: Let <M>V</M>  be any non-empty open set in <M>Y</M>  wrt the subspace topology. 

Let <M>U = V\cup (X\setminus Y).</M> This is must be open in <M>X.</M>   for some non-empty <M>U\in\tau.</M>

Since <M>D</M>  is dense in <M>X,</M>  hence <M>U\cap D\neq\phi.</M>  
  

So <M>V\cap (D\cap Y) = (U\cap Y)\cap (D\cap Y) = U\cap D\cap Y. </M>
</WR>@}</EXM>

<EXM ref="2021.7b" paper="2021.7b"><EBODY>@{<E>
<M>(X,\tau)</M> is a topological space and <M>D</M> is a dense
subset of <M>X.</M> Prove that for a continuous
surjection <M>f:(X,\tau)\to(Z,\tau')</M> the set <M>f(D)</M> is
dense in <M>Z,</M> where <M>(Z,\tau')</M> is any topological space.[2]
</E>@}</EBODY><SOLN/>@{<WR>
Take any non-empty <M>U\in\tau'.</M>   

Then <M>f ^{-1} (U\cap f(D)) = f ^{-1} (U)\cap f ^{-1} (f(D)).</M>

Since <M>D\seq f ^{-1}(f(D)).</M>  Also <M>f</M>  being continuous, <M>f ^{-1}(U)\in\tau.</M>  

Also <M>f ^{-1}(U)\neq\phi,</M>  since <M>U\neq\phi.</M>

Since <M>D</M>  is dense, hence <M>f ^{-1}(U)\cap D\neq\phi.</M>  

So <M>f ^{-1} (U)\cap f ^{-1} (f(D))\neq \phi.</M>

So <M>f(D)\cap U\neq\phi.</M>

Hence <M>f(D)</M>  is dense in <M>(Z,\tau').</M>
</WR>@}</EXM>


<EXM ref="2021.8" paper="2021.8"><EBODY>@{<E>
If <M>(X,\tau)</M> is a second countable space and <M>{\cal B}</M> is a
base for <M>\tau,</M> then prove that there exists a countable
subfamily <M>{\cal D}</M> or <M>{\cal B}</M>  such that <M>{\cal D}</M> is a base for <M>\tau.</M>[5]
</E>@}</EBODY><SOLN/>@{<WR>
Let <M>\{C_n~:~n\in\nn\}</M>  be a countable base for <M>\tau.</M>  

Then each <M>C_n\in\tau.</M>  

So <M>\forall n\in\nn~~\exists B_n\in{\cal B}~~B_n\seq C_n.</M>

Then the subcollection <M>{\cal D}=\{B_n~:~n\in\nn\}</M>  is again a base.

Clearly, <M>B_n\in{\cal B}\seq\tau.</M>  

Let <M>U\in\tau</M>  and <M>x\in U.</M>  Then <M>\exists n\in\nn ~~x\in C_n\seq U.</M>  
</WR>@}</EXM>

<EXM ref="2021.9" paper="2021.9"><EBODY>@{<E>
Let <M>f:X\to Y</M> be any function from a topological
space <M>X</M> into a topological space <M>Y.</M> If <M>f</M> is
continuous, then prove that the graph of <M>f</M> defined
by <M>G(f) = \{(x,f(x))~:~x\in X\}</M> is homeomorphic to <M>X.</M>[5]
</E>@}</EBODY><SOLN/>@{<WR>
Consider the map <M>g:X\to G(f)</M>  defined by <M>g(x) = (x,f(x)).</M>  

Clearly, this is a bijection. Also both the componet functions are continuous, and so <M>g</M>  is continuous.

Shall show that <M>g </M> is an open map. 

Let <M>U</M>  be an open set in <M>X.</M>  

Then <M>g(U) = (U\times Y)\cap G(f),</M>  which is open in <M>G(f).</M>  
</WR>@}</EXM>

<EXM ref="2021.10a" paper="2021.10a"><EBODY>@{<E>
Prove that a topological space <M>(X,\tau)</M> is Hausdorff if
the diagonal <M>\{(x,x)~:~x\in X\}</M> is a closed set in the
product space <M>(X\times X,\tau\times\tau).</M>[3]
</E>@}</EBODY><SOLN/>@{<WR>
<U>If part</U>: Let <M>D=\{(x,x)~:~x\in X\}</M>  be closed in the product space. 

Let <M>x\neq y\in X.</M>  Then <M>(x,y)\in D^c.</M>   Since <M>D^c</M>  is open in the product space, and the rectangles
 form a base in its topology, hence 
<M>(x,y)\in U\times V\seq D^c</M>  for some <M>U,V\in\tau.</M>  

Since <M>U\times V\seq D^c,</M>  hence <M>U\cap V = \phi.</M>  Also <M>x\in U</M>  and <M>y\in V.</M>

Thus <M>U</M>  and <M>V</M>  provide a strong separation of <M>x,y.</M>  
</WR>@}</EXM>

<EXM ref="2021.10b" paper="2021.10b"><EBODY>@{<E>
Prove or disprove: In a topological space <M>(X,\tau)</M>, if
every convergent sequence in <M>X</M> has unique limit,
then <M>X</M> is a <M>T_2</M> space.[2]
</E>@}</EBODY><SOLN/>@{<WR>
The statement is false. 

<U>Counterxample</U>: <M>\rr</M>  with co-countable topology. 

It is not Hausdorff, because all non-empty open sets intersect. 

Each convergent sequence is eventually constant. 
<BECAUSE>
Let <M>x_n\to L.</M>  Then <M>G = \{x_n\}^c\cup\{L\}</M>  is an open neighbourhood of <M>L.</M>  So
 <M>\exists K\in\nn~~\forall n\geq K~~x_n\in G.</M>  

But <M>G</M>  contains no <M>x_n</M>  except those equal to <M>L.</M>  Hence we must have <M>\exists K\in\nn~~\forall n\geq K~~x_n = L.</M>
</BECAUSE> 
</WR>@}
 @{<E>Wikipedia</E>@}-r
 <LINK to="https://topospaces.subwiki.org/wiki/US_not_implies_Hausdorff">ekhAne</LINK>  ekTA 
@{<E>counterexample</E>@}  deoyA Achhe, yeTA bhul.
</EXM>


<EXM ref="2023.1f" paper="2023.1f"><EBODY>@{<E>
Let <M>(X,\tau)</M> be a co-countable space, where <M>X</M> is an
uncountable set. Then which of the following is true?
<VL>
<LI><M>(X,\tau)</M> is a first countable space.</LI>
<LI><M>(X,\tau)</M> is a Hausdorff space.</LI>
<LI>There exists a convergent sequence in <M>X</M> whose limit
is not unique.</LI>
<LI>A sequence <M>\{x_n\}</M> in <M>X</M> is convergent if and
only if there is some positive integer <M>m</M> such that for
all <M>n\geq m</M> <M>x_n=</M> constant.</LI>
</VL>
</E>@}</EBODY><SOLN/>khAli sheSerTAi Thik.</EXM>


</NOTE>
