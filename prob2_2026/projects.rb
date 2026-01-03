 @{<NOTE>
<TITLE>Projects</TITLE>
This page lists a few fun projects related to things we have learned. These are totally optional, and will have no bearing
 on the marks that you will get. Indeed, unless you are finding the course super easy, I would advise you to think about
 the projects only after the semester is over. 
<HEAD1>Project 1</HEAD1>
In one of the exercises about <M>Unif(0,1)</M>  distribution, we had partitioned <M>(0,1)</M>  into a number of equal subintervals,
 and had permuted them. This "scrambling" had produced a new random variable from an <M>Unif(0,1)</M>  random variable. Your
 first task is to redo that exercise to convince yourself that the new random variable again has <M>Unif(0,1)</M>  distribution.
 
Now take any <M>X\sim Unif(0,1),</M>  and split <M>(0,1)</M>  into <M>n</M>  equal subintervals
 where <M>n\in\nn.</M>  Call these subintervals the <I>states</I>, labelled <M>1,...,n.</M>  Now
 split each state into <M>n</M>  further subintervals (equal width) called <I>districts</I>, again
 lablled <M>1,...,n.</M>  Thus, effectively you have split <M>(0,1)</M>  into <M>n^2</M> 
 subintervals that may be labelled as <M>(i,j)</M>  for <M>i,j\in\{1,...,n\},</M>  where <M>i</M>  denotes the state, and
 <M>j</M>  denotes the district within the state. 

Let <M>Y</M>  be obtained by scrambling <M>X</M>  as follows: Swap <M>(i,j)</M>-th subinterval with the <M>(j,i)</M>-th subinterval.
 
Your next task is to find the joint distribution of <M>(X,Y).</M>  For this draw the joint distribution of <M>(X,X)</M> 
 as the <M>45^\circ</M>  line drawn as a diagonal in the unit square. The entire mass 1 is uniformly distributed along this
 line. Take <M>n=2</M>  and do the swaps in the vertical axis, and sketch how the diagonal line
 gets split into <M>n^2=4</M>  equal pieces and gets redistributed. 

Obtain the joint CDF of <M>(X,Y)</M>  as the points <M>(*([[in]],[[jn]])*).</M>  

Compare with the CDF had <M>X, Y</M>  been IID <M>Unif(0,1).</M>  

Do you notice anything funny?

<HEAD1>Project 2</HEAD1>
For this project you need to know how to extract pixel values from an image. There are R and
 Python packages/functions for this purpose. You may Google, or ask me to learn about them.

Take printed text, preferrably large font, black ink on white paper. Hold your camera fixed in
 from of it, and take 50 greylevel photos of the same thing without moving th camera or the page. Many
 cameras have a "burst mode" that will help you to take a bunch of photos with a single click.
 Extract the pixel values for each. Compute <M>V_{ij}=</M>  variance of the 50 meaurements of the
 <M>(i,j)</M>-th pixel.  Would you expect all the <M>V_{ij}</M>'s to be nearly the same? Think, and make a guess. Now actually
 compute and see. 

Can you explain what you see? 
 
<HEAD1>Project 3</HEAD1>
THere are 5 bridges linking two shores of a river as shown below.
<CIMG web="bridges.png"></CIMG>
Each brindge is either open or closed with probability <M>[[12]]</M>  independently of the others. What is the probability
 that the man on shore 1 would be able to get to the other shore? Of course, you can compute the
 probability using brute force enumeration.
 But there is a smart way to get the answer. Can you find it? 

</NOTE>@}
