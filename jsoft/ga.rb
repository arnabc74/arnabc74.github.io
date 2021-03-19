@{<NOTE>
<HEAD1>Geometric algebra with J</HEAD1>
Geometric algebra is an algebra, i.e., a vector space together
with a product operaion that combines two vectors to produce a
new vector. This product is called the <B>geometric
product</B>. It satisfies all the things that you'd expect a
product to satisfy except commutativity, and existence of
inverse. It is associative, distributes over addition (both
ways), allows scalars to slip out, has an identity
element. Throughout most of Geonetric Algebra we keep the
explicit definition of the geometric product hidden. 
<P/>
The vector space is of dimension <M>2^5.</M> We shall express all
vectors w.r.t. a canonical basis with a typical
member <M>e_A,</M> where <M>A\seq\{1,2,3,4,5\}.</M> 
We shall call the vectors <B>multivector</B>s. 
<P/>
Let's create a multivector:
<J>
v=: (3.4;1 3),(6.5; 1 4 5),: (_4; 1 3)
</J>
This the multivector 
<D>3.4 e_{\{1,3\}}+6.5 e_{\{1,4,5\}}-4
e_{\{1,3\}}.</D>
Notice that <M>e_{\{1,3\}}</M> occurs more than once. We may
combine all occurences of it by using the <CODE>comb</CODE>
function:
<J>
comb v
</J>
If a multivector has nonzero coefficients for <M>e_A</M> only
when <M>A</M> has a given size, we say that the multivector
has <B>grade</B> equal to that given size. For example, 
<D>
4e_{\{1\}} - 5 e_{\{5\}}
</D>
has grade 1. A pure multivector of grade <M>k</M> is often
called a <B><M>k</M>-vector</B>. A 1-vector is called
a <B>vector</B>. A multivector that is not pure is
called <B>mixed</B>. <B>Grade extraction</B> means extracting the
 part of a multivector having a given grade. For instance, if we
extract grade 2 of 
<D>3.4 e_{\{1,3\}}+e_{\{4,5\}}+6.5 e_{\{1,4,5\}},</D>
we shall get 
<D>3.4 e_{\{1,3\}}+e_{\{4,5\}}.</D> This operation is denoted
symbolically by <M>\langle v\rangle_k.</M> In J 
<J>
2 gx v
</J>

<PRE>
cin=: 4 :0"0 2
 vy=:{:"1 y
 cy=:;{."1 y
 wh=:x=vy
 if. +./ wh do.
    wh#cy
 else. 
    0
 end.
)
vp=: |:@:(((,1);(,2);,3)&cin )
sp=: (<i.0)&cin

f=: 4 : 0
  left=: (x>y)#y
  xniny=:1-x e. y
  mid =: xniny#x
  (2|#left){ 1 _1
)

g=: 4 : 0
  s1=:*/x f"0 1 y
  s2=: (5 e. x)*. 5 e. y
  sign=:s1*s2{1 _1
  sign;/:~ x (-.,-.~) y
)

mult=: 4 : 0
  cx=:>{.x
  cy=:>{.y
  vx=:>{:x
  vy=:>{:y
  bp=: vx g vy
  cbp=: >{. bp
  vbp=: {:bp
  (cx*cy*cbp);vbp
)



comb=: 3 : 0
  vy=:{:"1 y
  cy=:{."1 y 
  nc=:vy +/@;/. cy
  nv=:~. vy
  keep=:1-nc=0
  nkeep=:+/keep
  nc1=:<"0 keep#nc
  nv1=: keep#nv
  nc1,. nv1
)

gpbad=: 4 : 'comb ,/ x mult"1/ y'
gp=:comb@,/@(mult"1/)
omult=: 4 :0
tmp=:(gr x)+gr y
tmp gx x mult y
)
lmult=: 4 :0
tmp=:(gr y)-gr x
tmp gx x mult y
)
rmult=: 4 :0
tmp=:(gr x)-gr y
tmp gx x mult y
)
dmult=: 4 :0
tmp=:|(gr x)-gr y
tmp gx x mult y
)


dp=:comb@,/@(dmult"1/)

op=:comb@,/@(omult"1/)
lp=:comb@,/@(lmult"1/)
rp=:comb@,/@(rmult"1/)

ip=: 0 & gx @ gp

ad=:comb@,
sm=: 4 : 0"0 2
  tmp=: <"0 x*;{.|:y
  tmp,.{:|:y
)

gr=:#@:>@ {:
sb=: [ ad (_1&sm@])
gx=: 4 :0
len=: gr"1 y
(len=x)#y
)


e=: 3 :  'y(;"0 1) 1, 2 ,:3'

c=: 3 :0
  p=: e y
  o ad p ad 0.5 sm p gp p gp i
)

ci=: 3 :0
  scale=.- sc y ip i
  (vp y) % scale
)

v=: (3.4;1 3),(6.5; 1 4 5),: (_4; 1 3)
e1=:1 2$1;1#1
e2=:1 2$1;1#2
e3=:1 2$1;1#3
e4=:1 2$1;1#4
e5=:1 2$1;1#5
o=: 0.5 sm e4 ad e5
i=: e5 sb e4

scr=: 4 :'(c x) sb (0.5**:y) sm i'
scp=: 4 :'(c y) dp (c x) op  i'

9!:7'+++++++++|-'
</PRE>
</NOTE>@}
