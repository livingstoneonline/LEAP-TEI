# [Desktop: Header proportions](https://github.com/livingstoneonline/livingstoneonline/issues/158)

> state: **closed** opened by: **awisnicki** on: **2017-6-26**

The proportions on the desktop header on levels 2/3 are slightly off. Compare with prod. Specifically, the padding at the right and left sides of the screen could be slightly decreased so that the header and banner are slightly wider. This would then give you space to increase the logo which is too small -- it should be flush with the top of the search box and bottom of the color tiles. Also, the colored tiles should be a uniform width (each the same) not have width matching width of text inside.

### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/158#issuecomment-311081048) on: **2017-6-26**

Note too that on the home page, the size of the logo needs to be increased to match prod and the colored boxes should match the ones on levels 2/3. Right now the colored boxes on the home page are different from those on levels 2/3.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/158#issuecomment-311465634) on: **2017-6-27**

&gt; The proportions on the desktop header on levels 2/3 are slightly off. Compare with prod. Specifically, the padding at the right and left sides of the screen could be slightly decreased so that the header and banner are slightly wider.

Are you referring to these areas?

![layout](https://user-images.githubusercontent.com/487373/27606330-bb916708-5b77-11e7-9e42-ef5fe7657f8c.png)

The content of the pages are set to &#x27;break&#x27; at a set of sizes to be most applicable to the widest variety of devices and screens:

- 480px
- 768px
- 992px
- 1200px

I wouldn&#x27;t recommend against going against this doing custom widths for these breaks, for each bit of content. 

&gt; -- it should be flush with the top of the search box and bottom of the colour tiles

Since I&#x27;ve spend some time on this, I don&#x27;t believe we&#x27;ll have enough room. On production for example I took this screen shot from production, it doesn&#x27;t line up with the logo, and never did.

![prod](https://user-images.githubusercontent.com/487373/27606160-11364b66-5b77-11e7-841a-6b718f4b5129.png)

&gt; Also, the colored tiles should be a uniform width (each the same) not have width matching width of text inside.

Currently it uses a layout to make best use of the available space, but I can change this if you insist, though it will break other improvements like exact alignment with the grid:

![screen shot 2017-06-27 at 20 45 21](https://user-images.githubusercontent.com/487373/27606838-aa32976e-5b79-11e7-9547-a93b962995df.png)

![screen shot 2017-06-27 at 20 47 03](https://user-images.githubusercontent.com/487373/27606881-cf6c54b6-5b79-11e7-8b49-c0dfdfcf8733.png)

vs. 

![screen shot 2017-06-27 at 20 48 01](https://user-images.githubusercontent.com/487373/27606929-f9005980-5b79-11e7-93ff-6d9a772feeb7.png)
![screen shot 2017-06-27 at 20 48 11](https://user-images.githubusercontent.com/487373/27606931-fbd4dc80-5b79-11e7-957f-3f5cc693a635.png)


I&#x27;ve spent a lot of extra time on the header in particular trying to make it work well at all resolutions, and improve upon it while still staying true to the original look. I can make things exactly the same as they were on production before but we lose a lot in doing so.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/158#issuecomment-311469546) on: **2017-6-27**

I don&#x27;t mean to discourage making any changes; just trying to save the baby from going out with the bath water.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/158#issuecomment-311493132) on: **2017-6-27**

No problem. We definitely don&#x27;t want to break anything unnecessarily.

The issue is that until now I hadn&#x27;t noticed the alignment between the nav tabs and the grid on stage, only that the nav tabs at lower resolutions appeared too wide (and, as noted, were uneven on desktop). I was going to point this out when we got to desktop/iPad review. When we got to that review, I was also going to note that we were planning to take out the white space between the tiles in the grid and, separately, between the nav tabs so that potentially complicates things.

So, I think the best thing is for me to look into this further and be back in touch. In the meantime, could you make the bottom of the logo flush with the bottom of the nav tabs? See screen shot. I think that would improve things considerably. Also, see the note I&#x27;ve made about the space to take out that I was previously referencing -- it looks like this was a difference space from what you thought. If my indicated space is reduced, it creates more space for the logo size to increase.
![screen shot 2017-06-27 at 16 33 01](https://user-images.githubusercontent.com/12518623/27611129-9c965172-5b56-11e7-9c5f-dfdf0595a3a0.png)

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/158#issuecomment-312374206) on: **2017-6-30**

Could you go ahead before you go and move the logo down as per the previous comment. I have a meeting to look into this next week, so that change will help us in the meeting.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/158#issuecomment-312377171) on: **2017-6-30**

It should be up there now.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/158#issuecomment-312379653) on: **2017-6-30**

Yes, good. Thank you!
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/158#issuecomment-314613189) on: **2017-7-11**

We&#x27;ve now reviewed this. Overall, we agree that aligning the nav tabs with the grid tiles is a great improvement, so thanks very much for your work on all of that. 

Based on what&#x27;s already up, we&#x27;d like to suggest a series of minor tweaks.

1) On desktop the width of the logo is currently 100%. Please increase this to 102% so that it is slightly bigger and that the edges align with the tile below more precisely.

2) First break point, see scree shot below for two changes.
![screen shot 2017-07-11 at 20 26 51](https://user-images.githubusercontent.com/12518623/28096969-b497040e-667a-11e7-9312-6a8f66375883.png)

3) Small change on the overlays. See screen shot.
![screen shot 2017-07-11 at 20 26 56](https://user-images.githubusercontent.com/12518623/28096977-b9bce764-667a-11e7-97b0-00281000602c.png)

4) Small change re: spacing around tiles so as to match nav tabs. See screen shot. In other words, reduce space between tiles (vertical and horizontal space) so that distances match distances between nav tabs.
![screen shot 2017-07-11 at 20 37 27](https://user-images.githubusercontent.com/12518623/28117437-703b7ae0-66db-11e7-8253-91b64200dfef.png)

5) Adjustments to one of the smaller resolutions. See screen shot.
![screen shot 2017-07-11 at 20 46 04](https://user-images.githubusercontent.com/12518623/28097011-f4dc6572-667a-11e7-938c-fc96b372cbeb.png)




---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/158#issuecomment-317546403) on: **2017-7-24**

&gt;1. On desktop the width of the logo is currently 100%. Please increase this to 102% so that it is slightly bigger and that the edges align with the tile below more precisely.

Not sure, I understand this? The Livingstone Online site logo? If so it&#x27;s limited to a max width of 400px at the moment so you&#x27;d prefer it to be 102% of 400px?

&gt; 2. First break point, see scree shot below for two changes.

1. Reduce border resolutions: _We can change it to 4px but not 3px as it needs to be divisible by 2 or else it will will render with small gaps due to floating point layout issues._
2. Overlays should appear after break: _Currently they appear on resolutions less than 1024px as was requested in the meeting we had with Angela? What is the final decision?_

&gt; 3. Small change on the overlays. See screen shot.

Sure thing, I&#x27;ve added 5px.

&gt; 4. Small change re: spacing around tiles so as to match nav tabs. See screen shot. In other words, reduce space between tiles (vertical and horizontal space) so that distances match distances between nav tabs.

K. I&#x27;ve decreased the size, it won&#x27;t match exactly in either case as the space allotted to each is controlled by the browse and will change at various resolutions, but the difference should be imperceptible. 

&gt; 5. Adjustments to one of the smaller resolutions. See screen shot.

K
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/158#issuecomment-317570545) on: **2017-7-24**

1. See screen shot.
![screen shot 2017-07-24 at 17 01 00](https://user-images.githubusercontent.com/12518623/28546960-4626dde2-7092-11e7-9046-5800ce7402ea.png)

2. Ah, I see. I thought 1024 was the first break point, but it turns out that it is the second and there is one before it. Let&#x27;s have the overlays appear at the first break point. 

3. Let&#x27;s make the padding at left and right only 10px.

4. Resolved. Thank you.

5. See screen shot. There is still a resolution where Browse is appearing on the search line when it should appear with icons.
![screen shot 2017-07-24 at 17 14 14](https://user-images.githubusercontent.com/12518623/28547237-96afb6e8-7093-11e7-8ae9-06c9af374613.png)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/158#issuecomment-318691724) on: **2017-7-28**

1. Used a different approach but with similar affect.
2. K.
3. K.
5. Can&#x27;t reproduce, though might be affected by another ticket, but just as likely the display is slightly different between our two machines.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/158#issuecomment-318738340) on: **2017-7-28**

1. Thank you. Almost there. I&#x27;ll be asking for one more exceptionally minor tweak but will put that in another ticket.
2/3. Resolved. Thank you.
4. No longer appearing so all good.

