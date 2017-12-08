# [MS Viewer: Transcription Text Rendering](https://github.com/livingstoneonline/livingstoneonline/issues/30)

> state: **closed** opened by: **awisnicki** on: **2016-5-9**

1. Text specs
   font: Source Sans Pro, sans-serif
   font-size: .9 em
2. Please don&#x27;t show the title at the top of the transcription since this is available in Item Details.
3. The text should not wrap so soon. The left margin could be decreased slightly and we could set a right margin so that it does not go off the screen on the right, then have a slider (as you suggested) when the text of a given item is longer and would normally go off the screen.


### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/30#issuecomment-222311115) on: **2016-5-28**

#2 is resolved by the changes I&#x27;ve made to the XSLT. For #3, I set the CSS to 100% so that takes care of the wrapping to a degree, but we still also need the slider.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/30#issuecomment-222797396) on: **2016-5-31**

To update this ticket:
1. Text specs font: Source Sans Pro, sans-serif font-size: .9 em (Note: the main text on the Item Details side should match these specs. Right now it looks like it&#x27;s 1 em there, so please make sure both sides are the same size.)
2. Slider for text that is too wide (rather than wrapping it)
3. The last page of the transcription text is now being cut off prematurely. See attached screen shot.
![screen shot 2016-05-31 at 22 22 51](https://cloud.githubusercontent.com/assets/12518623/15697275/459884ba-277e-11e6-924c-0bf166b1f490.png)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/30#issuecomment-223013569) on: **2016-6-1**

&gt; 1. Text specs font: Source Sans Pro, sans-serif font-size: .9 em (Note: the main text on the Item Details side should match these specs. Right now it looks like it&#x27;s 1 em there, so please make sure both sides are the same size.)

Set item details to use &#x60;0.9em&#x60; font (&#x60;em&#x60; is a relative size, derived from it&#x27;s parent font size. Which in this case is &#x60;16px&#x60;, the default for much of the site).

As for the font choices in the transcription pane you have full control to set them how ever you like, currently you have it set to:

&#x60;font-family:calibri, arial, helvetica, sans-serif;&#x60; [here](https://github.com/livingstoneonline/LEAP-XSLT/blob/c2d3a823aadde84f183df72b64d784c509de67f9/style.css#L8)

&gt; 1. Slider for text that is too wide (rather than wrapping it)

I&#x27;m not sure what you mean can you please rephrase it?

&gt; 1. The last page of the transcription text is now being cut off prematurely. See attached screen shot.

Should be sorted now.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/30#issuecomment-223074420) on: **2016-6-1**

1. Looks good. Done.
2. What I meant is that when the text on a given line is wider that the container for the transcription side, the text wraps. What I&#x27;d prefer is that the text didn&#x27;t wrap and that when it was wider you got a slider at the bottom in order to scroll over. The slide would work and look (little black ball on a gray line) exactly the same as the vertical slide you already have. Currently, I can set the text to &quot;white-space: nowrap&quot; (do you want me to do that in the updated CSS?), but when I do that I don&#x27;t get a horizontal slider. We would want a little padding on the right side so that there was a little white space between the edge of the visible text and the edge of the container.
3. Looks good. Done.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/30#issuecomment-223140282) on: **2016-6-1**

K I&#x27;ve added the nowrap along with some code to get the horizontal scroll bar to show up (only if the text is too wide to fit).

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/30#issuecomment-223141697) on: **2016-6-1**

OK, this doesn&#x27;t exactly what is needed, so that&#x27;s great, but I see two issues:
1. When I open this in Firefox, there is a short delay with out the slider, then the slider appears and the text moves up and to the left so that it is partially out of the screen on the left side. See this letter: http://livingstonestage.lib.umd.edu/islandora/search?view_pid&#x3D;liv%3A000455&amp;view_page&#x3D;0
2. It&#x27;s not quite wide enough to the right. In Firefox at least the longest line (line 20 on page 3) is still getting slightly clipped at right.

Also, a question: is it me or does the side to side slider seem to move _slower_ than the vertical one?

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/30#issuecomment-223150798) on: **2016-6-1**

&gt; When I open this in Firefox, there is a short delay with out the slider, then the slider appears and the text moves up and to the left so that it is partially out of the screen on the left side. See this letter: http://livingstonestage.lib.umd.edu/islandora/search?view_pid&#x3D;liv%3A000455&amp;view_page&#x3D;0

This should be sorted now.

&gt; It&#x27;s not quite wide enough to the right. In Firefox at least the longest line (line 20 on page 3) is still getting slightly clipped at right.

This is due to the use of &#x60;margin-left: 9%;&#x60; used in the &#x60;p&#x60; tags in [style.css](https://github.com/livingstoneonline/LEAP-XSLT/blob/c2d3a823aadde84f183df72b64d784c509de67f9/style.css), basically margin is not being interpreted as part of the width by the scroll bar, I&#x27;m looking into a work around, but haven&#x27;t found an acceptable solution yet.

&gt; Also, a question: is it me or does the side to side slider seem to move slower than the vertical one? 

At least prospectively (the have the same settings). Likely because the horizontal scroll has much less distance to go. Since both the bars content distance are mapped onto a similarly lengthen scroll bar so each unit of horizontal scroll accounts for less movement than the vertical bar in which a single unit of scrolling accounts for a much greater distance.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/30#issuecomment-223155148) on: **2016-6-1**

OK, in terms of the first point, doesn&#x27;t move to the left anymore on opening, but still does move up, basically to hide the toggle button. This button, of course, will disappear when I provide the new XSLT. But it also seems to be that if I put enough padding at the top of the transcription in the CSS (after removing this button) then it would by default open with the first 0001 just below the top strip. Does that make sense? If so, how tall is the top strip? I believe it is 55px. Is that correct? If so, I can put that much padding plus a little more. Should I do that? We could also play around with this when we meet.

In terms of the second point, I could change the margin to 0% if necessary. The only thing to note in this respect is that the small gray line numbers are -4em (or something like that).

In terms of the third point, I guess that is that then unless the horizontal one can be sped up. If not, let&#x27;s not worry about that further.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/30#issuecomment-223255719) on: **2016-6-2**

&gt; OK, in terms of the first point, doesn&#x27;t move to the left anymore on opening, but still does move up, basically to hide the toggle button. This button, of course, will disappear when I provide the new XSLT. But it also seems to be that if I put enough padding at the top of the transcription in the CSS (after removing this button) then it would by default open with the first 0001 just below the top strip. Does that make sense? If so, how tall is the top strip? I believe it is 55px. Is that correct? If so, I can put that much padding plus a little more. Should I do that? We could also play around with this when we meet.

It auto scrolls to the selected page when opening, as the user can open the transcription panel on any page, this is expected behaviour.

For example when the viewer is on the 3rd page:
http://livingstonestage.lib.umd.edu/islandora/search?view_pid&#x3D;liv%3A000455&amp;view_page&#x3D;2 

If you want the image title only to have no top margin (so no animated movement on open) you could do something like this with the css:

&#x60;&#x60;&#x60;
.pb-title:first-of-type {
  margin-top: 0;
}
&#x60;&#x60;&#x60;

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/30#issuecomment-223259907) on: **2016-6-2**

&gt; In terms of the third point, I guess that is that then unless the horizontal one can be sped up. If not, let&#x27;s not worry about that further.

Doesn&#x27;t seem to be a way to change the speed independently per plane.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/30#issuecomment-223275168) on: **2016-6-2**

OK, re: first point, I&#x27;ve updated the CSS to include the first of type text. We can test it out to see how it goes. Re: third point: OK.

So that leaves only the second point here. One thing that occurs to me is that everything currently have a default margin on the left, but we could also put a small default margin (or padding?) on the right. Would that help?

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/30#issuecomment-223277140) on: **2016-6-2**

A right side margin won&#x27;t affect the layout in this case. I&#x27;ve spent a few
hours looking into a solution I think we&#x27;ll have to discard this scrollbar
tool and opt for something else, I&#x27;ll let you know when I sort it out.

On Thu, Jun 2, 2016 at 1:21 PM, awisnicki notifications@github.com wrote:

&gt; OK, re: first point, I&#x27;ve updated the CSS to include the first of type
&gt; text. We can test it out to see how it goes. Re: third point: OK.
&gt; 
&gt; So that leaves only the second point here. One thing that occurs to me is
&gt; that everything currently have a default margin on the left, but we could
&gt; also put a small default margin (or padding?) on the right. Would that help?
&gt; 
&gt; —
&gt; You are receiving this because you were assigned.
&gt; Reply to this email directly, view it on GitHub
&gt; https://github.com/livingstoneonline/livingstoneonline/issues/30#issuecomment-223275168,
&gt; or mute the thread
&gt; https://github.com/notifications/unsubscribe/AAdvzSv9EnW0tC2fOvKdnypA1JVXR-mpks5qHsrCgaJpZM4IanoE
&gt; .

## 

Nigel Banks
nigel.g.banks@gmail.com

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/30#issuecomment-223282282) on: **2016-6-2**

 blockquote, div.yahoo_quoted { margin-left: 0 !important; border-left:1px #715FFA solid !important; padding-left:1ex !important; background-color:white !important; }  Sorry to hear that. That&#x27;s frustrating. Ok, let me suggest that the easiest thing is simply to cut the line numbers and make left margin 0. It&#x27;s not a huge loss and I could also try putting the numbers on the right. Will that do it?

On Thursday, June 2, 2016, 07:31, Nigel Banks notifications@github.com wrote:

A right side margin won&#x27;t affect the layout in this case. I&#x27;ve spent a few
hours looking into a solution I think we&#x27;ll have to discard this scrollbar
tool and opt for something else, I&#x27;ll let you know when I sort it out.

On Thu, Jun 2, 2016 at 1:21 PM, awisnicki notifications@github.com wrote:

&gt; OK, re: first point, I&#x27;ve updated the CSS to include the first of type
&gt; text. We can test it out to see how it goes. Re: third point: OK.
&gt; 
&gt; So that leaves only the second point here. One thing that occurs to me is
&gt; that everything currently have a default margin on the left, but we could
&gt; also put a small default margin (or padding?) on the right. Would that help?
&gt; 
&gt; —
&gt; You are receiving this because you were assigned.
&gt; Reply to this email directly, view it on GitHub
&gt; https://github.com/livingstoneonline/livingstoneonline/issues/30#issuecomment-223275168,
&gt; or mute the thread
&gt; https://github.com/notifications/unsubscribe/AAdvzSv9EnW0tC2fOvKdnypA1JVXR-mpks5qHsrCgaJpZM4IanoE
&gt; .

## 

Nigel Banks
nigel.g.banks@gmail.com

—
You are receiving this because you were assigned.
Reply to this email directly, view it on GitHub, or mute the thread.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/30#issuecomment-223979794) on: **2016-6-6**

I was able to get it working with a combination of some css and javascript with line endings, also I&#x27;ve updated stage with the latest style.css and transcription.xsl in the LEAP repo.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/30#issuecomment-223986853) on: **2016-6-6**

This looks good. Thank you. Before we close this ticket, two questions:
1. On the left, my life numbers are directly beside the edge of the window. If I bring them closer to the text (which I&#x27;m planning to do after seeing how the newest css looks on the site) will they still remain beside the edge of the window? If so, could you put just a little padding to the left (a few pixels)?
2. On the right, the longest text is also up against the edge of the window. Can you put a little padding on the right?

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/30#issuecomment-223992203) on: **2016-6-6**

&gt; On the left, my life numbers are directly beside the edge of the window. If I bring them closer to the text (which I&#x27;m planning to do after seeing how the newest css looks on the site) will they still remain beside the edge of the window? If so, could you put just a little padding to the left (a few pixels)?

Setting the margin or padding on the left can be done on a parent element of the content, for example this can be handled in the style.css like so:

&#x60;&#x60;&#x60; css
.TEI {
    padding-left: 1em;
}
&#x60;&#x60;&#x60;

&gt; On the right, the longest text is also up against the edge of the window. Can you put a little padding on the right?

To get padding on the right you&#x27;ll have to set it on the actual &#x60;p&#x60; tags, otherwise it&#x27;s not like to have any affect. For example this can be handled in the style.css like so:

&#x60;&#x60;&#x60; css
.p {
   margin-right: 1em;
}
&#x60;&#x60;&#x60;

Since these changes should be made to **style.css** I&#x27;ll leave them to you, so we don&#x27;t end up losing changes when you make other changes to **style.css**.

