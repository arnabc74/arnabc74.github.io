@{<NOTE>
<HEAD1>Animation in AoI</HEAD1>

<HEAD2>The basic concept</HEAD2>
The basic concept is the same for all animation software, whether
2D or 3D. A solid understanding of that would go a long way
towards making your life smooth during complex animation cycles. 
<P/>
Every object in our digital world is made of numbers. These
numbers can vary. In any animation we express these as functions
of time. Then we loop over time. For each time point (typically
called a <I>frame</I>), all the numbers are computed, and the
resulting scene rendered. 
<P/>
While this is conceptually pretty easy, it is not so efficient
computationally:
<UL><LI> For one thing, if you allow all the numbers to
change arbitrarily, some impossible situations might crop up due
to imcompatible values. Imagine a circle whose radius
becomes negative by mistake. To avoid such possibilities certain
numbers are <I>not</I> allowed to change at all. 
</LI>
<LI>
Secondly, even among the numbers that can be safely played
with, most will <I>not</I> change with time. A photo hanging
from a wall is not going to move.  We can of course consider this as
a special case of animation, where the function is a
constant. But computationally even a constant function has an
overhead. It will help the software to run faster if the
constants are clearly marked, so that they are are not recomputed
every frame. 
</LI>
</UL>
Hence all the numbers are grouped into three groups:
<OL>
<LI>those that must remain constant.</LI>
<LI>those that may vary, but will remain constant in this scene.</LI>
<LI>those that are actually varying.</LI>
</OL> 
Every animation software must have some way of specifying this
grouping.  The first group is built into the software, and cannot
be changed. Among the rest, the user needs to specify the ones
they want to change. AoI calls the variables in the last two
groups <B>parameter</B>s. Related parameters are bunched
together. Each bunch is called a <B>track</B>. The process of earmarking a track as a
member of the third group, is called <B>add</B>ing a track. Some
commonly used tracks are already added by default.  

<HEAD2>Keyframes</HEAD2>

To keep life simple all softwares force the driver functions to
be of a simple type, which are easy to specify and yet flexible
enough for most purposes. The values are explicitly specified for
only some time points, and are interpolated for the rest. The
time points at which the values are explicitly specified are most
commonly called <B>keyframe</B>s.
It is  important to remember that
keyframes are specific to a particular parameter. Frame 20 may be
a keyframe for parameter 1, but not so for parameter 2. 
<P/>
There are different types of interpolation possible. All
softwares allow two basic forms: step function and linear
interpolation. Step functions are good for numbers that 
change abruptly, like visibility. Linear
functions change gradually over time, in a rather boring
fashion. Most softwares provide more sophisticated
interpolations as well, the two most useful being clamped and
spline. It is a pity that no uniform nomenclature exists across
softwares. Personally, I like clamped the most. Unfortunately AoI
does not provide it. So I mostly use linear interpolation.  

<HEAD2>The tracks</HEAD2>
The tracks are generally of three types: how the objects are
positioned in space, scaling, and poses. 
 There are two ways to change the position of an object,
either by absolutely specifying the new position, or by
performing a transformation. You must understand that the
transfomations are  not tracks, it is the actual values that are
the tracks. Misunderstanding this point is a cause of much
frustration. 
<P/>
However, scaling transorms constitute one track. This is a common point of
confusion. If you have this arrow then its length is not
a track, but the scaling factors are. However, its orientation is
a track, while its rotation is not. You may not readily see why
this might lead into counterintuitive behaviour. Often a complex
object is a hierarchy of simpler objects. Then orientation and
rotation behave differently. Rotations propage to the children,
while orientation does not. If you have object B under object A,
then moving or rotating A would cause B to follow. But animating
A alone will leave B standing where it was! You need to keyframe
A and B both! This single thing makes animation in AoI rather
painful. You need to select A alone, do the transformation, then
select A, B both and snap a keyframe, then deselect B, and make
further transform, and again add B to selection before snapping. 

<P/>
Transformations propagate down to children, but never up to
parents. This makes it easy to animate nested motions (like the
diurnal rotation of the earrth is nested inside the annual
revolutions around the sun). 

<P/>
If you have created a scripted object, then you can create custom
tracks, collective called a <B>pose</B>. Each track is called a
parameter. You may have as many of these inside a pose as you
want. For instance, you may create an arrow and make the shaft
its parameter. 
<P/>
So now you have the basics of animation. It is time to see these
in action. 
</NOTE>@}
