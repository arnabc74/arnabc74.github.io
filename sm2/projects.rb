@{<NOTE>
<HEAD1>Projects</HEAD1>
Each group of 5 or 6 students will do a single project. They have
to either come up with their own project idea (to be ratified by
me), or they have to choose one from the following list of
projects. Same project may be chosen by more than one group. You
may use R or Python or Java or C or C++. No project specific
library is allowed.

<P/>

<ALERT/>Each project group should submit a single report in pdf
along with code etc (separately via email/github link/etc). The
report must contain exploration of the data. There
will be a project presentation (about 20min to 30 min per project
group), where each member has to present a part. No separate viva
(except questions from the classmates and me during the presentation).  
<P/>
<ALERT/><B>The deadline for submission of project is the last
day before the semestral exam week starts. Submit report (problem
description, algo, findings etc) and code. Do not include code
in your report.</B>
<P/>
<ALERT/>The projects are often tough, while your expertise in
statistics is still rudimentary. So do not despair if your
results are not satisfactory. Your performance will be judged in
terms of how much sincere effort you have put into it. Doing a
Google search, and implementing a sophisticated algo will fetch
less credit than trying on your own and possibly coming up with an
inferior technique. Doing a Google search, finding an efficient
algorithm, and passing it off as your original research will
incur severe penalty. 
<OL>
<LI><B>Exploring cross-correlation for permutations
 of <M>M</M>:</B> There is an interesting theorem that for two
 independent random variables <M>X</M> and <M>Y</M>, we can
 construct two other random variables <M>U</M> and <M>V</M> that
 have the same marginal distributions as <M>X</M> and <M>Y</M>
 and the joint distributions are arbitrarily close. Now
 cross-correlation claims to be able to detect all types of
 inependence. This project will explore how (and whether) it can
 distinguish between <M>X,Y</M> and <M>U,V.</M> The project
 involves reading the proof of the theorem, coding
 cross-correlation and doing the exploration.

<BOX name="Students">
</BOX>
</LI>
<LI><B>OCR-able handwriting:</B> We want to come up with an
alphabet (a set of symbols) that have the following properties:
they are mechanically distinguishable easily from scanned images,
they are easy to write by hand.
 
<BOX name="Students">

</BOX>
</LI>
<LI><B>Sequential testing:</B> Often the result of a test is
inconclusive. Fixed sample size proecedures resolves such cases
in favour of <M>H_0.</M> We want to come up with a test procedure
that will ask for more data in such cases. The desired test
procedure should split the sample space into three parts: accept,
reject and continue.
This project will explore a simple toy version of this: there are
20 closed boxes, exactly 5 of which contain a Rs 5 coin. You have
to pay Re 1 to open a box. If the opened box contains a coin, it
is yours. What is the best strategy to maximise expected gain. No
closed form solution may exist. Coming up with a computer program
(along with a mathematical proof of its optimality) is all that I
expect. 
<BOX name="Student">

</BOX>
</LI>
<LI><B>RGB to CMYK conversion</B>:
There are two different models for colours: additive (i.e.,
light) and subtractive (i.e., paint). The additive primaries are
Red (R) , Green (G) and Blue (B). The subtractive primaries are
Cyan (C), Magenta (M), and Yellow (Y). The three subtractive
primares are supposed to make perfect black when mixed together
in equal amounts. However, since black paint is generally cheaper
than mixing the three primaries, we also consider black (K for
key) as a subtractive primary. The RGB system is used for
computer monitors, while the CMYK system is ised for colour
printers. In order to produce comparable result based on
on-screen designs, we need a reliable mappiing between the two
systems. Surprisingly, such a mapping is rather hard to
find. This project will explore this.
<BOX name="Students">
</BOX>
</LI>
<LI><B>Computing multivariate medians:</B> We have discussed
different types of multivariate medians in class. Some of them
are rather tricky to compute. Write programs to compute them
in <M>k</M>-dim. If general <M>k</M> is difficult, you may just
focus on <M>k=3.</M>
<BOX name="Students">

</BOX>
</LI>
<LI><B>EM algorithm:</B> 
Read about the basics of the Expectation-Maximisation algorithm
to compute MLE. Implement it for some real life
problem. Different student groups must take different application areas.
<BOX name="Students"></BOX>
</LI>
<LI><B>Information theory:</B> 
Morse code sends English characters using dots and dashes. The
letter E is represented by a single dot. This is reasonable
because E happens to the most frequently occuring letter in
normal usage. So assigning the shortest code to it makes sense
from the viewpoint of length optimisation. "More frequent inputs
should be mapped to shorter outputs" is an intuitive idea that
has been rigoorised in Huffman encoding. This first part of the project is to learn
about this Huffman coding and its optimality (along with the
important concept of entropy).  Huffman coding is optimal when
the input probability distribution is known. If it is not known,
then Huffman encoding may perform badly. So the natural question
is whether one can come up with an encodig scheme that guarantees
a minimum performance against all input probability
distributions. 

<P/>
This is not an easy project. You will need to consult chapter 12
of the book Elements of Information Theory by Thomas and Cover. 

<BOX name="Students"></BOX>
</LI>
</OL>
</NOTE>@}
