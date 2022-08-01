<NOTE>
@{<E>
<HEAD1>Projects</HEAD1>
This course has one project carrying 10 marks.

<COMMENT>
<HEAD2>Estimating the frame rate of a video camera without using
a precision clock</HEAD2>
A video camera works by taking snaps at regular time intervals
(e.g., 30 snaps per second). The number of snaps per second is
called its FPS (Frames Per Second) value. Most cameras advertise
their FPS values (or even allow the user to select the value). But
sometimes a camera departs from the advertised value in two ways:
<OL>
<LI>The FPS is lower than the advertised value. Each snap
requires some processing after being taken (eg, compressing and
storing). The older the camera gets the more time these
operations take. This leads to a drop in the FPS value.</LI>
<LI>Even though the FPS value is maintained most of the time,
one or two frames are dropped occasionally.</LI>
</OL>

Given a camera we want to see if the camera suffers from these
problems. One way could be to videograph the face of a precision
clock. But it is not easy to see clearly from a video the
dial/screen of a clock of sub-second precision. This project
explores an alternative idea: pitching the camera against a known
law of physics involving time. 

<P/>
The law that we shall choose is the law of gravitation, which
implies that if a stationary object is dropped from a
height <M>h</M> then its height at time <M>t</M> during free fall
is <M>h-[[12]]g
t^2</M>, where <M>g</M> is the acceleration due to gravity. 

<P/>
We may try to use this to estimate the FPS value of a camera as
follows.
<UL>
<LI><B>Step 1:</B> Videograph a free falling object.</LI>
<LI><B>Step 2:</B> Locate the position of the object in each
frame of the video.</LI>
<LI><B>Step 3:</B> For each frame obtain the frame
number <M>t</M> and the vertical pixel position <M>y</M> of the
object.</LI>
<LI><B>Step 4:</B> Also photograph a known length using the same
camera. Convert <M>y</M> to centimetres.</LI>
<LI><B>Step 5:</B> Fit a linear model to estimate <M>g</M> in
centimetres/frame<M>^2</M> unit. Don't forget to make a plot first!</LI>
<LI><B>Step 6:</B> Compare with known value of <M>g</M> to
estimate FPS.</LI>
<LI><B>Step 7:</B> (This is IMPORTANT!) Provide a measure of
precision of your estimate. It is quite possible that the
procedure does <I>not</I> give a reliable estimate. But provide
a convincing argument behind your conclusion.</LI>
</UL>

Here is <LINK to="https://www.thewindowsclub.com/extract-frames-from-a-video-with-high-quality">how you may extract the frames from a video</LINK>. Most digital
paint programs show the pixel coordinates of the mouse position
as ou hover the mouse over an image. <LINK to="http://www.gimp.org">GIMP</LINK> is just one such free
software.
</COMMENT>
<HEAD2>Making a vector map stitching satellite
screenshots</HEAD2>

Consider a region samll enough so that earth's curvature may be
ignored, yet large enough so that Google map cannot fit it in a
single screen at high resolution.
<CIMG web="msproj1.png"/>
 We cover the region with a number of overlapping
screenshots <I>all of the same resolution</I>. 
<CIMG web="msproj2.png"/>
Each rectangle is a screenshot (hence is of the size of your
monitor). All the screenshots are numbered. To understand the subsequent steps we focus on two
overlapping screenshots (say screenshots 1 and 2):
<CIMG web="msproj3.png"/>
The red dots are known locations that you can identify at the
current resoluton of the screenshot. Note that the central
location is part of both the screenshots. For each screenshot
find the approx pixel coordinate  of the location (e.g., by
clicking on the centre of each red disk, and reading the mouse
coordinates). For example, we measure <M>(r_{1j}, c_{1j})</M>
from screenshot 1:
<CIMG web="msproj4.png"/>
Here <M>r</M> stands for "row", and <M>c</M> for "column". The
first subscript is the screenshot number, the second is the
location number (we assume that the central red dot in
the <M>j</M>-th in the list of the known locations). Similarly,
from screenshot 2 we measure <M>(r_{2j}, c_{2j})</M>:
<CIMG web="msproj5.png"/>
Notice that we are using the same <M>j,</M> as it is the same
location. 

<P/>
Thus our data set consists of a subset of <M>(r_{ij}, c_{ij})</M>'s
for <M>i=1,...,</M>number of screenshots,
and <M>j=1,...,</M>number of locations. Of course, not
all <M>(i,j)</M> pairs occur in the data, since the <M>j</M>-th
location may not show up in the <M>i</M>-th screenshot.
<P/>
Let <M>(\mu_i, \lambda_i)</M> be the true position of
the <M>i</M>-th location (w.r.t. some global coordinate
system). 
<P/>
We can set up a linear model to estimate <M>(\mu_i,
\lambda_i)</M>'s from the data. 
<P/>
The project consists of the following parts:
<OL>
<LI>Working out the theory: this involves setting up the linear
model, and working out the rank of the design matrix. [5 marks]</LI>
<LI>Implementing the entire thing in R: the final software
should take a list of screenshots and show them one by one in R,
allowing the user to click on the known locations. The system
should save the click locations as well as the location
identifiers. Then then the system should run the linear model to
estimate the true positions. [10 marks]</LI>
<LI>Allow screenshots of different (known) resolutions.[ 5
marks]</LI>
</OL>

<HEAD3>Some R tips</HEAD3>
You may read a jpeg image in R and display it as:
<R>
library(jpeg)
x=readJPEG('screenshot1.jpg') #replace screenshot1.jpg with your image name.

plot(1:2,ty='n') #set up the screen as [1,2]x[1,2] or whatever you like.

rasterImage(as.raster(x),1,1,2,2) #draw the image on screen.
</R>
You may need to install the <CODE>jpeg</CODE> package first.
<P/>

Similarly, there is a package called <CODE>png</CODE> for reading images in the png format. 

<P/>
To allow the user to click at points on an image and to get the coordinates of the clicked points:

<R>
p = locator(1) #for one click
p = locator(2) #for two clicks
p = locator() #for any number of clicks (end with a rightclick)
</R>
In each of these cases <CODE>p</CODE> stores the coordinates of the clicked points (w.r.t. the coord system you set 
us using the <CODE>plot</CODE> command earlier).

<P/>
Please work with the map of a real location that interests
you. Some of you may collaborate to make a detailed map of the
same place.
<COMMENT>
<HEAD3>Test data sets</HEAD3>
I have created a fake map and some screenshots
covering it:
<CIMG web="../maps/master.png" w="500"/>
Here are the screenshots for the <LINK to="maps/sameres.tar.gz">same
resolution</LINK> case, and here
for <LINK to="maps/diffres.tar.gz">different resolutions</LINK>
case. Each screenshot contains a horizontal line segment that is
known to be of the same length. So if you want you may use it as
a scale. If you alo want to play with rotated images then
try <LINK to="maps/rot.tar.gz">this bunch</LINK>.
<P/>
In your final output the triangles must be equilateral. Also, try
using only s1, s2, s3 and s8 to see if your program correctly
generates  an error message. 
</COMMENT>

<DISQUSE id="lmprojects1" url="https://arnabc74.github.io/linmod/projects.html"/>
</E>@}
</NOTE>
