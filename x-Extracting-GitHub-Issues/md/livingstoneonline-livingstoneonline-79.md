# [Mobile: Home page](https://github.com/livingstoneonline/livingstoneonline/issues/79)

> state: **closed** opened by: **awisnicki** on: **2016-8-26**

When the home page first comes up on iPhone5 (and maybe other small sizes?), the black text at the bottom comes up too high and covers the area of the page where it says &quot;Image Credits/Site Guide&quot;. The black text should be lowered.

Correct:
![correct](https://cloud.githubusercontent.com/assets/12518623/18005969/d832202e-6b62-11e6-940d-d7b7cfc6daaf.png)

iPhone5:
![iphone5](https://cloud.githubusercontent.com/assets/12518623/18005973/de2d133a-6b62-11e6-9cb3-233543d1284b.png)


### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/79#issuecomment-244150223) on: **2016-9-1**

Looks good on stage. Thank you! Please push up to prod.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/79#issuecomment-244560993) on: **2016-9-3**

Reopening this, since we have the loading issue on iPhone 5.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/79#issuecomment-244596860) on: **2016-9-4**

The issue arises when the images are loaded slower than the when the theme alters the bottom-margin of the body to account for the height of the sticky footer. 

This occurred on all browsers, but was only noticeable on the iPhone due to it&#x27;s narrow view and the images being stacked on top of one another (so load times means the heights will be off noticeably more than for example in a desktop where they all align horizontally).

This issue has been present before the previous issue of this ticket. It&#x27;s just a bit more obvious as the text floats over main image when the height is off, where as before the links were under the footer.

To reproduce all the caches on the phone must be cleared out, this can be done by visiting Settings &gt; Safari and choosing to clear the caches. 

A fix has been deployed to stage and prod, in which we detect when images are loaded and update the margin with the new height.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/79#issuecomment-244614977) on: **2016-9-4**

Thanks for explaining this and sorting it out. It makes sense and sounds like it will also resolve minor issues I saw when the home page was loaded on laptop browser etc. It also works fine on iPhone now.

