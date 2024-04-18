<NOTE url="https://arnabc74.github.io/topo/topo1.html">
ei baite AmrA @{<E>topology</E>@}  AlochanA karba. 
AmrA ekhAne ati sa.nxepe kAj sArba, beshI bojhAr kh,nuTinATir madhye yAba nA. 
@{<HEAD1>Basic</HEAD1>@}

@{<E>Topology</E>@}-r galpa shuru habe ekTA 
@{<E>non-empty set</E>@}  niye, dharo tAr nAm dilAm @{<M>X.</M>@}  er nAnA @{<E>subset</E>@}  Achhe. eder madhye ekguchchhake 
AmrA neba. ei guchchhaTA nite habe kichhu sUtra mene--
<UL><LI>ek, @{<M>\phi</M>@}  eba.n @{<M>X</M>@}  dujankei ei guchchhe thAkte habe.</LI>
<LI>dui, yadi yekono duTo @{<E>subset</E>@}  nAo oi guchchher bhitar theke, tabe oder
 @{<E>intersection</E>@}-o yena guchchher madhye thAke.</LI>
<LI>tin, yadi guchchher madhye yA khushi yatagulo khushi @{<E>subset</E>@}  nAo (asa.nkhya nileo
 Apatti nei), tabe tAder @{<E>union</E>@}-o thAkte habe oi guchchher madhyei.</LI>
</UL>
yadi tomAr neoyA guchchhaTA ei tinTe shar+tai palan kare, tabe tAke balba @{<M>X</M>@}-er upar ekTA @{<E>topology.</E>@}  
eba.n @{<M>X</M>@}  Ar ei @{<E>topology</E>@}  miliye balba ekTA @{<E>topological space.</E>@}  eman bidghuTe sa.njnA kothA 
theke ela, seTA jAnAr ichchhA haoyA swAbhAbik. tAr uttarTAo majAdAr. kintu ekhanai se prashne yAba nA. Age ekTA udAharaN 
dekhe nii. 

<EXM ref="ex1"><EBODY>dharo @{<M>X=\{a,b,c\}.</M>@} tAr ei kayTA @{<E>subset</E>@}  nilAm, 
 @{<M>\phi,\{a\},\{a,b\},X.</M>@}  erA mile ki @{<M>X</M>@}-er upare ekTA @{<E>topology</E>@}  hachchhe?</EBODY>
<SOLN/>h,nyA. kAraN @{<M>\phi</M>@}  Ar @{<M>X </M>@} dujanei Achhe. yatarakam
 @{<E>intersection</E>@}  Ar @{<E>union</E>@}  sambhab, tArAo Achhe. <DSQS/></EXM>

ei a.nker guchchhaTAke dharo ekTA nAm dilAm, @{<M>\tau.</M>@}  mAne @{<M>\tau={#{\phi,\{a\},\{a,b\},X}#}.</M>@}  tabe AmrA 
balba ye, @{<M>\tau</M>@}  hala @{<M>X</M>@}-er upare ekTA @{<E>topology.</E>@}  eba.n @{<M>(X,\tau)</M>@}-ke balba ekTA 
@{<E>topological space.</E>@}  

<EXM ref="2023.2a" paper="2023.2a"><EBODY>@{<E>
Let <M>\nn</M> be the set of natural numbers and <M>A_n =
\{1,2,3,...,n\},</M> <M>n\in\nn.</M> Then prove that the
collector 
<D>
\tau = \{A_n~:~n\in\nn\}\cup\{\nn,\phi\}
</D>
is a topology on <M>\nn.</M>[3]
</E>@}</EBODY><SOLN/>
@{<WR>
By definition, <M>\nn,\phi\in\tau.</M>

Let <M>\{B_ \alpha~:~\alpha\in \Lambda\}  </M>  be an arbitrary collection of sets in <M>\tau.</M>  

If the collection is infinite, or if <M>\nn</M>  is in this collection, then <M>\cup_{\alpha\in
 \Lambda} B_ \alpha = \nn\in\tau.</M>

Otherwise, there is a maximum element <M>m</M>  in <M>\cup_{\alpha\in \Lambda} B_ \alpha.</M>  This means <M>A_m</M>  is
 in the collection, and all other memmbers are its subsets. So <M>\cup_{\alpha\in \Lambda} B_ \alpha=A_m\in\tau.</M>

Hence closed under arbitrary union.

Again, if <M>B_1, B_2</M>  are in the collection, then the following cases may arise:
<OL>
<LI><M>B_1</M>  or <M>B_2</M>  is <M>\phi</M>: Then <M>B_1\cap B_2=\phi\in\tau.</M></LI>
<LI><M>B_1=\nn</M>: Then <M>B_1\cap B_2=B_2\in\tau.</M></LI>
<LI><M>B_2=\nn</M>: Similar.</LI>
<LI><M>B_1=A_m</M>  and <M>B_2=A_m</M>  for some <M>m,n\in\nn</M>: Then <M>B_1\cap B_2=A_{\min\{m,n\}}\in\tau.</M></LI>
</OL>
Hence closed under finite intersection.
</WR>@}
<DSQS/></EXM>

<EXM ref="2022.2a" paper="2022.2a"><EBODY>@{<E>
Consider the set <M>\nn</M> of natural numbers and let <M>A_n =
\{n,n+1,n+2,...\}.</M> Show that the
collection <M>\{A_n~:~n\in\nn\}\cup\{\phi\}</M> is a topology on <M>\nn.</M>[3]
</E>@}</EBODY><SOLN/>AgerTAr matai.<DSQS/></EXM>
tomAr guchchhe yesab @{<E>subset</E>@}  niyechha, tAderke balba ekekTA @{<E>open subset.</E>@}  

ei bhASATA tomAr aparichita nay. AmrA @{<E>real analysis</E>@}  bA @{<E>metric space</E>@} 
 shekhAr samayeo @{<E>open</E>@}  shabdaTA byabahAr karechhi. ekhAne @{<E>open</E>@}-er dhAraNATA
 ogulorai @{<E>generalisation.</E>@}   ekTu chintA karlei bujhbe ye,  AmArA @{<E>topology</E>@}-r sa.njnAy ye shar+tagulo 
diyechhi, segulo sabai @{<E>real analysis</E>@}  bA @{<E>metric space</E>@}-er @{<E>open</E>@}  @{<E>set</E>@}-der dharma. 
okhAne Aro anek dhar+ma chhila, segulo AmrA kam gurut+wapUrNa bale @{<E>topology</E>@}-r sa.njnAy dhari ni. 
sei janyai AmAder @{<E>open</E>@}-er dhAraNATA AgekAr @{<E>open</E>@}-er dhAraNAr theke beshI @{<E>general.</E>@}  

e thekei tumi sabcheye gurut+wapUrNa ek dharaNer @{<E>topological space</E>@}-er kathA jene gele--
yekhAne @{<E>set</E>@}-TA hala @{<M>\rr^n</M>@}  Ar tAr upare @{<E>real
 analysis</E>@}-er sa.njnA anusAre @{<E>open set</E>@}-der niye t\oirI @{<E>topology.</E>@}  ei
 @{<E>topology</E>@}-TA bAr bAr AmAder AlochanAy mAthA chARA debe. eke AmrA Adar kare bali @{<E>``usual topology''.</E>@}  
yadi @{<M>n>1</M>@}  hay, tabe @{<E>''usual product topology''</E>@}-o bali anek samaye.  ebAr eder niye kichhu a.nka dekhi. 

@{<HEAD2>Usual</HEAD2>@}

<EXM ref="2023.1c" paper="2023.1c"><EBODY>@{<E>
Let <M>\rr</M> be the set of all real numbers with the usual
topology and <M>K={*{[[1n]]~:~n=1,2,...}*}.</M> Then <M>K</M> is
<HL>
<LI>open in <M>\rr</M></LI>
<LI>closed in <M>\rr</M></LI>
<LI>both open and closed in <M>\rr</M></LI>
<LI>neither open nor closed in <M>\rr</M></LI>
</HL>
</E>@}</EBODY><SOLN/>@{<M>0</M>@}  ekTA @{<E>limit point.</E>@}  kinti @{<M>0\not\in K.</M>@}  tAi
 @{<E>closed</E>@}  nay. AbAr @{<M>1\in K,</M>@}  kintu @{<M>1</M>@}-er kono
 @{<E>neighbourhood</E>@}  @{<M>K</M>@}-r madhye nei. tAi @{<E>open</E>@}  bA @{<E>closed</E>@}  konoTAi nay.<DSQS/></EXM>

<EXM ref="2023.1d" paper="2023.1d"><EBODY>@{<E>
The closure of the set <M>A =
{*{2,[[32]],[[43]],[[54]],...}*}</M> with resepct to the usual
topology on the set of real numbers, <M>\rr</M>, is given by
<HL>
<LI><M>A\cup\{1\}.</M></LI>
<LI><M>A\cup\{2\}.</M></LI>
<LI><M>A\cup\{\phi\}.</M></LI>
<LI><M>A\cup\{3\}.</M></LI>
</HL> 
</E>@}</EBODY><SOLN/>ekTAi @{<E>limit point</E>@}  Achhe, @{<M>1.</M>@}  eba.n seTA
 @{<E>set</E>@}-er bAire. tAi uttar habe @{<M>A\cup\{1\}.</M>@}<DSQS/></EXM>

<EXM ref="2023.5b" paper="2023.5b"><EBODY>@{<E>
Find the boundary and interior of the
set <M>\{(x,y)~:~x\in\qq\}</M> in <M>\rr^2</M> endowed with the
usual product topology.[2]
</E>@}</EBODY><SOLN/>@{<WR>
Let <M>A = \{(x,y)~:~x\in\qq\}.</M>  This is dense in <M>\rr^2.</M>  Hence every open ball intersects it. So its boundary
 is <M>\rr^2.</M> 

<M>A^c</M> is also dense. So every open ball intersects <M>A^c.</M>  Hence interor of <M>A </M> is <M>\phi.</M>  
</WR>@}<DSQS/></EXM>

@{<HEAD2>Metric</HEAD2>@}
dui, yadi @{<M>(X,d)</M>@}  kono @{<E>metric space</E>@}  hay, tabe @{<E>metric space</E>@}-er
 sa.njnA anuYAyI @{<E>open set</E>@}-der niye ekTA @{<E>topology</E>@}  hay. eke bale @{<E>metric
 topology</E>.@}  eTAo AmAder AlochanAy bArbAr Asbe. eTAke AmrA anek samaye @{<M>\tau(d)</M>@}  likhba.

<EXM ref="2022.8b" paper="2022.8b"><EBODY>@{<E>
<M>X</M> is a metric space with metric <M>d.</M> Show
that <M>d:X\times X\to\rr</M> is continuous.[2]
</E>@}</EBODY><SOLN/>
@{<WR>
To show 

<TGT>\forall \mbox{open }U \seq\rr~~d ^{-1}(U)\mbox{ is open in }X\times X.</TGT>

<FLL>U</FLL> Take any open <M>U\seq\rr.</M>  

Let <M>(a,b)\in d ^{-1}(U).</M> 

Let <M>p = d(a,b)\in U.</M>

Since <M>U\seq\rr</M>  is open, <M>\exists \delta > 0~~(p-\delta,p+\delta)\seq U.</M> 

Consider the neighbourhood 
<D>V={*{(x,y)\in X\times X~:~d(x,a)<[[\delta2]],~d(y,b)<[[\delta2]]}*}</D> 
 of <M>(a,b)</M>  in  <M>X\times X.</M>

Take any <M>(x,y)\in V.</M>  Then 
<D>|d(x,y)-d(a,b)| \leq |d(x,y)-d(a,y)+d(a,y)-d(a,b)| \leq ??</D>
</WR>@}
<DSQS/></EXM>


<EXM ref="2022.8a" paper="2022.8a"><EBODY>@{<E>
What is a metric invariant? Correct of justify: A metric invariant
is also a topological invariant.[3]
</E>@}</EBODY><SOLN/><DSQS/></EXM>

<EXM ref="2022.4b" paper="2022.4b"><EBODY>@{<E>
Let <M>(X,d)</M> be a metric space and <M>A\seq X.</M> Prove
that <M>\bar A=\{x\in X~:~d(x,A)=0\}</M>.[2]
</E>@}</EBODY><SOLN/><DSQS/></EXM>

<EXM ref="2023.4" paper="2023.4"><EBODY>@{<E>
Define topologically equivalent metrics on a non-empty
set <M>X.</M> Prove that the space <M>(X,\tau(d)),</M>
where <M>\tau(d)</M> is the topology induced by a metric <M>d</M>
on a non-empty set <M>X</M> is homeomorphic to the
space <M>(X,\tau(d_1)),</M> where <M>\tau(d_1)</M> is the
topology induced by the metric <M>d_1</M> on <M>Xm</M>
where <M>d_1</M> is given by 
<D>
d_1(x,y) = [[d(x,y)][1+d(x,y)]],\text{ for all } x,y\in\rr.
</D>[1+4]
</E>@}</EBODY><SOLN/>
@{<WR>
Two metrics on the same set are called topologically equivalent if they induce the same topology. 


We have <M>\forall x,y\in X~~d_1(x,y)\leq d(x,y).</M>  So <M>\forall a\in X~~\forall r>0~~N_d(a,r)\seq N_{d_1}(a,r).</M> 
 
Again, <M>\forall x,y\in X~~(#(~d(x,y)\leq 1\implies d_1(x,y)\leq [[12]]d(x,y)~)#).</M>

Hence <M>\forall a\in X~~\forall r>0~~N_{d_1}(*(a,[[r2]])*)\seq N_d(a,r).</M>

Hence the two topologies are the same. 
</WR>@}
<DSQS/></EXM>









ei dui @{<E>topology</E>@}  hala duniyAr sabcheye gurut+wapUrNa duTo @{<E>topology.</E>@} 
 gurut+wer dike diye er parei Ase @{<E>discrete topology.</E>@}  ekhAne AmAder guchchhe AmrA yatarakam @{<E>subset</E>@}  
sambhab sabAikei dhari. 

ebAr Aro chArTe @{<E>topology</E>@}-r kathA balba, yAder gurut+wa khub beshI nay, yadio parIxAr prashne eder prAyai dekhA 
pAoyA yAy--
<UL>
<LI>ek, @{<E>cofinite topology</E>@}</LI>
<LI>dui, @{<E>cocountable topology</E>@}</LI>
<LI>tin, @{<E>lower limit topology</E>@}</LI>
<LI>chAr, @{<E>upper limit topology</E>@}</LI>
</UL>
eder madhye pratham duTo bojhAno sahajatara. dharo @{<M>X</M>@}  yA khushi ekTA @{<E>infinite set.</E>@}  er madhye sei 
@{<E>subset</E>@}-gulo nAo yArA @{<E>cofinite</E>@}, arthA.t yAder @{<E>complement</E>@}  hala @{<E>finite.</E>@}  yeman 
@{<M>X = \{1,2,3,...\}</M>@}  hale @{<M>\{2,3,4,...\}</M>@}  hala ekTA @{<E>cofinite subset.</E>@}  erakam sab @{<E>cofinite subset</E>@}  
Ar @{<M>\phi</M>@}  niye tomAr guchchhaTA t\oirI kara. ekTu bhAblei bujhbe ye, seTA ekTA @{<E>topology</E>@}  hate bAdhya. 
ekei bale @{<E>cofinite</E>@}  @{<E>topology.</E>@}   

ekaibhAbe yadi kono @{<E>uncountable set</E>@}  niye tAr sab @{<E>cocountable</E>@}  @{<E>subset</E>@}  (eba.n @{<M>\phi</M>@}) 
niye guchchha bAnAo, tabe seTAo ekTA @{<E>topology</E>@}  habe. tAr nAm @{<E>cocountable</E>@}  @{<E>topology.</E>@}   



<EXM ref="2023.1a" paper="2023.1a"><EBODY>@{<E>
Let <M>(X,\tau)</M> be a cofinite topological space,
where <M>X</M> is an uncountable set. Then which of the following
is false? (1 mark for choosing correct option and 1 mark for
justification).
<VL>
<LI>Each point of <M>X</M> is the intersection of all of its
neighbourhoods in <M>X.</M></LI>
<LI>No two open sets in <M>X</M> are disjoint.</LI>
<LI><M>\tau\seq\tau',</M> where <M>\tau'</M> denotes the
co-countable topology on <M>X.</M></LI>
<LI>There exists a metric on <M>X</M> which generates the
topology on <M>X.</M> </LI>
</VL>
</E>@}</EBODY><SOLN/>sheSerTAi khAli bhul, kAraN @{<E>first countable</E>@}  nay.<DSQS/></EXM>
@{<HEAD2>General</HEAD2>@}

<EXM ref="2021.1a" paper="2021.1a"><EBODY>@{<E>
If <M>\tau_1</M> and <M>\tau_2</M> are the topologies
on <M>\rr^2</M> generated by the base <M>\beta_1</M> of interiors
of all circular regions in <M>\rr^2</M> and he
base <M>\beta_2</M> of interiors of all rectangular regions
in <M>\rr^2</M> respectively, then
<VL>
<LI><M>\tau_1</M> is a proper subset of <M>\tau_2</M></LI>
<LI><M>\tau_2</M> is a proper subset of <M>\tau_1</M></LI>
<LI><M>\tau_1=\tau_2</M></LI>
<LI><M>\tau_1\cap \tau_2 = \{\rr^2,\phi\}.</M></LI>
</VL>
</E>@}</EBODY><SOLN/>yekono @{<E>circle</E>@}-er madhye yekono binduke ghire ekTA
 @{<E>rectangle</E>@}  DhokAno yAy, eba.n tAr ul+ToTAo karA sambhab. tAi @{<M>\tau_1 = \tau_2.</M>@}<DSQS/></EXM>

<EXM ref="2021.1b" paper="2021.1b"><EBODY>@{<E>
Let <M>(X,\tau)</M> be a topological space and <M>A</M> be a
non-empty subset of <M>X</M> such that every non-empty open
subset of <M>X</M> intersects <M>A.</M> Then which of the
following is true?
<VL>
<LI><M>A</M> must be equal to <M>X.</M></LI>
<LI><M>A</M> is dense in <M>X.</M></LI>
<LI><M>A=\overline{A}</M></LI>
<LI><M>A</M> must be an open set.</LI>
</VL>
</E>@}</EBODY><SOLN/>@{<M>A</M>@}  abaShyai @{<M>X</M>@}-we madhye @{<E>dense</E>@}  habe. seTAi
 @{<E>dense</E>@}  habAr sa.njnA. bAkigulo nAi hate pAre. yeman prathamTA
 @{<E>counterexample</E>@}  hala @{<M>X=\rr</M>@}  (@{<E>usual topology</E>@}) Ar @{<M>A =
 (-\infty,0)\cup(0,\infty).</M>@}  eTA trritIyaTAr belAteo @{<E>counterexample.</E>@}  chAr
 nambarer janya @{<E>counterexample</E>@}  habe @{<M>\rr</M>@}-er madhye @{<M>\qq.</M>@}  <DSQS/></EXM>


<EXM ref="2021.1c" paper="2021.1c"><EBODY>@{<E>
Let <M>(X,\tau)</M> be a topological space and <M>A</M> be a
non-empty proper subset of <M>X</M> such that the boundary
of <M>A</M> is an empty set. Then which of the following is
false?<VL>
<LI><M>A</M> contains all of its limit points.</LI>
<LI>Every point of <M>A</M> is an interior point.</LI>
<LI>The boundary of <M>(X\setminus A)</M> is an empty set.</LI>
<LI><M>A</M> is closed, but may not be an open set.</LI>
</VL>
</E>@}</EBODY><SOLN/>sheSerTA bhul, kAraN @{<M>A</M>@}-ke @{<E>open</E>@}  hatei habe.<DSQS/></EXM>

<EXM ref="2022.7a" paper="2022.7a"><EBODY>@{<E>
Prove that if <M>Y</M> is a closed subset of a topological
space <M>(X,\tau),</M> then a subset <M>G</M> of <M>Y</M> is
closed in the subspace <M>(Y,\tau_Y)</M> if and only if it is
closed in <M>(X,\tau).</M>[3]
</E>@}</EBODY><SOLN/>
@{<WR>
<U>(Only if part)</U>  Let <M>G</M>  be closed in <M>Y.</M>  Then <M>G^c</M>  is open in <M>Y.</M>  So <M>G^c = A\cap Y </M> 
 for some open set <M>A</M>  in <M>X.</M>  Hence <M>G = (A\cap Y)^c = A^c\cup Y^c,</M>  which is union of two closed sets in
 <M>X,</M>  and hence is closed, as required.

<U>(If part)</U>  Let <M>G</M> be closed in <M>(X,\tau).</M>  But since <M>G\se Y,</M>  hence   <M>G = G\cap Y.</M>  So <M>G</M> 
 is closed in <M>(Y,\tau_Y), </M> as well.
</WR>@}
<DSQS/></EXM>
<EXM ref="2022.6a" paper="2022.6a"><EBODY>@{<E>
Consider the following collections of subsets of the
set <M>\rr:</M>
<MULTILINE>
\beta_1 & = & \{(a,b)~:~a,b\in\rr\}\cup{*{(a,b)\setminus
A~:~a,b\in\rr\text{ and } A={*{[[1n]]~:~n\in\
nn}*} }*},\\
\beta_2 & = & \{(a,\infty)~:~a\in\rr\}.
</MULTILINE>
Show that <M>\beta_1</M> and <M>\beta_2</M> are basis for some
topologies on <M>\rr.</M>[3]
</E>@}</EBODY><SOLN/>
@{<WR>
<U>Part 1</U>:

Shall show

<TGT>\forall x\in \rr ~~ \exists A\in \beta_1~~x\in A.</TGT>

<FLL>x</FLL>Take any <M>x\in\rr.</M>

<EXS>A</EXS> Choose <M>A = (x-1,\infty)\in \beta_2.</M>

<CHK/>Then <M>x\in A,</M>  as required. 

Shall show

<TGT>\forall A,B\in \beta_1~~\forall x\in A\cap B~~\exists C\in \beta_1~~x\in C\seq A\cap B.</TGT>

<FLL>A,B</FLL> Take any <M>A,B\in \beta_2.</M>

<FLL>x</FLL> Take any <M>x\in A\cap B.</M>

Let <M>A = (a,\infty)</M>  and <M>B = (b,\infty).</M>  Then <M>A\cap B = (\max\{a,\b\},\infty).</M>

So <M>x > \max\{a,b\}.</M>  

<EXS>C</EXS> Choose <M>C =(*( [[x+\max\{a,b,\}][2]], \infty)*)\in \beta_2.</M>

<CHK/>Then clearly <M>x\in C\seq A\cap B,</M>  as required.

<U>Part 2</U>:

Shall show

<TGT>\forall x\in \rr ~~ \exists A\in \beta_2~~x\in A.</TGT>

<FLL>x</FLL>Take any <M>x\in\rr.</M>

<EXS>A</EXS> Choose <M>A = (x-1,\infty)\in \beta_2.</M>

<CHK/>Then <M>x\in A,</M>  as required. 

Shall show

<TGT>\forall A,B\in \beta_2~~\forall x\in A\cap B~~\exists C\in \beta_2~~x\in C\seq A\cap B.</TGT>

<FLL>A,B</FLL> Take any <M>A,B\in \beta_2.</M>

<FLL>x</FLL> Take any <M>x\in A\cap B.</M>

Let <M>A = (a,\infty)</M>  and <M>B = (b,\infty).</M>  Then <M>A\cap B = (\max\{a,\b\},\infty).</M>

So <M>x > \max\{a,b\}.</M>  

<EXS>C</EXS> Choose <M>C =(*( [[x+\max\{a,b,\}][2]], \infty)*)\in \beta_2.</M>

<CHK/>Then clearly <M>x\in C\seq A\cap B,</M>  as required.
</WR>@}
<DSQS/></EXM>

<EXM ref="2023.5a" paper="2023.5a"><EBODY>@{<E>
Suppose <M>(X,\tau)</M> is a topological space
and <M>(Y,\tau_Y)</M> is the subspace of <M>(X,\tau).</M> Prove
that, for a subset <M>A</M> of <M>Y,</M> <M>\overline{A}^Y =
\overline{A}\cap Y,</M> where <M>\overline{A}^Y</M> denotes the
closure of <M>A</M> in <M>(Y,\tau_Y).</M>[3]
</E>@}</EBODY><SOLN/>
@{<WR>
Since <M>\overline A</M>  is closed in <M>X</M>, hence <M>\overline A\cap Y</M>  must be closed in <M>Y.</M>

Let <M>G\seq Y</M>  be any closed set in <M>Y</M>  with <M>A\seq G.</M>  Then <M>G = V\cap Y</M>  for some closed <M>V</M> 
 in <M>X.</M>  So <M>\overline A\seq V.</M>  Hence <M>\overline A\cap Y\seq V\cap Y = G.</M>

Thus, <M>\overline A\cap Y</M>  is the smallest closed set in <M>Y</M>  containing <M>A.</M>  Hence the result.
</WR>@}
<DSQS/></EXM>


<EXM ref="2022.1j" paper="2022.1j"><EBODY>@{<E>
In a topological space <M>(X,\tau),</M> <M>A</M> is a dense
subset of <M>X</M> and <M>B</M> is dense in <M>A.</M>
Then <M>B</M> is a 
<VL>
<LI>open subset of <M>X</M></LI>
<LI>closed subset of <M>X</M></LI>
<LI>dense subset of <M>X</M></LI>
<LI>none of the above.</LI>
</VL>
</E>@}</EBODY><SOLN/>
@{<WR>
Considering <M>X=\rr</M>  with usual topology and <M>A=\qq</M>, we see that the first two options are false. 

However, the third option is true.  Let <M>U</M>  be any non-empty open subset of <M>X.</M>  Then <M>U\cap
 A</M>  is open in <M>A.</M>  Also since <M>A</M>  is dense in <M>X</M>, <M>U\cap A</M>  is non-empty. 

Since <M>B</M>  is dense in <M>A,</M>  we have <M>U\cap A \cap B\neq \phi.</M>  But <M>B\seq
 A.</M>  Hence <M>U\cap B\neq \phi.</M>  Hence  <M>B</M>  must be dense in <M>X.</M>
</WR>@}
<DSQS/></EXM>



<EXM ref="2022.3b" paper="2022.3b"><EBODY>@{<E>
If <M>D</M> is dense in a space <M>X</M> and <M>U</M> is an open
set in <M>X,</M> then show that <M>\overline U = \overline{U\cap D}.</M>[3]
</E>@}</EBODY><SOLN/>
@{<WR>
Since <M>U\cap D\seq U,</M>  hence <M>\overline {U\cap D} \seq \overline U.</M>

Shall show <M>\overline U\seq \overline {U\cap D}.</M>

Since <M>\overline {U\cap D}</M>  is closed, hence enough to show <M>U\seq \overline {U\cap D}.</M>

Let <M>x\in U.</M>  

Let <M>V</M>  be any open set with <M>x\in V.</M>  

Then <M>V </M> is a non-empty open set, and hence <M>V\seq D\neq\phi.</M>  If <M>x\not\in D</M> , then done. 

If <M>x\in D,</M>  then <M>x\in U\cap D\seq \overline{U\cap D}.</M>  Hence done.
</WR>@}<DSQS/></EXM>

<EXM ref="2022.4a" paper="2022.4a"><EBODY>@{<E>
Let <M>\{\tau_\alpha~:~\alpha\in \Lambda\}</M> be a collection of
topologies on a set <M>X.</M> Show that there is a unique
smallest topology on <M>X</M> containing all the topologies <M>\tau_\alpha.</M>[3]
</E>@}</EBODY><SOLN/>
@{<WR>
Let <M>\{\sigma_ \beta~:~\beta\in \Xi\}</M>  be the family of all topologies, each of which 
 contain all <M>\tau_ \alpha</M>'s. 

This family is non-empty because the discrete topology in this family. 

Let <M>\sigma = \cap_{\beta\in\Xi} \sigma_ \beta.</M>  

Then <M>\sigma,</M>  being the intersection of a family of topologies, must again be a topology. 

Also, <M>\sigma</M>  must contain all the <M>\tau_ \alpha</M>'s. 

Also, if any <M>\sigma'</M>  has this property, then <M>\sigma'</M>  is in the family, and so
 <M>\sigma\seq \sigma'.</M>  So <M>\sigma </M> is a smallest such topology.

If <M>\sigma''</M>  is another smallest such topology, then <M>\sigma''\seq \sigma</M> and
 <M>\sigma\seq \sigma'',</M>  and so <M>\sigma=\sigma''.</M>  Hence unique.  
</WR>@}
<DSQS/></EXM>

<EXM ref="2023.6a" paper="2023.6a"><EBODY>@{<E>
Prove that in a topological space <M>(X,\tau)</M> the
set <M>A\cup A'</M> is the smallest closed subset
containing <M>A,</M> where <M>A\seq X</M> and <M>A'</M> is the
derived set of <M>A.</M>[3]
</E>@}</EBODY><SOLN/>
@{<WR>
Shall show that <M>A\cup A'</M>  is a closed set, i.e., <M>(A\cup A')^c</M>  is open. 

<TGT>\forall x\in (A\cup A')^c~~\exists U\in\tau~~x\in U\seq (A\cup A')^c.</TGT>

<FLL>x</FLL> Take any <M>x\in (A\cup A')^c = A^c\cap (A')^c.</M>  

Since <M>x\not\in A',</M>  hence <M>\exists U\in\tau~~x\in U\mbox{ and }U\seminus\{x\}\cap A=\phi.</M>  

Also, since <M>x\not\in A,</M>  hence <M>U\cap A = \phi.</M>

<EXS>U</EXS> Choose this <M>U\in\tau.</M>

<CHK/>Then <M>x\in U\seq (A\cup A')^c,</M>  as required. 

Shall show that 

<TGT>\forall \mbox{closed }G ~~(A\seq G\implies A\cup A'\seq G).</TGT>

<FLL>G</FLL> Take any closed <M>G</M> with <M>A\seq G.</M>  Then <M>A'\seq G' = G.</M>  Hence <M>A\cup A'\seq G,</M>  as
 required.
</WR>@}
<DSQS/></EXM>

<EXM ref="2023.6b" paper="2023.6b"><EBODY>@{<E>
Prove or disprove: <M>\overline{A\cap B} = \overline A\cap
\overline B,</M> where <M>\overline A</M> denotes the closure
of <M>A</M> in <M>(X,\tau).</M>[2]
</E>@}</EBODY><SOLN/>
@{<WR>Not correct. We take <M>\rr</M>  with usual topology, <M>A = (0,1)</M>  and <M>B=(1,2).</M>  
Then <M>\overline A = [0,1]</M>  and <M>\overline B = [1,2].</M>  So <M>\overline A\cap \overline B = \{1\}.</M>  

But <M>\overline{A\cap B} = \overline{\phi}=\phi.</M>
 </WR>@}
<DSQS/></EXM>

<EXM ref="2023.7a" paper="2023.7a"><EBODY>@{<E>
Let <M>X</M> be a non-empty set and <M>B={#{ \{x\}~:~ x\in
X}#}.</M> Then prove that <M>B</M> is a basis for a topology on <M>X.</M>[3]
</E>@}</EBODY><SOLN/>
@{<WR>
<M>\forall x\in X~~x\in\{x\}.</M>

Shall show 

<TGT>\forall a,b\in X~~\forall c\in \{a\}\cap \{b\}~~\exists d\in X~~c\in \{d\}\seq \{a\}\cap \{b\}.</TGT>

<FLL>a,b</FLL> Take any <M>a,b\in X.</M>

<FLL>c</FLL> If <M>\{a\}\cap\{b\}=\phi,</M>  then the statement is vacuously true. Otherwise take any <M>c\in \{a\}\cap \{b\}.</M>

In this case <M>a = b = c.</M>

<EXS>d</EXS> Choose <M>d = c.</M>

<CHK/>Then obviously <M>c\in \{d\}\seq \{a\}\cap \{b\},</M>  as required.
</WR>@}<DSQS/></EXM>

<EXM ref="2023.7b" paper="2023.7b"><EBODY>@{<E>
Give an example of a map from a topological space <M>(X,\tau)</M>
to another topological space <M>(Y,\tau')</M> which is both open
and closed, but not continuous.[2]
</E>@}</EBODY><SOLN/>
@{<WR>
Let <M>X=Y=\rr.</M>  We take <M>\tau</M>  to be the usual topology, and <M>\tau'</M>  to be the discrete topology. 
Let <M>f:X\to Y</M>  be 
<D>f(x) = <CASES>1<IF>x=0</IF> 0<ELSE/></CASES>.</D>
Since all subsets on <M>(Y,\tau')</M>  are both open and closed, hence this is <M>f</M>  is both open and closed map. 

Also <M>\{1\}</M>  is open in <M>(Y,\tau').</M>  But <M>f ^{-1} (\{1\}) = \{0\}</M>  is not open in <M>(X,\tau).</M>  Hence
 <M>f </M> is  not continuous. 
</WR>@}
<DSQS/></EXM>

<EXM ref="2023.8" paper="2023.8"><EBODY>@{<E>
Let <M>(X,\tau)</M> be the topological product of a family of
topological spaces <M>\{(X_i,\tau_i)~:~i=1,2,...,n\}</M>
and <M>p_i:X\to X_i</M> denote the <M>i</M>-th projection map for
all <M>i=1,2,...,n.</M> Then prove that

(a) <M>p_i</M> is an open map for all <M>i=1,2,...,n.</M>

(b) the product topology <M>\tau</M> is the smallest topology
on <M>X</M> such that each projection map is continuous.

[2+3]
</E>@}</EBODY><SOLN/><DSQS/></EXM>
<EXM ref="2023.1b" paper="2023.1b"><EBODY>@{<E>
Let <M>(X,\tau)</M> be a topological space  and <M>A</M> be a
proper non-empty subset of <M>X</M> such
that <M>int(X-A)=\phi,</M> where <M>int(B)</M> denotes the
interior of any subset <M>B</M> in <M>X</M>). Then which of the
following is false?
<VL>
<LI><M>A</M> is dense in <M>X.</M></LI>
<LI>Every non-empty open set in <M>X</M>
intersects <M>A.</M></LI>
<LI>The only closed set in <M>X</M> containing <M>A</M>
is <M>X.</M></LI>
<LI>The derived set of <M>A</M> is an empty set.</LI>
</VL>
</E>@}</EBODY><SOLN/>
@{<WR>
The first two options are equivalent by definition, and they are also equivalent to the third
 option and the given condition.

The fourth option is false.  A counterexample is <M>A = \qq</M>  in <M>\X=\rr</M>  with usual topology. 
</WR>@}
<DSQS/></EXM>

<EXM ref="2023.2b" paper="2023.2b"><EBODY>@{<E>
Find the derived set of <M>\{1\}</M> in the above topological space.[2]
</E>@}</EBODY><SOLN/><DSQS/></EXM>


@{<HEAD2>Subspace</HEAD2>@}
<EXM ref="2021.1j" paper="2021.1j"><EBODY>@{<E>
Let <M>X = \nn\times\qq</M> with the subspace topology
on <M>\rr^2</M> and <M>P={*{(*(n,[[1n]])*)~:~n\in\nn}*}.</M> Which of
the following statements is true?
<VL>
<LI><M>P</M> is closed, but not open.</LI>
<LI><M>P</M> is open, but not closed.</LI>
<LI><M>P</M> is both open and closed.</LI>
<LI><M>P</M> is neither open nor  closed.</LI>
</VL>
</E>@}</EBODY><SOLN/>
@{<WR>
The first option is true. 

Here we can take <M>\{n\}\times (a,b)\cap\qq</M>  as our basic open sets. Then <M>(1,1)\in P</M>  but every basic open set
 cotaining <M>(1,1)</M>  must contain some <M>(1,q)</M>  where <M>q\in\qq</M>  and <M>q\neq 1.</M>  Since <M>(1,q)\not\in P,</M> 
 hence <M>P</M>  cannot be open. 

However, if we take any point <M>(n,q)\in P^c,</M>  then <M>q\neq [[1n]].</M>  Let <M>r =
 [|[ q-[[1n]] ]|]>0. </M>  Then <M>(n,q)\in \{n\}\times (*(q-[[r2]],q+[[r2]])*)\cap \qq\seq P^c.</M>

Hence <M>P</M>  is closed. 
 
</WR>@}
<DSQS/></EXM>
<EXM ref="2021.1i" paper="2021.1i"><EBODY>@{<E>
Which of the following statements is not true?
<VL>
<LI><M>\rr</M> with usual topology is homeomorphic with the
subspace topology on <M>(-1,1).</M></LI>
<LI><M>[*[-1,[[12]] ]*]</M> is open in <M>[-1,1]</M> with
respect to the subspace topology from the usual topology
on <M>\rr.</M></LI>
<LI><M>[-1,1]</M> is homeomorphic
with <M>\{(x,y)~:~x^2+y^2=1\},</M> where both the sets are
endowed with the subspace topology from the usual topology
on <M>\rr</M> and product topology  on <M>\rr^2,</M> respectively.</LI>
<LI><M>[-1,1]</M> is homeomorphic
with <M>[0,1],</M> where both the sets are
endowed with the subspace topology from the usual topology
on <M>\rr</M>.</LI>
</VL>
</E>@}</EBODY><SOLN/>
@{<WR>The third option is false. If we remove the point <M>0</M>  from <M>[-1,1]</M>, then it
 becomes disconnected. But <M>\{(x,y)~:~x^2+y^2=1\}</M> cannot be made disconnected by removing just a single point. </WR>@}
<DSQS/></EXM>

<EXM ref="2022.6b" paper="2022.6b"><EBODY>@{<E>
Correct or justify: <M>\rr</M> with usual topology
and <M>(*(-[[\pi2]],[[\pi2]])*)</M> with usual subspace topology
are homeomorphic.[2]
</E>@}</EBODY><SOLN/>
@{<WR>Correct.
The function <M>\tan x</M>  is a homeomorphism from <M>(*(-[[\pi2]],[[\pi2]])*)</M>  to <M>\rr.</M>  By standard result,
 it is continuous, bijective and its inverse is continuous.
</WR>@}<DSQS/></EXM>
<EXM ref="2022.1f" paper="2022.1f"><EBODY>@{<E>
Let <M>Y= [0,1]\cup (2,3)</M> be endowed with the subspace
topology of <M>\rr.</M> Then which of the following is true?
<VL>
<LI><M>(2,3)</M> is open, but not closed in <M>Y.</M></LI>
<LI><M>[0,1]</M> is closed, but not open in <M>Y.</M></LI>
<LI><M>(2,3)</M> and <M>[0,1]</M> both are clopen in <M>Y.</M></LI>
<LI><M>(2,3)</M> is clopen, but <M>[0,1]</M> is not clopen in <M>Y.</M></LI>
</VL>
</E>@}</EBODY><SOLN/>
@{<WR>
Here <M>(2,3) = (2,3)\cap Y.</M>  Since <M>(2,3)</M>  is open in <M>\rr,</M>  hence <M>(2,3)</M>  is open in <M>Y.</M>

Again <M>[0,1] = (-1,2)\cap Y.</M>  Since <M>(-1,2)</M>  is open in <M>\rr,</M>  hence <M>[0,1]</M>  is open in <M>Y.</M>

Also <M>[0,1]</M>  are <M>[2,3]</M>  complements of each other in <M>Y.</M>  So they are closed in <M>Y.</M>

Hence both of them are clopen in <M>Y.</M>  
</WR>@}<DSQS/></EXM>

<EXM ref="2022.1g" paper="2022.1g"><EBODY>@{<E>
In the subspace topology on <M>[-1,1]</M>, which of the following
set is open?
<VL>
<LI><M>{*{x\in\rr~:~[[12]]\leq |x| \leq 1}*}.</M></LI>
<LI><M>{*{x\in\rr~:~[[12]]< |x| \leq 1}*}.</M></LI>
<LI><M>{*{x\in\rr~:~[[12]]\leq |x| < 1}*}.</M></LI>
<LI><M>{*{x\in\rr~:~-1\leq |x| \leq [[12]]}*}.</M></LI>
</VL>
</E>@}</EBODY><SOLN/>
@{<WR>
<M>(0.4,0.6)</M>  is a neighbourhood of <M>[[12]]</M>  in our space. Since <M>[[12]]</M>  is the
 sets given in options 1,3 and 4, but <M>(0.4,0.6)</M>  is not, hence those sets cannot be open. 

Only the set given in option 2 is open.
</WR>@}<DSQS/></EXM>

@{<HEAD2>Special examples</HEAD2>@}


<EXM ref="2022.7b" paper="2022.7b"><EBODY>@{<E>
Prove that the boundary of a finite set <M>A</M>
in <M>(\rr,\tau_f)</M> is <M>A</M> itself, were <M>\tau_f</M>
denotes the cofinite topology on <M>\rr.</M>
</E>@}</EBODY><SOLN/>
@{<WR>
Let <M>a\in A.</M>  Let <M>B</M>  be any open set containing <M>a.</M>  Then  <M>B\cap A\neq\phi.</M>  Also, <M>B</M>  is
 co-finite,
 and hence infinite,
 while <M>A</M>  is finite. Thus, <M>B\cap A^c\neq\phi.</M>  

Hence <M>a\in\partial A.</M>

Conversely, let <M>b\in\partial A.</M>  Let, if possible, <M>b\not\in A.</M>  Then <M>A^c</M>  is a cofinite (ie, open) set
 containing <M>b</M>, and this set does not intersect <M>A.</M>  So <M>b </M> cannot be a boundary point.
</WR>@}
<DSQS/></EXM>

<EXM ref="2022.5a" paper="2022.5a"><EBODY>@{<E>
Show that the collection <M>{\cal C} = \{[a,b)~:~a <
b,~~a,b\in\qq\}</M> is a basis that generates a topology
different from the lower limit topology on <M>\rr.</M>[3]
</E>@}</EBODY><SOLN/>
@{<WR>
Let <M>A = [\sqrt2,2).</M>  Then <M>A</M>  is open wrt the lower limit topology. But <M>A</M>  is
 not open wrt the topology generated by <M>{\cal C}.</M>  

Any set in <M>{\cal C}</M>  containing <M>\sqrt2</M>  is of the form <M>[a,b)</M>  with <M>a < \sqrt2</M>  and <M>b > sqrt2</M>,
 where <M>a,b\in\qq.</M>  Since <M>a < \sqrt2,</M>  hence <M>[a,b)\not\seq A.</M>
</WR>@}<DSQS/></EXM>

<EXM ref="2022.5b" paper="2022.5b"><EBODY>@{<E>
Consider the order topology on the set of natural
numbers, <M>\nn.</M> Is the topology same as the discrete
topology on <M>\nn?</M> Justify.[2]
</E>@}</EBODY><SOLN/>
@{<WR>
Yes. Let the order topology be <M>\sigma</M>  and the discrete topology be <M>\tau.</M>

Then <M>\sigma\seq\tau,</M>  since <M>\tau</M>  is the largest topology. 

<M>\tau</M>  has a basis <M>\{~\{n\}~:~n\in\nn~\}.</M>  

Now for <M>n\geg 2</M>  we have <M>\{n\} = (n-1,n+1)</M>  in <M>\nn.</M>  Since <M>(n-1,n+1)\in\sigma,</M> hence <M>\{n\} \in\sigma.</M>

Also <M>\{1\} = (-\infty,2)\in\sigma.</M>  

Thus, a basis of <M>\tau</M>  is inside <M>\sigma.</M>  

Hence <M>\tau\seq \sigma.</M>

So <M>\tau=\sigma</M>, as required. 
</WR>@}
<DSQS/></EXM>

<EXM ref="2022.3a" paper="2022.3a"><EBODY>@{<E>
Prove that every infinite subset of <M>X</M> is dense in <M>X</M>
with respect to the cofinite topology.[2]
</E>@}</EBODY><SOLN/>
@{<WR>
Let <M>A\seq X</M>  be infinite. Let <M>U</M>  be any non-empty open set in <M>X.</M>  Then <M>U</M>  must be cofinite. So
 <M>U^c</M>  is finite. Hence <M>A\not\seq U^c.</M>  Thus, <M>A\cap U\neq\phi.</M>

Hence <M>A</M>  must be dense in <M>X.</M>
</WR>@}
<DSQS/></EXM>

<EXM ref="2022.2b" paper="2022.2b"><EBODY>@{<E>
Find the derived set of the set <M>\{1947\}</M> in the above
topological space.[2]
</E>@}</EBODY><SOLN/><DSQS/></EXM>
<EXM ref="2022.1i" paper="2022.1i"><EBODY>@{<E>
<M>\rr</M> is endowed with the topology defined by <M>\tau =
\{A\seq\rr~:~1\in A\}\cup\{\phi\}.</M> Then the derived set
of <M>\{1\}</M> is 
<HL>
<LI><M>\phi</M></LI>
<LI><M>\{1\}</M></LI>
<LI><M>\rr\setminus\{1\}</M></LI>
<LI><M>\rr.</M></LI>
</HL>
</E>@}</EBODY><SOLN/>
@{<WR>Here the closed sets are <M>\rr</M>  and all subsets of <M>\rr</M>  not containing <M>1.</M>
  So the only closed set containing <M>\{1\}</M>  is <M>\rr.</M>  So this is also the smallest
 closed set containing <M>\{1\}.</M>  Hence the last option is correct.</WR>@}
<DSQS/></EXM>

<EXM ref="2022.1h" paper="2022.1h"><EBODY>@{<E>
Let <M>(\rr,\tau_f)</M> be the cofinite topological space. Then
the set <M>{*{[[1n]]~:~n\in\nn}*}</M> is 
<VL>
<LI>a closed set.</LI>
<LI>an open set.</LI>
<LI>both open and closed</LI>
<LI>a dense set</LI>
</VL>
</E>@}</EBODY><SOLN/>
@{<WR>
The given set is not empty or cofinite, so not open.

It is not finite or <M>\rr</M>, so not closed. 

Every infinite set is dense in cofinite topology. The given set is infinite. So it is dense.

Hence the last option is correct. 
</WR>@}<DSQS/></EXM>

<EXM ref="2022.1a" paper="2022.1a"><EBODY>@{<E>
Consider the set <M>\rr</M> of real numbers. Let <M>\ta</M> be
the lower limit topology and <M>\sigma </M> be the upper limit
topology on <M>\rr.</M> Then 
<HL>
<LI><M>\tau\seq \sigma </M></LI>
<LI><M>\sigma\seq \tau</M></LI>
<LI><M>\tau= \sigma </M></LI>
<LI><M>\tau</M> and <M>\sigma </M> are non-comparable.</LI>
</HL>
</E>@}</EBODY><SOLN/>
@{<WR>
<M>[0,1)</M>  is an open set in the lower limit topology. Shall show that it is not open in the upper limit topology. 

All the basic open sets in the upper limit topology containing <M>0</M>  is of the form <M>(a,b]</M>  with <M> a < 0\leq b.</M> 
 Since <M>a<0,</M>  we see that <M>(a,b]\not\seq[0,1).</M>  

Similarly, <M>(0,1]</M>  is not open in the lower limit topology.

So the last option is correct
</WR>@}
<DSQS/></EXM>

<EXM ref="2023.3a" paper="2023.3a"><EBODY>@{<E>
Prove that the lower limit topology, <M>\tau_\ell,</M> and the
upper limit topology, <M>\tau_r,</M> are non-comparable, but
their intersection is 
the usual topology, <M>\tau_u,</M> on <M>\rr.</M>[3]
</E>@}</EBODY><SOLN/>
pratham a.nsha Agei karechhi. 
@{<WR>
<U>Second part</U>: <M>\tau_u</M>  has a basis <M>\{(a,b)~:~a < b\}.</M>  

Now <M>(a,b) = \cup_{n\in\nn} [*[a+[[1n]], b)*) \in \tau_\ell.</M>

Again, <M>(a,b) = \cup_{n\in\nn} (*(a,b+[[1n]] ]*] \in \tau_u.</M>

So <M>\tau_u\seq \tau_\ell\cap \tau_r.</M>

Conversely, let <M>A\in \tau_\ell\cap \tau_r.</M>  

Pick any <M>a\in A.</M>  

Since <M>A\in\tau_\ell,</M>   hence <M>a\in [p,q)\seq A</M>  for some <M>p < q.</M>   

Again, since <M>A\in\tau_u,</M>   hence <M>a\in (s,t]\seq A</M>  for some <M>s < t.</M>   

Let <M>\alpha = \max\{s,p\}</M>  and <M>\beta = \min\{t,q\}.</M>  Then <M>\alpha < \beta</M>  and <M>a\in (\alpha,\beta)\seq A.</M>

Hence <M>A\in\tau_u.</M> 

So <M>\tau_u = \tau_\ell\cap \tau_r,</M>  as required. 
</WR>@}
<DSQS/></EXM>
<EXM ref="2023.1e" paper="2023.1e"><EBODY>@{<E>
Let <M>f:(\rr,\tau_\ell)\to(\rr,\tau_u)</M> be defined
as <M>f(x)=x</M> for all <M>x\in\rr,</M>
where <M>\tau_\ell,\tau_u</M> are the lower limit topology and
the usual topology on <M>\rr,</M> respectively, then 
<VL>
<LI><M>f</M> is not a continuous map.</LI>
<LI><M>f</M> is an open map.</LI>
<LI><M>f</M> is neither continuous nor an open map.</LI>
<LI><M>f</M> is continuous but not an open map.</LI>
</VL>
</E>@}</EBODY><SOLN/>
@{<WR>
Since <M>\tau_u\seq \tau_\ell,</M>  hence continuous. But since <M>\tau_\ell\not\seq\tau_u,</M>  hence not open.
</WR>@}<DSQS/></EXM>

<EXM ref="2023.3a" paper="2023.3a"><EBODY>@{<E>
Prove that the lower limit topology, <M>\tau_\ell,</M> and the
upper limit topology, <M>\tau_r,</M> are both strictly finer than
the usual topology, <M>\tau_u,</M> on the set of all real
numbers, <M>\rr.</M>[2]
</E>@}</EBODY><SOLN/>
Agei karechhi. 
<DSQS/></EXM>

</NOTE>
