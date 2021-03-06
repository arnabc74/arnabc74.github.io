<NOTE>@{
<HEAD1>An R system for generating mathematical animations</HEAD1>
I have developed a little R system to generate mathematical
animations to go with my academic videos. This page is a brief
tutorial for that. 
<HEAD2>Purpose</HEAD2>
Often I need to show 2D graphs. I like to draw them in an
animated way. Also, sometimes I want to deform a graph a
continuously. I need to keep these animations in sync with my
main video (the one showing me talking). This requires quite a
few adjustments, that are time consuming and boring. This system
takes away much of the drudgery out of them.

<HEAD2>The basic idea</HEAD2>
The system produces a transparent png for each change, and then shows them
in succession. However, often the animations come in short bursts
punctuated by long gaps (where I motivate the next animation). If
I keep on generating one png image per frame, then the total
number of png images would be huge, which is wasteful, since most of them would show
the same thing. To avoid this, the system generates an image only when
something has changed, and then also generates an MLT file that
arranges the images properly in the timeline. 

<HEAD2>Details</HEAD2>
The system consists of two parts, a static one and a dynamic
one. The static part encapsulates all the logic that remains
the same for different animations. The dynamic part is where I
specify the details regarding the specific animation at
hand. From the users' perspective, it will help to look at a
sample dynamic part first.

<HEAD3>A sample dynamic part</HEAD3>
<R>
<BLUE>#First import the static part.</BLUE>
source('../vid.r')

<BLUE>#The auxiliary R functions and variables that I shall use
#for this specific animation.</BLUE>
myf = function(x) x*(x-1)*(x-1.5)
a = -0.1; b = 2
xvals = seq(a,b,len=100)
yvals = myf(xvals)
dist = max(yvals) + 5

#-------------------------------------------------------------
<BLUE>#Next, we create the animated objects. These are of four types:
    1. Static curves drawn in an animated way.
    2. Moving curves.
    3. Any stationary object.
    4. Any other animated object.

The first type is created by the ml() function. It takes three
arguments: a,b, and f, where f:[a,b] -> IR^2 is the parametric
form of the curve. The drawing starts from t=a and ends
at t=b. We may have a > b. The parameter t does not have anything
to do with time of the animation. We may choose the
parametrization that is most comfortable to use from the
viewpoint of mathematics.
</BLUE>
xax = ml(a,b,
         function(t) c(t,0))

yax = ml(myf(a),myf(b),
         function(t) c(0,t))


fx = ml(a,b,
        function(t) c(t,myf(t)))
mfx = ml(a,b,
         function(t) c(t,-myf(t)))
fmx = ml(a,b,
         function(t) c(-t, myf(t)))

<BLUE>#The second type is specified as a parametric curve with
parameter u, and also indexed by a second parameter v. The
entire specification takes the form of a list with the initial
and final values of v, the grid of u-values, and a function
which takes a vector ugrid and and a scalar v. The following
example translates the y=x^2 curve horizontally to the left by
an amount 5.</BLUE>
r5 = list(vs=0,ve=5,ugrid=seq(a,b,len=30),fun=function(ugrid,v) {
    list(x = ugrid-v, y = ugrid^2)
})

<BLUE>#The third type requires no prior construction.

The fourth type is created as a list with the following
components:
   1) vs: the initial value of the animation parameter.
   2) ve: the final value of the animation parameter. 
   3) fun: a function taking the animation parameter as its only
           argument.

Here is an example:
</BLUE>
mfxAnim = list(vs=pi/2,ve=-pi/2,
               fun=function(v) {
                   zvals = yvals*cos(v)
                   scl = dist/(dist-zvals)
                   xv = xvals*scl
                   yv = yvals*sin(v)*scl
                   lines(xv,yv,lwd=3,col='blue')
               })
#-------------------------------------------------------------
<BLUE>#The system maintains a master list of all the animations. 
The reset function initializes that list.
</BLUE>
reset()

<BLUE>#The masterlist is populated by four functions, nq, nq2, nq3
and nq4, corresponding to the four different types mentioned
earlier.

The nq function adds an animation of type 1. Its first argument
is the output of the ml function used to specify the
animation. The second function specifies the start time (either
as a (min, sec, frame) triple for absolute timing, or as a single
number specifying the delay (in frame unit) after the last
animation. The third parameter is the duration (in frame
unit). There is a fourth argument called over, that defaults to
Inf. It is the time (must be in (min, sec, frame) format if not
Inf) after which the animation will become invisible. All other
arguments are passed on to the lines() function called internally.
</BLUE>
nq(xax,c(8,23,21),6,lwd=2,col='blue',lty=2)
nq(yax,6,6,lwd=2,col='blue',lty=2)

nq(fx,10,20,lwd=3,col='red')

nq(mfx,c(8,35,0),20,over=c(8,45,0),lwd=3,col='blue')

nq(fmx,c(8,47,5),20,lwd=3,col='blue')

<BLUE>#Animations of type 2 are added by the nq2 function, which
is very much like the nq function.</BLUE>
nq2(r5,c(7,38,9),20,lwd=3,col='blue')

<BLUE>#Animations of type 3 are added by the nq3
function. It takes a start time (triple format or delay in frame
units), and optional over argument, and then a function that
specifies the drawing. The function must not take any
argument. The entire thing shoukd be hard coded. The type 3
animations are
generally useful for labelling where  manual placement is
called for. </BLUE>
nq3(c(7,39,0), f=function() {
    text(b-5,1.5,'f(x+5)',cex=3,col='blue')
    })
<BLUE>#An example of using nq4 is given below. It is much like
nq2. </BLUE>
nq4(finvAnim, c(8,35,0),30)

<BLUE>#The generation of the animations is started by the
process function. The first 4 parameters specify the screen size
(xleft, xright, ytop, ybot) in world coordinate. Then comes the
rootname. If it is 'abc', then the generated MLT file will be
called abc.mlt, and it will use images in the abc folder, which
it will create, if needed. Old files will be overwritten without
any warning. The last argument (which defauts to 100) gives the
excess duration of the video beyond the last animation. It is
specified in frame units.</BLUE>
process(a-5,b+5,-myf(b),myf(b),'k',600)

</R>

<HEAD3>Static part</HEAD3>
<R>
<BLUE>#The following two functions  start a plot from scratch.</BLUE>
bareplot = function(...) plot(...,bty='n',xlab='',ylab='',xaxt='n',yaxt='n')


scrn = function(xlo, xhi, ylo, yhi,...) {
    bareplot(0,xlim=c(xlo,xhi),ylim=c(ylo,yhi),ty='n',...)
}

<BLUE>#I like to put all the generated images in a folder. This 
#function creates a folder, if it does not exist.</BLUE>
md = function(x) if(!dir.exists(x)) dir.create(x)

<BLUE>#Liner interpolation with a little bumping to start from 1
#instead of zero.</BLUE>
trng = function(n,ts, te, tn) 1:(1+ceiling((tn-ts)/(te-ts)*(n-1)))

ml = function(start, end, f, n=100) {
    tm = seq(start,end,len=n)
    t(sapply(tm,f))
}

spStart = function(fname) {
    png(fname,width=640,bg='transparent')
}

spEnd = function() dev.off()

draw = function(crv, ts, te,...) {
    tn = timeNow
    if(tn<=ts) return(NULL)
    if(tn>te) tn=te
    ind = trng(nrow(crv), ts, te, tn)
    lines(crv[ind,],...)
}

draw2 = function(thing, ts, te,...) {
    tn = timeNow
    if(tn<ts) return(NULL)
    if(tn>te) tn=te
    vs = thing$vs
    ve = thing$ve
    vn = vs + (tn-ts)/(te-ts)*(ve-vs)
    tmp = thing$fun(thing$ugrid, vn)
    lines(tmp$x, tmp$y,...)
}

draw3 = function(dot,...) {
    points(dot[1],dot[2],...)
}

draw4 = function(thing, ts, te) {
    tn = timeNow
    if(tn<ts) return(NULL)
    if(tn>te) tn=te
    vs = thing$vs
    ve = thing$ve
    vn = vs + (tn-ts)/(te-ts)*(ve-vs)
    tmp = thing$fun(vn)
}

frameRate = 24300000/810041

tof = function(msf) {
    frameRate * (60*msf[1] + msf[2]) + msf[3]
}
master = list()

reset = function() master < <- list()

nq = function(thing,i,dur,over=Inf,...) {
    if(length(i)==1)
        fi = lastTime + i
    else
        fi = tof(i)
    fj = fi + dur
    lastTime < <- fj
    if(length(over)>1) over = tof(over)
    master[[length(master)+1]] < <- list(start=fi, end=fj, over=over, fun=function() {draw(thing,fi,fj,...)})
}

nq2 = function(thing,i,dur,over=Inf,...) {
    if(length(i)==1)
        fi = lastTime + i
    else
        fi = tof(i)
    fj = fi + dur
    lastTime < <- fj
    if(length(over)>1) over = tof(over)
    master[[length(master)+1]] < <- list(start=fi, end=fj, over=over, fun=function() {draw2(thing,fi,fj,...)})
}

nq3 = function(i,f,over=Inf) {
    if(length(i)==1)
        fi = lastTime + i
    else
        fi = tof(i)
    lastTime < <- fi
    if(length(over)>1) over = tof(over)
    master[[length(master)+1]] < <- list(start=fi, end=fi, over=over, fun=f)
}

nq4 = function(thing, i, dur, over=Inf) {
    if(length(i)==1)
        fi = lastTime + i
    else
        fi = tof(i)
    fj = fi + dur
    lastTime < <- fj
    if(length(over)>1) over = tof(over)
    if(over==0) over = fj
    master[[length(master)+1]] < <- list(start=fi, end=fj, over=over, fun=function(){draw4(thing,fi,fj)})
}

exec = function(burst) {
   burst$fun()
}

mltStart = function(rt) {
        mfname = paste(rt,'.mlt',sep='')
cat('<mlt>
	<profile  
                 frame_rate_den="810041" frame_rate_num="24300000" 
                 height="480" width="640"/>
		<multitrack>
			<playlist>
',file=mfname)
}

mltEnd = function(rt) {
        mfname = paste(rt,'.mlt',sep='')
cat('</playlist>
		</multitrack>
</mlt>',file=mfname,append=T)
}

mlt = function(i,d,rt) {
    ifname = paste(rt,'/pic',i,'.png',sep='')
    mfname = paste(rt,'.mlt',sep='')
    cat('<producer length="',d,'">\n\t<property name="resource">',ifname,'</property>\n</producer>\n',sep='',file=mfname,append=T)
}


process = function(xs,xe,ys,ye,rt,excess=100,...) {
    imCount = 0
    md(rt)
    spStart(paste(rt,'/pic%d.png',sep=''))
    mltStart(rt)
    for(burstCounter in 1:length(master)) {
        burst = master[[burstCounter]]
        for(tn in burst[[1]]:burst[[2]]) {
            timeNow < <- tn #The two <'s should be together.
            imCount = imCount + 1
            if(timeNow < burst[[2]])
                dur = 1
            else {
                if(burstCounter < length(master)) {
                    nextBurst =  master[[burstCounter+1]]
                    dur = nextBurst[[1]] - burst[[2]]
                }
                else
                    dur = excess
            }
            mlt(imCount,dur,rt)
            scrn(xs,xe,ys,ye,...)
            for(i in 1:burstCounter) {
                if(timeNow < master[[i]]$over)
                    exec(master[[i]])
            }
        }
    }
    mltEnd(rt)
    spEnd()
}

#-----------------------------------------------

</R>
<HEAD3>A restriction</HEAD3>
We assume that the animations do not overlap (a good assumption
for an academic video). So the animations may be ordered
chronologically, and they <I>must</I> be added to the master list
in that order. If an animation specifies a value for
the <CODE>over</CODE> parameter, then the animation will not be
drawn for any time after that. However, no frame will be created
to show the disappearance of the animation. For example, consider
this situation:
<PRE>
Animation  Start End Over
-------------------------
    A        10  20  50
    B        23  30 
    C        61  70
-------------------------
</PRE>
Here images will be created only for frames 10--20, 23--30 and
60--70, but not for frame 50. 
<P/>
The no-overlap assumtion occasionally gets violated by mistake
during creating the dynamic part, and this produces weird
result. It is possible to remove this assumption by an
adaptation of the union-find algorithm. 
@}</NOTE>
