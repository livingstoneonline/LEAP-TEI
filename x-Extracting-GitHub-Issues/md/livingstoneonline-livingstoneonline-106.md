# [Dropdown: Widget](https://github.com/livingstoneonline/livingstoneonline/issues/106)

> state: **closed** opened by: **awisnicki** on: **2016-11-15**

Placeholder for the fact that we need this widget. When you&#x27;re ready, let me know and I&#x27;ll tell you what I need, although I think you have a good idea already.

Adrian

### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-272260903) on: **2017-1-12**

Can you elaborate more? Time as eroded my memory on this one.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-272269811) on: **2017-1-12**

This has to do with the Dropdown on the critical edition pages, such as this one: http://livingstoneonline.org/spectral-imaging/livingstones-1870-field-diary

Right now, all the sections tumble down in one long list. What I wanted to be able to add are (non-clickable) headings, so as to be able to group sets of sections. In the example below, &quot;Prefatory Materials&quot; and &quot;The Manuscripts&quot; are such headings:

Prefatory Materials
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Introduction to the Edition
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Edition Guide
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;The Project Team
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Acknowledgments
The Manuscripts
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Images &amp; Transcriptions of the 1870 Field Diary
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Images &amp; Transcriptions of Select 1870-1871 Texts
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Three Versions of the 1870 Field Diary

Separately -- although this may be captured in another ticket, I&#x27;ll have to check -- I had also wanted to have the dropdown (at least on desktop version) be the kind of dropdown through which one scrolls (as on the Catalogue page) rather than the kind of tumbledown/show all dropdown as now.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-306583792) on: **2017-6-6**

To be discussed on Thursday.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-306937419) on: **2017-6-7**

Ok, leaving open as reminder for now.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-307234912) on: **2017-6-8**

After our talk today, it sounds like there&#x27;s a mod you need to make so continue to leave open.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-307899987) on: **2017-6-12**

It&#x27;s ready for review, just create links as you normally would for items in the table of contents, but use the value **&lt;nolink&gt;** for headings.

![screen shot 2017-06-12 at 20 42 03](https://user-images.githubusercontent.com/487373/27051996-1f276e1c-4fb0-11e7-9058-319895ca21de.png)

![screen shot 2017-06-12 at 20 42 54](https://user-images.githubusercontent.com/487373/27051995-1f241a82-4fb0-11e7-9e6e-96af9caebaf8.png)

![screen shot 2017-06-12 at 20 43 05](https://user-images.githubusercontent.com/487373/27051994-1f1eb66e-4fb0-11e7-8125-cebf947c4577.png)

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-307950277) on: **2017-6-12**

This looks good and works beautifully. Thank you!

In returning to the ticket above, I see there&#x27;s also a second part:

&quot;Separately -- although this may be captured in another ticket, I&#x27;ll have to check -- I had also wanted to have the dropdown (at least on desktop version) be the kind of dropdown through which one scrolls (as on the Catalogue page) rather than the kind of tumbledown/show all dropdown as now.&quot;

We discussed this (way back when) and you came up with the solution that the dropdown when opened, rather than push down the text below it, would appear *over* that text, so that still needs to be implemented.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-308128149) on: **2017-6-13**

Ready for review.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-308902263) on: **2017-6-15**

This works great, but I have one question. Can we have it so that when the dropdown TOC is open, everything in the background goes slightly gray/dim. Take a look at this page and click on the book at left: https://www.amazon.com/Hamlet-Folger-Library-Shakespeare-William/dp/074347712X/ref&#x3D;sr_1_1?ie&#x3D;UTF8&amp;qid&#x3D;1497573285&amp;sr&#x3D;8-1&amp;keywords&#x3D;hamlet

You&#x27;ll see that when the pop up appears, the material in the background/below it dims. I think this kind of thing already happens in our MS viewer, it&#x27;s just hard to see because there&#x27;s so little margin around it there.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-310232092) on: **2017-6-21**

It&#x27;s up now let me know what you think. 
http://livingstonestage.lib.umd.edu/spectral-imaging/livingstones-1870-field-diary
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-310340257) on: **2017-6-22**

It looks to be stuck on desktop, wherein when I open it I can scroll down to any text that appears below the screen.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-310344035) on: **2017-6-22**

That&#x27;s on purpose, it behaves the same as the amazon link, and other [modal windows](https://en.wikipedia.org/wiki/Modal_window).
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-310349619) on: **2017-6-22**

So how does one see the rest of the TOC? I can&#x27;t figure out a way to see the rest of the content.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-310357965) on: **2017-6-22**

Ah my bad, my screen is huge I didn&#x27;t anticipate it extending beyond the
screen. I&#x27;ll fix it. I misunderstood and thought you wished to have scroll
through the page not the table of contents.

On Thu, Jun 22, 2017 at 12:10 PM, awisnicki &lt;notifications@github.com&gt;
wrote:

&gt; So how does one see the rest of the TOC? I can&#x27;t figure out a way to see
&gt; the rest of the content.
&gt;
&gt; —
&gt; You are receiving this because you were assigned.
&gt; Reply to this email directly, view it on GitHub
&gt; &lt;https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-310349619&gt;,
&gt; or mute the thread
&gt; &lt;https://github.com/notifications/unsubscribe-auth/AAdvzfcxj_ACITzi_rnA41QWTStQmwnvks5sGku2gaJpZM4KzF_v&gt;
&gt; .
&gt;



-- 
Nigel Banks
nigel.g.banks@gmail.com

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-310372805) on: **2017-6-22**

Should be sorted now, let me know what you think.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-311055087) on: **2017-6-26**

Yes, that&#x27;s fixed. Thank you very much. Could we make a few more tweaks to it as follows:

1. When it&#x27;s fully open could you put a thin black border around the whole dropdown? I think that would serve as a good boundary marker between the dropdown and the greyed-out text beyond. The gray border when closed can be left as is. The thickness of the black border when fully open should be the same as the thickness of the gray border when the dropdown is closed.

2. Can you make the arrow at right into the kind standard triangle one sees in such dropdowns?

3. A few people have pointed out that the dropdown can be hard to notice when closed. Could you make the text the following color (#428bca) only when closed. This is the same color that&#x27;s used for hyperlinks on the site.  When the dropdown is fully open all the text should be black.

4. When the dropdown is closed, the white space between the text and the arrows is not clickable. Could we make it instead that clicking anywhere on the dropdown (when it is closed) opens it?


---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-311058103) on: **2017-6-26**

I also notice that on mobile links from the dropdown automatically open a new window. This should not be happening. Links should open in the same window unless, in the topmenu admin section, specifically marked to open in a new window.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-311066336) on: **2017-6-26**

Finally, on mobile, if text wraps to a second line in the dropdown, I think we should indent it like the first line, as I don&#x27;t think it looks good the way it&#x27;s rendering now.
![img_6498](https://user-images.githubusercontent.com/12518623/27542556-302507cc-5a4d-11e7-9160-f6b68abc7d25.PNG)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-311640762) on: **2017-6-28**

&gt; 1. When it&#x27;s fully open could you put a thin black border around the whole dropdown? I think that would serve as a good boundary marker between the dropdown and the greyed-out text beyond. The gray border when closed can be left as is. The thickness of the black border when fully open should be the same as the thickness of the gray border when the dropdown is closed.

Sure thing.

&gt; 2. Can you make the arrow at right into the kind standard triangle one sees in such dropdowns?

Do you mean using a caret instead of chevron? Like the:

![screen shot 2017-06-28 at 12 57 12](https://user-images.githubusercontent.com/487373/27636019-62888346-5c01-11e7-9c70-c825fe6e9bfe.png)

I assume this should apply to the mobile menu dropdown as well? Should it still turn from left to right when opened or closed, or should behave like the &quot;Browse Collection&quot; dropdown works?

&gt; 3. A few people have pointed out that the dropdown can be hard to notice when closed. Could you make the text the following color (#428bca) only when closed. This is the same color that&#x27;s used for hyperlinks on the site. When the dropdown is fully open all the text should be black.

Should this apply to the mobile menu as well?

&gt; 4. When the dropdown is closed, the white space between the text and the arrows is not clickable. Could we make it instead that clicking anywhere on the dropdown (when it is closed) opens it?

Sure thing, I&#x27;m applying this to the mobile menu as well.

&gt; I also notice that on mobile links from the dropdown automatically open a new window. This should not be happening. Links should open in the same window unless, in the topmenu admin section, specifically marked to open in a new window.

Ok, this will have the same behaviour on desktop as well.

&gt; Finally, on mobile, if text wraps to a second line in the dropdown, I think we should indent it like the first line, as I don&#x27;t think it looks good the way it&#x27;s rendering now.

Ok.

So just the questions for 2 and 3, the others are up on stage. 

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-311657698) on: **2017-6-28**

Thanks for all of this! Confirming that: border looks good (p.1); fully-clickable space looks good (p.4); text wrapping (p.6) looks good. 

Links in dropdown (p.5) also looks good, although note that you&#x27;ve not brought down some of the specific configurations for links from prod -- some links are configured to open in a new window (on prod), but that formatting has been lost on stage. See, for instance, &quot;Images &amp; Transcriptions of the 1870 Field Diary&quot; in the 1870 FD dropdown. I just changed this to target&#x3D;&quot;_blank&quot; to match prod, but it wasn&#x27;t carried over automatically. In any case, this is minor and I can easily reimplement when the time comes, but just wanted to make you aware of this issue.

Re p.2, yes using same symbol as on Browse Collection and, yes, it&#x27;d be great to have it point right when closed and point down when open. Could we also have the right/down function apply to Browse Collection? Finally, yes, to be consistent we should have on the mobile dropdown menu also.

Re p.3, for now let&#x27;s just try it on the desktop menu. For mobile stick with black for now please.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-318835227) on: **2017-7-29**

Just drawing attention to this ticket.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-320025075) on: **2017-8-3**

&gt; Links in dropdown (p.5) also looks good, although note that you&#x27;ve not brought down some of the specific configurations for links from prod -- some links are configured to open in a new window (on prod), but that formatting has been lost on stage. See, for instance, &quot;Images &amp; Transcriptions of the 1870 Field Diary&quot; in the 1870 FD dropdown. I just changed this to target&#x3D;&quot;_blank&quot; to match prod, but it wasn&#x27;t carried over automatically. In any case, this is minor and I can easily reimplement when the time comes, but just wanted to make you aware of this issue.

This needs to be done manually, and will be on hold until after the migration. I&#x27;ve added a note to the appropriate ticket.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-320025126) on: **2017-8-3**

Other issues should be sorted.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/106#issuecomment-320074056) on: **2017-8-3**

OK, everything that was to be resolved here looks resolved (except for the one point you raised in the other ticket). So I&#x27;ll close this one. Thanks very much!
