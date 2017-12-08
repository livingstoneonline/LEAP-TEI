# [Desktop: Home page colored nav tabs](https://github.com/livingstoneonline/livingstoneonline/issues/161)

> state: **closed** opened by: **awisnicki** on: **2017-7-1**

Like you did on mobile, could you add about a pixel of padding above and below on the colored nav tabs for desktop and iPad. In other words, the extra pixels can there be for all versions of the site.

### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/161#issuecomment-317562537) on: **2017-7-24**

Actually, I think they need a pixel more so that height of the nav tabs on home matches height of the nav tabs on level 2/3 pages. In other words, the nav tabs should be exactly the same, theming-wise, in all places where they appear.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/161#issuecomment-318740399) on: **2017-7-28**

Still a slight mismatch between the nav tabs. See screen shot. The ones on home have too much padding at left and right.
![screen shot 2017-07-28 at 14 18 45](https://user-images.githubusercontent.com/12518623/28733009-ca65ab82-739f-11e7-8ae8-e5ef24f2eab3.png)

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/161#issuecomment-318797590) on: **2017-7-28**

Also, note something seems to have gone off with the nav tabs on mobile. See screen shot.
![img_6860](https://user-images.githubusercontent.com/12518623/28741448-b01ceac4-73db-11e7-98d4-7a1a8a0d7cef.PNG)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/161#issuecomment-320026226) on: **2017-8-3**

&gt; Still a slight mismatch between the nav tabs. See screen shot. The ones on home have too much padding at left and right.

Not sure what your asking for in this, but the mobile issue was sorted (old iphone bug).
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/161#issuecomment-320075496) on: **2017-8-3**

What I was getting at is that, on the home page, desktop, there is extra padding on the nav tabs left and right. So, for instance, if you look at &quot;About this Site&quot; on the home page and compare it with a level 2 or 3 page, you will see that the text is the same size (that&#x27;s good), but the colored button itself is wider on the home page. So whereas on level 2/3 if we say the width is 1, on home the width is 1.2 because of extra padding to the left and right of the word. Same for all the other buttons. Does that help?
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/161#issuecomment-320075612) on: **2017-8-3**

P.S. Looks good on the mobile issue. Thank you!
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/161#issuecomment-320243101) on: **2017-8-4**

Oh ic, in such a case there is no explicit padding set, the width changes depending on the available space. It&#x27;s using a flex layout, I&#x27;ll hack it though.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/161#issuecomment-320389971) on: **2017-8-4**

Looks good. Thanks!
