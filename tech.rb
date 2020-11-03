@{<NOTE>
<HEAD1>Technical details</HEAD1>
<HEAD2>Overview</HEAD2>
The creation of a video proceeds in three stages. The first is
the preprocessing, where I create the props (images and
animations that will be overlaid on top of the main video).
The shooting is done in the second stage. The third stage puts
everything together. 
<HEAD2>Preprocessing</HEAD2>
Other than the overall planning of the topic, the main effort in
this stage is devoted to creating the props: images and
animations. The animations themselves start out their lives as a
sequence of images. All the images (whether part of such a
sequnce or not) are finally produced by inkscape. Ocassionally,
I need to import supporting materials created by Art Of Illusion
or R. The steps are:
<UL>
<LI>Issue the command "<LINK to="#domakelec">domakelec</LINK> <n>" to start a folder
called <CODE>lec<n></CODE>. Henceforth I shall call it the
lecture folder. This folder contains an empty
subfolder called vid, and a template kdenlive file containing a
template title page, end page and the jingles.</LI>
<LI>For each topic to be covered in the video, I create a folder
to hold all the materials needed for it. With each such folder
is associated a filename prefix (e.g., p). Then the files
p1.svg, p2.svg, etc are the images to be displayed in that
order. The folder may contain other svg files as well, but they
will not be displayed. If need animations, then the image
sequence is also placed in this folder (but with some other
prefix).</LI>
<LI>If I plan to have some animation, the image files must be
stored in <png root><n>.png format, where <n> is a 4-digit 0-padded counter starting from 1. Then I
create the first svg file containing (linking, not embedding) the
first of these images. The svg file must be named
like <svg root><unpadded n>.svg. Then issuing the command
"<LINK to="doanim">doanim</LINK> <svg root> <png root> <nframe>" creates the other svg files. </LI>
<LI>Once all the folders are prepared, I create a file called
order.txt in the lecture folder that contains the folder names
followed by the associated prefixes like this:
<PRE>
intro,i
fd,f
lm,lm
bon,b
bon2,bb
lsd,lsd
</PRE>
Each line is a comma-separated pair, the first part being the name
of a folder and the second part its associated prefix.
 </LI>
<LI>Next I issue the command "ipall y" in the lecture folder. This
converts all the prefixed svg files in the folders to
corresponding png files and also constructs index.txt files in
each folder with the names of the prefixed png files listed
alphabetically. It is the order of the names in the index.txt
file that determined the final order in which the images will
appear during the shooting. </LI>
<LI>If we are using animation then the last frame of the
animation is included in the index.txt by hand.</LI>
<LI>If I now issue the command '<LINK to="doandro">doandro</LINK> <folder>' from the
lecture folder, I can
preview the images in the shooting order. This is just for
checking. If any image needs changing, the command "<LINK to="ipall">ipall</LINK>"
(without the "y") will create png from the updated
svg files bt not modify/create the index.txt files.</LI>
<LI>When I am satisfied, I give the command "<LINK to="dotransflip">dotransflip</LINK>". This
creates a folder called "transfer" under the lecture folder, and
creates folders named 1, 2, 3 etc storing the flipped versions
of the prefixed png images from the folders (according the order
specified by order.txt). The index.txt file in each folder is
copied, as well.</LI>
<LI>Finally, I transfer the "transfer" folder to my mobile.</LI>
</UL>
<HEAD2>Shooting</HEAD2>
For shooting I start my Overlay app, select the folder, start the
camera, do OK syncing, and start speaking. Holding the camera with
my right hand at an arm's length is particularly convenient for
advancing through the images with my index finger unseen by the
camera. Also, my left hand is free for gesturing. However, this
is somewhat tiring for the right hand, and is unsuitable for
shoots longer than 5 minutes or so. For the longer shoots I hold
the camera with my left hand, and use the right hand to both
gesture and advance. 
<P/>
Staring into the camera is not a good idea, as this makes my eyes
look abnormally squinted. If I look at the visuals, then I indeed
appear to be looking at the visuals during the video. This is an
unplanned bonus. When I am not looking at the visuals, I prefer
to look away casually with only occasional glances at the
camera. I generally walk at a leisurely pace during the shoot. 
<P/>
Everytime I move to a new topic, I change my location. I shoot
the location for a few seconds both as an establishing shot, as
well as a restful prelude. 
<P/>
This stage produces two types of output: the recorded videos and
a cue.txt file in each topic folder inside the transfer folder.

<P/>
If we need a screencast, then we use kazam. This produces a third
type of output: a screencast mp4 file.
<HEAD2>Postprocessing</HEAD2>
This stage starts with transfering the output of the shooting
stage into the laptop. All the videos are stored inside the vid
folder, and the cue.txt files are to be copied to the appropriate
topic folders. This latter job is facilitate by the docue
<lecture number> command
(to be issued from inside (a copy of) the transfer folder of my
phone. 
<P/>
Now we need to run the command <LINK to="doamelt">doamelt</LINK> from inside the lecture
folder. This will create an mlt forlder under the lecture folder,
and populate with mlt files based on the cue.txt files in each
topic folder. If there is some animation, then I need to modify
the appropriate cue.txt file by adding the triple
"<png root> <start number> <end number" to the line <I>after</I>
where the animation is to be inserted.
<P/>
Next it is time to launch kdenlive and load the template file. 
We import the vid and the mlt folder. Typically, I shoot the
videos in order (including the estbalishing shots). So I can drag
and drop all the videos on the timeline in order. Then I add the
mlt files and sync them. After that I edit off the initial and
final parts of each. Then I add the separators and trim the
estbalishing shots. Finally, I add the separator slides and
render the movie to webm format. Then outside kdenlive I apply
<LINK to="dosanxep">dosanxep</LINK> to compress the rendered video.

<HEAD1>Scripts used</HEAD1>
<HEAD2>domakelec</HEAD2>
<PRE>
if [ ! $# == 1 ]; then
  echo "Usage: domakelec <n>"
  exit -1
fi
echo "Creating lec$1"
mkdir lec$1
cd lec$1
pwd
mkdir vid
cp $c/template.kdenlive lec$1.kdenlive


</PRE>

<HEAD2>doanim</HEAD2>
<PRE>
if [  $# != 3 ]; then
  echo "Usage: doanim <svg root> <png root> <nframe>"
  echo "There should be a file <svg root>1.svg in the working directory."
  echo "It should have reference to <png root>0001.png in it."
  echo "This program will create <svg root><i>.svg for i from 1 to <nframe>."
  echo "<svg root><i>.svg is same as <svg root>1.svg except that"
  echo "the references to <png root>0001.png will be changed to "
  echo "<png root><j>.png, where j is i 0-padded up to 4 digits."
  exit 1
fi
for((i=2;i<=$3;i++)); do
   echo $i
   printf -v j "%04g" $i
   sed -r "s/${2}0001/$2$j/g" ${1}1.svg > $1$i.svg
done

</PRE>

<HEAD2>doandro</HEAD2>
<PRE>
echo $v
java -classpath ~/na/v/android AndroViewer $*
</PRE>
Here we are using the <LINK to="AndroViewer.java">AndroViewer.java</LINK> program.
<HEAD2>docue</HEAD2>
<PRE>
folder="lec$1"
echo "Folder is [$folder]"

declare -a fldextlist
mapfile fldextlist < $c/$folder/order.txt

i=0
for fldext in ${fldextlist[*]} ; do
   fld="${fldext%,*}"
   i=$((i+1))
   echo "$i --> $c/$folder/$fld/"
   cp $i/cue.txt $c/$folder/$fld/
done

</PRE>
<HEAD2>doamelt</HEAD2>
<PRE>
if [ ! -e order.txt ]; then
  echo "No order.txt here!"
  exit 1
fi


declare -a fldextlist
mapfile fldextlist < order.txt

if [ ! -e mlt ]; then
  mkdir mlt
fi
rm mlt/*.mlt

for fldext in ${fldextlist[*]} ; do
   fld="${fldext%,*}"
   java -classpath ~/na/v/android Melter $fld
   mv $fld.mlt mlt/
done
</PRE>
This script uses the <LINK to="Melter.java">Melter.java</LINK>
program.

<HEAD2>ipall</HEAD2>
<PRE>
if [ ! -e order.txt ]; then
  echo Error: No order.txt here.
  exit 1
fi

declare -a fldextlist
mapfile fldextlist < order.txt

for fldext in ${fldextlist[*]} ; do
   fld="${fldext%,*}"
   ext="${fldext#*,}"
   echo Folder=$fld , Ext=$ext
   
   cd $fld

   for f in *.svg; do
     extension="${f##*.}"
     filename="${f%.*}"
     echo -n "$f -> $filename.png : "
     if [ ! -e $filename.png ] | [ $f -nt $filename.png ]; then
        echo "Converting."
        inkscape -h 480 $f -e $filename.png
     else
        echo "Already done."
     fi
   done

   if [ $# == 1 ]; then
      echo Creating index.txt
      ls -1 $ext[0-9].png > index.txt
      more index.txt
   fi

   cd ..
done

</PRE>
<HEAD2>dosanxep</HEAD2>
<PRE>
ffmpeg -i $1.webm -vcodec libx265 -crf 28 -strict -2 $1.mp4</PRE>

<HEAD1>An R script for producing animation</HEAD1>
This script creates an animation (in the form of an image
sequence) building up some diagram. It consists of
the <CODE>process</CODE> function, and some supporting routines.

<PRE>
md = function(x) if(!dir.exists(x)) dir.create(x)

scrn = function(xlo, xhi, ylo, yhi,...) {
    bareplot(0,xlim=c(xlo,xhi),ylim=c(ylo,yhi),ty='n',...)
}

spStart = function(fname) {
    png(fname,width=640,bg='transparent')
}

spEnd = function() dev.off()


process = function(xs,xe,ys,ye,rt,ps,pe,fun, nf,...) {
    md(rt)
    spStart(paste(rt,'/pic%04d.png',sep=''))
    for(i in 1:nf) {
      scrn(xs,xe,ys,ye,...) 
      pnow = ps + (i-1)/(nf-1)*(pe-ps)
      fun(pnow)
    }
    spEnd()
}
</PRE>
<UL>
<LI>The first four parameters set up the stage
area: <M>[xs,xe]\times[ys,ye].</M></LI>
<LI> The next
parameter, <CODE>rt</CODE>, is file root. If it is <B>"abc"</B>,
then the generated image files are named
like <B>abc0001.png</B>, <B>abc0002.png</B>, etc.</LI>
<LI> The next two
parameters, <CODE>ps</CODE> and <CODE>pe</CODE>, denote the start
and end values of the parameter. Here <CODE>ps</CODE> may be
greater than <CODE>pe</CODE>.</LI>
<LI> The <CODE>fun</CODE> parameter is a
function with a single argument, the current parameter value. It
is responsible for all the drawing. It need not start a new
plot (e.g., need not invoke <CODE>plot</CODE>), but use functions
like <CODE>lines</CODE> and <CODE>points</CODE> to add to an
existing plot. However, if zooming is involved, then
the <CODE>scrn</CODE> function should be called.</LI>
<LI> Next comes the <CODE>nf</CODE> parameter, which
denotes the number of frames (i.e., the number of images in the
generated sequence). All additional parameters are sent to 
the underlying plot routine. </LI></UL>
The following code uses this script:
<PRE>
###-----------------------
genDat = function(mn,sd) {
    x = rnorm(10,sd=sd)
    x - mean(x) + mn
}

x1 = genDat(0,0.2)
x2 = genDat(1,0.2)
x3 = genDat(2,0.2)
xall = c(x1,x2,x3)

y1 = genDat(0,2)
y2 = genDat(1,2)
y3 = genDat(2,2)
yall = c(y1,y2,y3)

plot(c(x1,x2,x3),c(y1,y2,y3))
zr = rep(0,30)
clr = c(rep('red',10),rep('blue',10),rep('green',10))

f = function(t) {
    abline(h=0,lwd=3)
    points((1-t)*xall+t*yall,zr,col=clr,pch=20,cex=3)
}

process(min(yall),max(yall), -0.2, 0.2, 'test', 0,1,f,30 )
</PRE>
</NOTE>@}
