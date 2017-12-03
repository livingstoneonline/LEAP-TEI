# [Sticky header](https://github.com/livingstoneonline/livingstoneonline/issues/131)

> state: **open** opened by: **awisnicki** on: **2017-4-25**

As noted, we&#x27;d like to put our normal header in the level 3 sticky header space as well. When this shrinks to mobile, the logo should lost the second line and move into the area on the left, per the screen shot below.
![screen shot 2017-04-25 at 14 01 39](https://cloud.githubusercontent.com/assets/12518623/25403721/e571511e-29c2-11e7-86e0-1642b4e688fb.png)


### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/131#issuecomment-297138366) on: **2017-4-25**

See issue #10 
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/131#issuecomment-310227782) on: **2017-6-21**

I&#x27;ve been working on this a bit and gone though several iterations as to what looks best at every resolution, does this work for you?

Phones (320px - 768px)
![extra small](https://user-images.githubusercontent.com/487373/27410046-c2f511ba-56dc-11e7-8aaf-58558c6db472.png)

Tablets (769px - 991px)
![small](https://user-images.githubusercontent.com/487373/27410049-c2fccc20-56dc-11e7-9f29-fc8dee6016fe.png)

Tablets and Small Desktop (992px - 1199px)
![medium](https://user-images.githubusercontent.com/487373/27410047-c2f8c7ce-56dc-11e7-8c76-e126bf0fd0a4.png)

Desktop (1200px and greater)
![large](https://user-images.githubusercontent.com/487373/27410048-c2f906ee-56dc-11e7-9ace-f33500696c8c.png)
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/131#issuecomment-310339218) on: **2017-6-22**

Yes, this looks good to me. 

On mobile, the search bar could probably be a bit wider, maybe 10-15%.

On tablets, I would give it just a little padding on the left and right so text/tiles are not right up against the edge of the screen, but otherwise all good. I could note any additional tweaking when I do a full review of the desktop theme.

Also, it looks like this isn&#x27;t on stage yet. Is that correct?
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/131#issuecomment-310343597) on: **2017-6-22**

Nope not on stage yet, still tweaking.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/131#issuecomment-310346677) on: **2017-6-22**

See attached. This is how the sticky header looks on my mobile. Here the search box could be widened a bit.
![img_6407](https://user-images.githubusercontent.com/12518623/27430754-67567794-570f-11e7-86ed-a67044902dc1.PNG)

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/131#issuecomment-318796164) on: **2017-7-28**

Just a note about this one that it looks like you&#x27;ve not yet pushed up the new sticky header for me to review. We should sort this before pushing to prod. From the screen shots you&#x27;ve provided, it looks close to done.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/131#issuecomment-320026628) on: **2017-8-3**

Other changes have messed with the work I&#x27;ve done thus far, I think we should wait on this till after the move to production.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/131#issuecomment-320077487) on: **2017-8-3**

OK, no problem. Since this will go on production for a bit, however, could you adjust the text in the center of the sticky header to match the colored nav tabs on levels 2/3? See screen shot.
![screen shot 2017-08-03 at 15 12 18](https://user-images.githubusercontent.com/12518623/28941679-5626dc32-785e-11e7-81b0-5ade65134f92.png)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/131#issuecomment-320241023) on: **2017-8-4**

K I&#x27;ve changed the font and size to match closer to the other uses of nav tabs for now.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/131#issuecomment-320391974) on: **2017-8-4**

OK, great. Thanks for doing this!
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/131#issuecomment-344095539) on: **2017-11-13**

Note that there is a small theming issue with the search bar on the current sticky header. See screen shot and note how the text is running out. This looks to be confined to the grid pages, as it&#x27;s not an issue on the section pages. We can probably ignore this since you&#x27;ll be replacing the sticky header per the work in this ticket, but here&#x27;s a note of this issue in case it&#x27;s of use.
![screen shot 2017-11-13 at 14 02 36](https://user-images.githubusercontent.com/12518623/32755035-01ff4b4a-c899-11e7-8696-c0420dfc4b90.png)

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/131#issuecomment-346942358) on: **2017-11-25**

Note that on this ticket, the new sticky header still needs to be implemented. See the comment above that begins: &quot;I&#x27;ve been working on this....&quot; and the comments that follow.

Re: sticky header, please ensure that anchors clear the new header.
