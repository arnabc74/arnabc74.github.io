@{<NOTE>
<HEAD1>Discussion of question 3</HEAD1>
Here is the question:
<CIMG web="semq3.png"></CIMG>
All the data sets were similar, and consisted of random samples
of equal numbers of
webm and mp4 video files. 
<HEAD2>What I tried to test</HEAD2>
I knew that prediction of duration based on file size was not
destined to have high success. So it would require you to
explore. My chief aim was to see how well and meaningfully your
explore a real life data set using all the tools you have at your disposal: common
sense, plots, diagnostics, mathematics. 

<HEAD2>An 'ideal' solution</HEAD2>
There isn't any. Not just for this problem, but for most (if not
all) real life data analysis problem. But here are certain steps
I would have taken:
<UL>
<LI>Common sense: name and date just should not play any role. I
would have confirmed that first by plotting against
them. Similarly, I would plot duration against size and use
colour to mark the extension. This is better than making separate scatter plots for the two
extensions.</LI>
<LI>The plot shows high concentration for small values and large
scatter for large values. Naturally, videos with longer duration
show more variation. This would lead me to think in terms of
relative error, instead of additive error. But the linear model
theory we now is for additive error only. So the idea of log
transform automatically comes to mind to reduce relative errors
to additive errors. I would play for some time with log
transformed scatter plots (log y vs x, y vs log x, log y vd log
x) colour coded with extensions.</LI>
<LI>I know that the extension determines how the video is
encoded, and thus controls the relation between duration and
size. So it is quite possible that for different extensions the
relations between duration and size are different. In other
words, I would be surprised if there is no interaction between
size and extension. But still I would desist from fitting a
model. I am still in the exploratory phase.</LI>
<LI>So now I have two ideas buzzing in my head: (1) the points near the
origin seem to behave differently from the points farther away,
and (2) how the extension influences the size-duration relation.
A look at the data set shows that there are many cases where the
same video has been encoded in the two formats. That would
immediately suggest a way to explore the second idea. I shall
take the subset of all videos provided in both the formats,
and consider them as paired data, and make a scatterplot of
sizes. (Thus, the names do provide some info after all!)

For (1) I already had the idea of log transform. Another idea is
to split the data into two parts: points cloe to origin and the
rest. Can I see any pattern in them separately.
</LI>

<LI>Now I am going to exit the exploratory phase, and start
fitting models. Of course I would leave out name and date in
stage one, and think about them to explain wierd behaviours
later. My mind would revolt against fitting a linear model to
the raw data (I can just see from the colour coded raw scatterplot,
that there is no good relation, the computer cannot provide a
good fit by magic!). So I shall proceed with log data (log x log
y, whatever I chose from my exploratory analysis). And
definitely I shall keep the interaction term initially, and make
it a point to test significance of that term once I settle upon
a model. Some amount of experimentation would follow.</LI>
<LI>Then I shall also try out the idea of fitting different
models to the near and far points.</LI>

<LI>I already had an idea about the effect of extension on size
from the paired subset data. I shall try to use that to bring
everything to a "common denominator" (e.g., what would the
duration of an mp4 have been, had it been encoded by webm). Then
I would try to plot and fit linear model of that converted
data.</LI>

<LI>Should I use random effects? The factor
inputs are extension, name, date. I see from domain knowledge
that name and date cannot determine duration (Surely changing
the name of a video from "RomeoAndJuliet" to "LinerModelLecture"
is not going to change the duration!). It is true that there are
other extensions also, but there is no way I can draw inference
about them based on webm and mp4. So the report of this analysis
is going to be useful only for other videos using only these two particular extensions.  </LI>
<LI>Once I settle down on a few models that look decent, I shall
compare them </LI>

</UL>

<HEAD2>What many of you did wrong</HEAD2>
<UL>
<LI>Using name and date as explanatory variables. Never lose hold
of common sense! Even if you find them significant by chance,
how are you going to interpret your model? A model without
interpretation is worse than no model! </LI>
<LI>Random effect does not mean an input without
interpretation. It is an effect which has more levels than what
are present in the data, and you believe that the levels present
are representative of all the levels.</LI>
<LI>For a low dimensional data set never expect a fitted model
to provide better accuracy than a plot. A fitted model may be
considered more objective, but if there is no obvious relation
from the plot, the model cannot find one magically for you! Many
of you made a plot, and in spite of its uninviting nature
started to fit a model.</LI>
<LI>Many of fitted a model like duration~size+extn. This means
that extension only adds a constant burden in the file (like a
header section), the rest of the file remaining the same in
size. Does that sound plausible? Shouldn't there be some
interaction?</LI>
<LI>Quite a few of you said: "the residuals are scattered around
0 randomly. So my model is a good fit." The random scatter is a
weak necessary condition only, NOT a sufficient one. Consider
the magnitude of the residuals as well!</LI>
<LI>Also, extn is a factor. So writing the extn term as
beta*extn does not make much sense (even if you have coded extn
as 0 and 1).</LI>
</UL>

</NOTE>@}
