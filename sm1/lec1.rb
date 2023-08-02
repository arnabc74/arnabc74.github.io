@{<NOTE>
<HEAD1>What is statistics?</HEAD1>
It is a most reasonable question to ask before you plan to embark
upon a course dealing primarily with statistics. Unfortunately,
it is not as easy to answer. It is somewhat like asking "What is
a number?" before starting to learn mathematics. You need to be
pretty advanced into mathematics before you can hope to form some
meaningful idea about what numbers really are. Certain spcial types of
numbers (like the positive integers used for counting) are all
that are apparent at the beginning, and basic mathematics
education has to start out with that. 
<P/>
The situation is somewhat similar in case of
statistics. Nevertheless, I shall try to outline a crude
definition of the subject. Of course, there is no hard and fast
boundary delineating the scope of statistics. There are
borderline topics that some statitisticians will include in the
domain of statitistics, while others will put them under computer
science. The situation is further aggravated by the advent of
some modern buzz words like Data Science, Machine Learning, Deep
Learning. Are these modern statistical techniques? Or are these
different from statistics? The debate continues. 
<P/>
A reasonable point to start from seems to be a definition by P C
Mahalanobis: 
<Q>
Statistics is the art and science of learning from experience.
</Q> 
That's pretty broad...possibly too broad. But still it captures
the essence. The world around us is full of
unpredictability, things beyond our control. Take any
activity, like say drawing a freehand straight line. Perform it
as carefully as possible. You get one line. Now redo it, again as
carefully as possible, on a different piece of paper. You get a
second line. The two lines must necessarily be different, because
your hand is not <I>entirely</I> under your control. There are
tiny shakes, imponderable variations in the texture of the paper,
that will inevitably make the lines different. If you take a
ruler, then the variation will be less, but not go away
completely. Try  recording some audio in an absolutely silent
room. You will see that "absolute silence" is beyond your control
to create. Often we can ignore these tiny variations, but more
often we cannot. Then we need some way to deal with
it. Generally, we call this experience. It is like assessing the
wetness of a pain in watercolour. Feeling the pitch while playing
violin. Apparently, it is not within the realm of mathematics,
where everything is expected to be precise, not random,
deterministic, to use a technical term. Surprisingly,
mathematical techniques may be used to capture the essence of
experience. Hence the "science of learning from
experience". Something that can be programmed into a
computer. But still some human intervention is needed, hence the
"art" component. According to Mahalanobis, all such techniques come under the
head of statistics. 
<P/>
Mahanobis flourished in the early dawn of the subject. Much like
Aristotle in the field of science. His thought process needs to
be modified to suit modern practice.  If we follow the
development of statistical methods, we see that statistics is
only <I>one</I> of four major scientific methods for manipulating
experience mathematically. These are, in order of importance, 
<OL>
<LI>feedback control</LI>
<LI>function fitting</LI>
<LI>statistics</LI>
<LI>fuzzy logic</LI>
</OL>
Let me give an overview of the other three before we start
with statistics. 

<HEAD2>Feedback control</HEAD2>
Feedback control is <I>the</I> technique behind modern
technological precision.  When we hear about robots performing
incredibly accurate surgical operations, or nanotechnological
marvels, we are actually hearing about the success stories of
feedback control systems. Automatic flight control, guided
missiles, automatic cars, robots, precise time keeping devices, all these are applications of
feedback control systems. Indeed, it is not an exaggeration to
say  that a nation which has a better expertise on feedback control
systems, is the more powerful country. That is possibly one
reason why we in India do not hear much about it. 
<P/>
Stripped to  its bare essentials, feedback control systems are
basically machines where the output is compared with a desired
output, and difference (or <I>error</I>) between them is fed
cleverly back into the input, so that the next output is closer
to the desired goal. The way to use this idea in practice is to
start with a machine that achieves the desired goal only crudely,
and then to wrap it in a feedback loop to enhance its accuracy. It is
surprising that even simple feedback loops can result in great
accuracy. 

<P/>
The technique has a nice mathematical foundation requiring
complex analysis. We shall not explore this any further in this
course. 

<HEAD2>Function fitting</HEAD2> 
Imagine a quantity of interest that you want to
predict, and some other quantities whose values are known. In the
curve fitting approach you postulate a family of functions, that
contains the actual function. Then based on data you try to pick
up that function. Possibly the simplest example is that of
fitting a line. And the most complicated example is fitting a
neural network. Some notable examples in between is Boyle's law,
the formula used by NASA to predict lunar motion. 

<P/>
This approach is the closest to the statistical approach, and
often statistical techniques are born out of function fitting, and
vice versa. You will learn a number of function fitting
techniques as part of this course. 

<HEAD2>Fuzzy logic</HEAD2>

This is completely different approach, where we harness the
mysterious power of the human
brain to intuitively solve problems that require precise data to
be solved mathematically. Take for instance the problem of
catching a ball. You have to extend your arm to the right place,
curl your fingers around the ball and apply enough force to bring
it to a halt. We may consider this as a function, one that takes
the current velocity and position of the ball as input and
produces the necessary motion of the hand as output. This
function may be mathematically quite complicated, requiring
solving differential equations. However, it seems unresonable to
think that we have this functon built inside our brain. In fact,
if some one just asks us to eye-estimate the velocity of the
incoming ball, we shall be hard put. Yet somehow we do manage to
catch the ball quite easily. 
<P/>
Fuzzy logic provides a way to convert this intuition into a
mathematical function.
<DISQUSE id="lec1" url="https://arnabc74.github.io/sm1/lec1.html"/>
</NOTE>@}
