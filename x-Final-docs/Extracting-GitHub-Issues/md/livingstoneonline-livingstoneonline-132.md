# [Discussion on hover used in the grid pages.](https://github.com/livingstoneonline/livingstoneonline/issues/132)

> state: **closed** opened by: **nigelgbanks** on: **2017-5-11**

In working on the grid pages it came to my attention we have no reliable to detect if a device supports hovering / touch or not. Currently we&#x27;re doing this based on resolution of the screen, but that leads to odd edge cases in which the user might be using a large iPad (which has a screen resolution higher than some laptops), currently in this case the text on the grid page is not visible to them. 

Also it occurred to me that the users can&#x27;t see the categories of pages until they individually mouse over each one, which doesn&#x27;t seem that user friendly as it obstructs useful information for navigating the site. 

I suggest we drop the hover functionality and display text at all times, what do you think?

&lt;img width&#x3D;&quot;1007&quot; alt&#x3D;&quot;hover&quot; src&#x3D;&quot;https://cloud.githubusercontent.com/assets/487373/25948286/b3cf8452-364a-11e7-936f-4b7ab3ebff19.png&quot;&gt;


### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/132#issuecomment-300872853) on: **2017-5-11**

I&#x27;ve just emailed the individual (Angela Aliff, you haven&#x27;t met her) who led site design, so hope to discuss this with her soon. This is only an issue on desktop as, once the site goes to mobile variants, the titles are display as an overlay, which may be a good solution for desktop as well. The one issue is that the subtitles (which are useful) are lost in how it&#x27;s currently set up.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/132#issuecomment-300874563) on: **2017-5-11**

How about something like this?

Large:
&lt;img width&#x3D;&quot;1188&quot; alt&#x3D;&quot;screen shot 2017-05-11 at 19 17 01&quot; src&#x3D;&quot;https://cloud.githubusercontent.com/assets/487373/25964970/81059cb2-367e-11e7-959f-d6d57ff9c234.png&quot;&gt;

Medium:
&lt;img width&#x3D;&quot;976&quot; alt&#x3D;&quot;screen shot 2017-05-11 at 19 18 27&quot; src&#x3D;&quot;https://cloud.githubusercontent.com/assets/487373/25965039/b157d416-367e-11e7-98ba-b7056b059e52.png&quot;&gt;

Small:
&lt;img width&#x3D;&quot;304&quot; alt&#x3D;&quot;screen shot 2017-05-11 at 19 18 44&quot; src&#x3D;&quot;https://cloud.githubusercontent.com/assets/487373/25965042/b458be46-367e-11e7-85cd-8f3d8ca48890.png&quot;&gt;

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/132#issuecomment-300950273) on: **2017-5-11**

The issue with this is we lose all the color from the images. The 1/4 overlay option may be the best. I&#x27;ll be back in touch about this soon.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/132#issuecomment-302956953) on: **2017-5-21**

We&#x27;ve looked into this and would like to stay with the set up as is since it took quite a bit of work to arrive at this. Our designer will research more into this going forward (she actually sent me quite a few things on which she&#x27;ll be following up), but this is also something we could revisit down the road as part of a more elaborate redesign through another grant, the one we&#x27;re currently developing and will discuss with you later this week. 

Also, our designer and I take your point about the edge cases, but this actually translates to only a small percentage of our users (see screen shot). Only about 6% of our users use tablet and only some percentage of those would be edge cases, maybe 1% or so. So it would be nice to address all scenarios, but in this case it has rather complex implications for the overall integrated design. 

In terms of the hovering, would it be possible to alt text to the grid tiles that would have title: subtitle?

![screen shot 2017-05-21 at 20 24 11](https://cloud.githubusercontent.com/assets/12518623/26286689/82f8624c-3e63-11e7-843f-0132b171b94c.png)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/132#issuecomment-305543391) on: **2017-6-1**

How about if we always show it below and then do a more detailed display when hovered? This way the image isn&#x27;t covered, and the link text is visible. People really shouldn&#x27;t have to hover over every image in a page to see what links are available.

![grid](https://cloud.githubusercontent.com/assets/487373/26689393/6a8cfbf4-46ed-11e7-951c-057484308557.png)

&gt; In terms of the hovering, would it be possible to alt text to the grid tiles that would have title: subtitle?

No real point to adding alt text when the text is already displayed on hover?

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/132#issuecomment-307189138) on: **2017-6-8**

Reverted to the old behaviour.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/132#issuecomment-307236672) on: **2017-6-8**

Almost. See screen shot. At this size, the tiles simply get too big. Could you check against prod and use the same sizes as there?
![screen shot 2017-06-08 at 16 46 02](https://user-images.githubusercontent.com/12518623/26952208-0af2d448-4c6a-11e7-8c40-e46084cd7d3d.png)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/132#issuecomment-308068990) on: **2017-6-13**

Should be sorted out now (was a bug in Firefox according to the css spec).
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/132#issuecomment-308128963) on: **2017-6-13**

You&#x27;ve restored the spacing between tiles (that was another issue that I hadn&#x27;t gotten around to ticketing yet). But this issue is still persisting. Here&#x27;s a screen shot of prod at, relatively speaking, the same screen width. Note that the tiles here are three across and smaller, whereas above they&#x27;re two across and much larger.
![screen shot 2017-06-13 at 9 10 56](https://user-images.githubusercontent.com/12518623/27086607-4de3b5a4-5018-11e7-918d-8ab1492739d0.png)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/132#issuecomment-308142434) on: **2017-6-13**

Ready for review.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/132#issuecomment-308168777) on: **2017-6-13**

And looks good on this one. I think this takes care of it. Thank you.
