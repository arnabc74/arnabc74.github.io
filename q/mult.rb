<NOTE>
@{
<TITLE>Multivariate statistics</TITLE>
<HEAD1>Multivariate statistics</HEAD1>

<HEAD2>Reference materials</HEAD2>
<UL>
<LI><B>Applied Multivariate Statistical
Analysis</B> by <I>Hardle</I> and <I>Simar</I></LI>
<LI><B>Applied Multivariate Statistics with R</B>
by <I>Zelterman</I></LI>
<LI><B>R multivariate statistics taskview</B> at <I>CRAN</I></LI>
</UL>

<HEAD2>Extrinsic and intrinsic data dimension</HEAD2>
These are terms coined by me to explain two concepts that pervade
much of multivariate statistics. When we have a rectangular data
set, laid out as cases <M>\times</M> variables, the number of
variables is called the <B>dimension</B> of the data set. This is
what I am calling the <B>extrinsic dimension</B>. 
<P/>
The intrinsic dimension refers to the inherent complexity of the
underlying set up. For example, in a face recognition problem
a case is a photograph of a face, and the variables are pixel
values. The resolution of the image (i.e., the number of pixels
used) determines the extrinsic dimension, while the the
complexity of the human face recognition problem denotes the
intrinsic dimension. 
<P/>
A broad area of multivariate statistics revolves around finding
the intrinsic dimension. As the intrinsic dimension is often much
less than the extrinsic dimension, such methods are sometimes
called dimension reduction techniques. We shall discuss three
different flavours:
<UL>
<LI>Principal Component Analysis (PCA)</LI>
<LI>Factor Analysis (FA)</LI>
<LI>Multidimensional Scaling (MDS)</LI>
</UL>

<HEAD2>Principal Component Analysis</HEAD2>
PCA tries to assess intrinsic dimension by looking at the scatter
of the data cloud in high dimensional space. It considers
directions with low scatter as unimportant. To understand this
let us use 
the trivariate data set in <FILE>pca.csv</FILE>. It has been
visualised as an interactive scatterplot <LINK
to="test.html">here</LINK>. Though the extrinsic dimension is 3,
the intrinsic dimension is only 2, as is apparent by rotating the
plot with the mouse.
<P/>
PCA tries to play the role of the mouse in arbitrarily high
dimension. It detects both the intrinsic dimension, as well as
the lower dimensional subspace where the data lie.

<HEAD3>A toy example</HEAD3>
First let's load  a hypothetical data set about the Physics and
Statistics marks of 100 students:
<COMMENT>
x = read.table("marks.txt",head=T)
</COMMENT>
<R>
x = read.table("https://www.isical.ac.in/~arnabc/talks/mult/marks.dat",head=T)
</R>
Check the data set:
<R>
dim(x) 
plot(x)
</R>
Notice the strongly elliptical (almost linear) shape of the data cloud. PCA will identify the major and 
minor axis directions and lengths.  
<R>
v = prcomp(x)
v
</R>
Very simple output: <CODE>PC1</CODE> and <CODE>PC2</CODE> give the directions (they are both unit vectors), and the <CODE>standard deviation</CODE>s are just the lengths. 
Can you  visualize this?  Here are some hints: First you need to know how to access different parts of <CODE>v</CODE>.
<R>
names(v)
</R>
Check if the output of the following command matches the <CODE>PC1</CODE> and <CODE>PC2</CODE> you saw just now.
<R>
v$rot
</R>
You can extract <CODE>PC1</CODE> as
<R>
pc1 = v$rot[,1] #1st column of rot inside v
</R>
Now you have to draw arrows with the <CODE>arrows</CODE> function. Your arrows must start from the centre of the data cloud (call it point <M>O</M>, say): 
<R>
Ox = mean(x[,1])
Oy = mean(x[,2])
</R>

If the two arrows have tips at <M>P</M> and <M>Q</M>, then your final command will be 
<R>
arrows(Ox,Oy,Px,Py)
arrows(Ox,Oy,Qx,Qy)
</R>
Your task is to work out <CODE>Px</CODE>, etc. 

<P/>
You can produce the scree plot:

<R>
plot(v)
</R>

<HEAD3>Face recognition</HEAD3>
A human face has innumerably many features. However, we can
recognise a face based on only a small number of "important"
features. What is meant by "important" in this context? Imagine a
crime scene with just one eye witness. Asked to describe the
criminal, the witness mentions the following features: 
<OL>
<LI>The person had one nose and two eyes.</LI>
<LI>The person had a scar on the left cheek.</LI>
<LI>The person looked angry.</LI>
</OL>
Which of these three do you think is the most helpful to identify
the person. The first one, while very accurate, is of no use, as
there is no variability in the numbers of nose and eyes of human
beings. The second is of great use. The third one is too
temporary.

<P/>
This decision is based on our everyday knowledge about the
variability of the human face. We look for those features that
vary a lot from one face to another face, but does not easily vary for
the same person. When identifying a cow, its colour is a good
indicator. But for a buffalo, body colour has no value as an
indicator. 
<P/>
PCA tries to glean this experience based on data. Let's
understand this non-mathematically at first. Suppose we want to
identify a person by three features: glasses, moustache and
hair. Suppose there are three types of each feature:
<CIMG web="features.png"/>
Now suppose we want to describe this man:
<CIMG web="aman.png"/>
Of course this face has many more features (e.g., brows, lips,
nose). But we shall focus only on the three chosen features, and
express this man as:
<Q>
Hair:3, Glasses: 1, Moustache: 3.
</Q>
We  reconstruct the face based on this description. We start with
a generic face:
<CIMG web="generic.png"/>
Then we add the chosen features on it:
<CIMG web="recon.png"/>
Not exactly a very good reconstruction, we must admit. But we
have used only three features, and only three possible types for each.
<P/>
Well, PCA does this in an automated way. It <I>finds</I>
appropriate features for us, and allows infinitely many possible
types for each (encoded by a real number). 

<P/>
For example, here are 9 features chosen by PCA:
<CIMG web="efaces.png"/>
And here is a generic face:
<CIMG web="meanf.png"/>
Just as we could describe a face in a compact way in terms of
only he chosen features, we can do the same thing here. 
<Q>
Feature 1: 17.34, Feature 2: 15.78, Feature 3: -3.85, Feature 4:
   0.78,
Feature 5: 11.35, Feature 6: -8.55, Feature 7:  7.57, Feature 8: 2.24,
Feature 9: -0.74. 
</Q>
You may find it unbelievable, but if you actually start with the
generic face, and then add appropriate multiples of the feature
images (with the above numbers as multipliers), then you will get
this face:
<CIMG web="recon2raw.png"/>
If we just change the numbers (retaining the same 9 feature
images), then get yet another face:
<CIMG web="recon3raw.png"/>
Ths we can now express a recognisable face using just 9 numbers!
<P/>

When we take a snap, we are collecting multivariate data,
typically 3 numbers per pixel: intensities of the  red, green
and blue lights at that point. For a greylevel image, we have
just one number per pixel. 
First download the data
from <LINK to="facesbwandcol.tar.gz">here</LINK>.
Uncompress the file. 
<P/>

Then load this <LINK to="eigfaces.r">R code</LINK> in R. You'll
need to change the location of the data files mentioned in the R
code.

<P/>
Now a typical session will be:
<R>
png('showstep%d.png')
x = loadImages()
newcoord = process(x)
showSteps(newcoord,26) #keep on hiting Enter to move forward

showFace(newcoord,1)
dev.off()
</R>
@}
</NOTE>
