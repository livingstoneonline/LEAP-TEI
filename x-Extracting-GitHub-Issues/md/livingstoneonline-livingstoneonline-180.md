# [Tablet: Catalogue facets](https://github.com/livingstoneonline/livingstoneonline/issues/180)

> state: **closed** opened by: **awisnicki** on: **2017-7-1**

See screen shots. At this resolution, rather than making the last three lines very long. Let&#x27;s instead make the search bar very long and then all the rest of the facets can be half a line long.
![screen shot 2017-07-01 at 13 19 55](https://user-images.githubusercontent.com/12518623/27764482-1aa327e6-5e60-11e7-88be-07fb64f22288.png)


### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/180#issuecomment-317532424) on: **2017-7-24**

Making this changes is at least &gt;5 hours if it&#x27;s to maintain the look it currently has at larger resolutions. The grouping of elements **can&#x27;t** be the same at the different resolutions if we&#x27;re to achieve this and the appropriate ordering:

&lt;img width&#x3D;&quot;765&quot; alt&#x3D;&quot;screen shot 2017-07-24 at 20 38 55&quot; src&#x3D;&quot;https://user-images.githubusercontent.com/487373/28541231-26d5ea0a-70b0-11e7-9e34-8a411a804e8c.png&quot;&gt;

So to achieve it I&#x27;ll have to add duplicate elements and the logic for them, etc. There is no clean way to do this unfortunately.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/180#issuecomment-317583075) on: **2017-7-24**

Yargh! OK, let&#x27;s table this for a bit and concentrate on the other issues outstanding. We can come back to this and discuss options.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/180#issuecomment-318797195) on: **2017-7-28**

I think we need to come up with a solution for this before we push to prod. Perhaps we can discuss this along with the logo issue mentioned in #164?
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/180#issuecomment-320391085) on: **2017-8-4**

We forgot to discuss this today. But in any case, I think I&#x27;ve come up with a solution. See the screen shots below with what I&#x27;ve called break points 1, 2, and 3. Basically, I think break point 1 is fine and break point 3 is also fine, so it&#x27;s only break point 2 that needs to be fixed. Here are two options, Either is fine with me:
1. Skip the rendering of facets on break point 2, and go right from 1 to 3 (probably the easiest solution).
2. On break point 2, *also* extend creator and the three year dropdowns across one line (like break point 3), thereby leaving only four boxes at the two distributed over two rows: search/search catalouge/access/clear (slightly more work to implement this, but probably the better solution?)
So I&#x27;m going to remove the &quot;on hold&quot; label here.

![screen shot 2017-08-04 at 21 59 45](https://user-images.githubusercontent.com/12518623/28992420-9a3eda8e-7960-11e7-9b88-1b4eb18a0feb.png)
![screen shot 2017-08-04 at 21 59 50](https://user-images.githubusercontent.com/12518623/28992421-9a3f1e90-7960-11e7-904e-4ee059371787.png)
![screen shot 2017-08-04 at 21 59 58](https://user-images.githubusercontent.com/12518623/28992419-9a3dcb94-7960-11e7-8d88-2368d37c4b82.png)



---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/180#issuecomment-320529071) on: **2017-8-6**

Had to go with option 1. because option 2 has the same essential problem as stated before.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/180#issuecomment-320532531) on: **2017-8-6**

I think that&#x27;s fine, and I&#x27;m happy that there turned out to be an easy solution for this. Thanks again.
