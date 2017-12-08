# [Drupal tooltips: Mobile](https://github.com/livingstoneonline/livingstoneonline/issues/107)

> state: **closed** opened by: **awisnicki** on: **2016-11-17**

This page (and others like it) have tooltips that Kathy created:

http://livingstoneonline.org/spectral-imaging/project-history

They work fine on desktop, but on mobile often popup partly off the screen with no way to move them into the screen.

### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-265862459) on: **2016-12-8**

Looks to be using the QTip jQuery library, http://qtip2.com/ might be able to sort this with some overrides.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-266033404) on: **2016-12-9**

Sounds good. Let me know if there&#x27;s anything I can do to help. Also, I thought I noted this in another ticket, but now don&#x27;t see it, but we did email about it. There are also tooltips in the XSLT display and these work fine on desktop but also don&#x27;t work on mobile. Example page:

http://livingstoneonline.org/islandora/search/%221870%20Field%20Diary%22?f%5B%5D&#x3D;genre_ms%3A%22spectral+color%22&amp;view_pid&#x3D;liv%3A000202&amp;view_page&#x3D;0

So the issue is slightly different, but still related to tooltips.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-266038365) on: **2016-12-9**

Hmm the tooltips aren&#x27;t coming up for me on the page, should it be coming up for every bit of underlined text or just specific words?

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-266040427) on: **2016-12-9**

Only the words with dotted colored underline. See screen shot. They definitely come up for me in Firefox.
![screen shot 2016-12-09 at 9 24 54](https://cloud.githubusercontent.com/assets/12518623/21054023/83c7c0de-bdf1-11e6-9419-462674293ad9.png)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-266044865) on: **2016-12-9**

There coming up now for me (user error on my part), these are a bit different as they are using the title attribute of the elements so the display is not under our control. We&#x27;d have to add the QTip Library above to get more control about how we render these as well.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-266102568) on: **2016-12-9**

OK, then let&#x27;s add these to the list. These would also be high-priority.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-267848089) on: **2016-12-18**

They should be working in both locations now.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-268399607) on: **2016-12-20**

The tooltips on pages created by Kathy work fine on mobile now: http://livingstoneonline.org/about-site/leap-2013-2017-project-history-part-i 

However, could you put a touch or left/right padding on these so when they show up they&#x27;re not completely against the edge of the screen?

The tooltips on the pages rendered by XSLT (multi-viewer and manuscript viewer) are kind of wonky. They don&#x27;t seem to be working in the multiviewer in my iPhone, while the ones on the manuscript viewer appear but are jamming the page from working, as once one appears I can no longer scroll up and down in the transcription.



---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-271379377) on: **2017-1-9**

&gt; However, could you put a touch or left/right padding on these so when they show up they&#x27;re not completely against the edge of the screen?

Unfortunately I can&#x27;t the library we&#x27;re using qtip doesn&#x27;t provide a way to do this consistently as it computes and positions the element, any overrides via CSS just lead to wonky behavior and it&#x27;s not exposed through the javascript so that we can make modifications to the algorithm easily.

&gt; The tooltips on the pages rendered by XSLT (multi-viewer and manuscript viewer) are kind of wonky. They don&#x27;t seem to be working in the multiviewer in my iPhone, while the ones on the manuscript viewer appear but are jamming the page from working, as once one appears I can no longer scroll up and down in the transcription.

Seems they were appearing but just unbelievably slowly. They also locked the ability to scroll until they displayed. Fixing this took the better part of day. It should now work just as fast on mobile as it does on desktop.

This is now deployed to production.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-272265372) on: **2017-1-12**

Tooltips on the multiviewer now work great. However, I also discovered that the date selection dropdown does not work. If you select a date and click on it, nothing happens on the page.

Tooltips on the manuscript viewer also appear to work well. However, when I open a spectral image, selection a transcription, and then try to view it, I&#x27;m not able to move in the transcription either up or down, or right to left. See attached screen shot. It&#x27;s stuck like this. More oddly, when I try to scroll up and down, a small scrollbar appears at right, but it seems to be moving the catalogue page *behind* the transcription.
![img_4835](https://cloud.githubusercontent.com/assets/12518623/21905895/afe57b46-d8ce-11e6-8e85-399011abb51e.PNG)

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-272271066) on: **2017-1-12**

Additional text from #119:

I&#x27;ve run into issue with the image viewer when looking at it on my iPhone. As I explained, sometimes when I open an image and try to move it around it &quot;skips&quot; i.e., kind of disappears off the screen and I return momentarily to the catalogue. Also, when I last use the view to look at images, select both a second page of an item or a transcription, returned an unfunctioning black screen.

Since this seems to be related to the issue I cited above, I&#x27;m putting the text here and closing #119.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-272646771) on: **2017-1-14**

Most of the issues have been fixed and pushed up, one thing remains the iphone tends to zoom after using any of the form elements (such as selecting a page) which makes the experience less enjoyable, but at least everything is functioning.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-274282306) on: **2017-1-21**

I reviewed the outstanding problems on this, and it looks like you fixed everything. So thank you very much for that. In terms of the zooming issue you cite, I&#x27;m not seeing it, but I also am not sure I know what you&#x27;re referring to. Can you explain a bit more?
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-274938326) on: **2017-1-24**

When clicking on the search input or any of the other elements the page zooms in a bit and messes with the layout.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-274940826) on: **2017-1-24**

From my research it seems I can&#x27;t disable this behaviour on the iphone, but if the font size on these items is 16px it won&#x27;t zoom in (the feature exists to see small text, and apple prevents disabling it to prevent accessibility issues). This is what it looks like with 16px font:

![16px](https://cloud.githubusercontent.com/assets/487373/22267032/140a732e-e27a-11e6-88f8-acc19313bd06.png)
 
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-274940974) on: **2017-1-24**

Search the entire site no longer fits in the search bar, but otherwise it looks like safe change.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-275003789) on: **2017-1-24**

Yes, looks good to me. Please go ahead and make it. One thing you could do is, at this size make the search bar simply say &quot;Search site&quot; and then it should fit.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-306581161) on: **2017-6-6**

Ready for review.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-306929043) on: **2017-6-7**

It appears that the work here was to put &quot;Search the entire site&quot; in the search bar on mobile when looking at the viewer/spectral viewer. That looks OK. 

However, in looking at the spectral viewer now, I see that in transcriptions words that should be underlined and have tooltips are just being rendered plain. Also, there seem to be issues with how the transcription text is displaying as a whole, as chunks of it are actually missing and most of the formatting is missing.

Additionally, on pages like the LEAP history (http://livingstonestage.lib.umd.edu/about-this-site/leap-2013-2017-project-history-part-i), where we have the tooltips that Kathy added, when such pages are viewed on mobile, if one clicks on the tootip then scrolls down past where the tooltips should appear, it persists on the screen.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-307839466) on: **2017-6-12**

&gt; It appears that the work here was to put &quot;Search the entire site&quot; in the search bar on mobile when looking at the viewer/spectral viewer. That looks OK.

Well it was all the changes to support viewing in the iPhone correctly. Note that the text here has changed according to ticket: https://github.com/livingstoneonline/livingstoneonline/issues/102

&gt; However, in looking at the spectral viewer now, I see that in transcriptions words that should be underlined and have tooltips are just being rendered plain. Also, there seem to be issues with how the transcription text is displaying as a whole, as chunks of it are actually missing and most of the formatting is missing.

This should be sorted now, looks like I had a single typo in LEAP-XSLT that only affected this particular stylesheet. 

https://github.com/livingstoneonline/LEAP-XSLT/commit/d9c4c33dc1bfd21202b7e16127bf6e8c6c4ff10f

&gt; Additionally, on pages like the LEAP history (http://livingstonestage.lib.umd.edu/about-this-site/leap-2013-2017-project-history-part-i), where we have the tooltips that Kathy added, when such pages are viewed on mobile, if one clicks on the tootip then scrolls down past where the tooltips should appear, it persists on the screen.

This appears to be the same behaviour as on the production site? Should I assume that you want tooltips to disappear if the user continues to scroll?
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-307947703) on: **2017-6-12**

OK, so the search text is sorted, so thank you for that.

Spectral transcriptions are also sorted, so thank you x 2.

For tooltips, let&#x27;s indeed have it that they disappear when the user starts to scroll again. Can we have it work like this on both regular pages and in the manuscript/spectral image viewer.

Finally, in going back above, I see the reason why you increased the Browse and Search text to 16pt font for mobile. However, I&#x27;d only like it that size for mobile. On all big sizes, please take it back to what it is on production. 16pt for iPad and Desktop is too big.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-308495099) on: **2017-6-14**

Ready for review, tooltips should now disappear when the user scrolls. I&#x27;ve changed the font back to 14px for all platforms, and have gotten around the zoom issue on iPhone by disabling the ability to zoom completely.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-308573803) on: **2017-6-14**

Tooltips work great both on regular pages and on the viewer. Re: 14px font, excellent, but please note that the search and browse dropdowns are still showing in a larger font, so these need also be changed back.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-310228552) on: **2017-6-21**

&gt; Tooltips work great both on regular pages and on the viewer. Re: 14px font, excellent, but please note that the search and browse dropdowns are still showing in a larger font, so these need also be changed back.

They seem to be 14px which is the same on production?
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-310339597) on: **2017-6-22**

Sorry, I meant something else. See attached screen shots.
![screen shot 2017-06-22 at 5 19 15](https://user-images.githubusercontent.com/12518623/27429388-819473fe-570a-11e7-83e5-6cb4b4fa9527.png)
![screen shot 2017-06-22 at 5 19 51](https://user-images.githubusercontent.com/12518623/27429389-8196a3ea-570a-11e7-9d58-47987c7c7429.png)


---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-310368244) on: **2017-6-22**

Oh ok, it should be sorted now.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-310399676) on: **2017-6-22**

Yes, looks good, but also looks like the modal function (same as the critical ed) is set up for these. That function is only needed for the TOC, not for these.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-310410057) on: **2017-6-22**

I&#x27;m not sure I understand, can you please elaborate?

On Thursday, June 22, 2017, awisnicki &lt;notifications@github.com&gt; wrote:

&gt; Yes, looks good, but also looks like the modal function (same as the
&gt; critical ed) is set up for these. That function is only needed for the TOC,
&gt; not for these.
&gt;
&gt; —
&gt; You are receiving this because you were assigned.
&gt; Reply to this email directly, view it on GitHub
&gt; &lt;https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-310399676&gt;,
&gt; or mute the thread
&gt; &lt;https://github.com/notifications/unsubscribe-auth/AAdvzdAlH6EmJW1UHmvUP7qZX_DxtPtrks5sGnwTgaJpZM4K1zEf&gt;
&gt; .
&gt;


-- 
Nigel Banks
nigel.g.banks@gmail.com

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-310441029) on: **2017-6-22**

Sure. These are both dropdowns. When I open either one, the whole screen goes gray behind them. That&#x27;s not necessary for these. We only need that function for the critical edition table of contents, not for these minor dropdowns.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/107#issuecomment-310445342) on: **2017-6-22**

ah whoops, should be sorted now.
