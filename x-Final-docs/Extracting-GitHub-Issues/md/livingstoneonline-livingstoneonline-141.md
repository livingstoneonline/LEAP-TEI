# [Issue with publishing page](https://github.com/livingstoneonline/livingstoneonline/issues/141)

> state: **closed** opened by: **awisnicki** on: **2017-6-20**

The following page is currently unpublished:

http://livingstoneonline.org/his-own-words/livingstones-final-manuscripts-1865-1873

As you&#x27;ll see, it has both a level 3 (carousel) and level 2 (tile) image.

I did a test of publishing the page and adding it to the nodequeue for this section (In His Own Words), but there are two issues:

1. Neither the tile nor carousel images are showing up.
2. On level 2, the tile for this page shows up in a distorted (overly tall) size.

Is there any underlying issue here or am I doing something wrong?

### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/141#issuecomment-309756939) on: **2017-6-20**

Seems there is two issue:

1. It wasn&#x27;t added to the nodequeue:

![nodequeue](https://user-images.githubusercontent.com/487373/27333107-a50c2d12-55bc-11e7-9578-b393565220c1.png)

2. The views that power the grid and carousel only display published content, this can be changed though.

I&#x27;ve added the node, and changed the views to show unpublished content as well (users who are not logged in will still not see them though, they must login to see them).

Also on a side note the image used for the carousel is way to huge: http://livingstoneonline.org/sites/default/files/liv_000010_0140-article2.jpg something like 65x65 would look much better.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/141#issuecomment-309856323) on: **2017-6-20**

Everything is set up and I can see what I was expecting on the grid and carousel (also, not to worry about image size. That was a mistake!), so thanks very much for that. Also, I&#x27;ve now set up the TOC dropdown, so that&#x27;s all sorted. 

One final question and then please feel free to close this out. To publish the main edition page plus all the subpages, I would now go and, one by one, checked published on each page and they should show up. Is that correct?
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/141#issuecomment-309861525) on: **2017-6-20**

Yup you&#x27;ll have to do it one by one, or by selecting several in the contents page and choosing the &quot;publish&quot; operation.

![content](https://user-images.githubusercontent.com/487373/27351708-29e86990-55f6-11e7-8df0-07de96d73d46.png)


---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/141#issuecomment-309878984) on: **2017-6-20**

Ah-ha! Great to know about that. Thank you.

It turns out I have one more question. I&#x27;ve built the edition, populated the dropdown, etc. but now all the pages in the edition are showing up in the carousel, whereas only the main page should be. How do I turn that off?
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/141#issuecomment-309886430) on: **2017-6-20**

Ah looks like there was another bug in the view (it wasn&#x27;t filtering based
on membership to the nodequeue), it should be corrected now.

On Tue, Jun 20, 2017 at 9:18 PM, awisnicki &lt;notifications@github.com&gt; wrote:

&gt; Ah-ha! Great to know about that. Thank you.
&gt;
&gt; It turns out I have one more question. I&#x27;ve built the edition, populated
&gt; the dropdown, etc. but now all the pages in the edition are showing up in
&gt; the carousel, whereas only the main page should be. How do I turn that off?
&gt;
&gt; —
&gt; You are receiving this because you were assigned.
&gt; Reply to this email directly, view it on GitHub
&gt; &lt;https://github.com/livingstoneonline/livingstoneonline/issues/141#issuecomment-309878984&gt;,
&gt; or mute the thread
&gt; &lt;https://github.com/notifications/unsubscribe-auth/AAdvzWxvqJ6MaP3iVndtignDLR1gUnhhks5sGCkqgaJpZM4N_gNS&gt;
&gt; .
&gt;



-- 
Nigel Banks
nigel.g.banks@gmail.com

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/141#issuecomment-309894497) on: **2017-6-20**

Awesome, looks good. Thank you!
