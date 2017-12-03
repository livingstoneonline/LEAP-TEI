# [Mobile: MS and spectral viewers](https://github.com/livingstoneonline/livingstoneonline/issues/153)

> state: **closed** opened by: **awisnicki** on: **2017-6-22**

The items in the header are not centered and not distributed properly over the lines. Compare against prod. Also, horizontal spacing between items is a bit wonky.
![img_6409](https://user-images.githubusercontent.com/12518623/27430844-bee814d6-570f-11e7-873c-89a4b64e948a.PNG)


### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/153#issuecomment-310347781) on: **2017-6-22**

Same issue for spectral image viewer.
![img_6411](https://user-images.githubusercontent.com/12518623/27430962-2d5540a6-5710-11e7-964a-d8147fe5bf64.PNG)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/153#issuecomment-310923513) on: **2017-6-25**

Ready for review.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/153#issuecomment-311063173) on: **2017-6-26**

This issue on both the image and spectral image viewers has been resolved. Thank you.

However, it looks like in fixing this, on the spectral image viewer you set the colors off. See screen shots, there&#x27;s lots of blue text here (and on the share icons) that shouldn&#x27;t be blue and the transcription is coming up with out colors.

Also, given how little real estate there is here, on mobile, for both viewers, could you go ahead and remove the search box? It will still only be one click away (via closing the viewer), but this will open up some space. 

![img_6493](https://user-images.githubusercontent.com/12518623/27541948-6995217e-5a4b-11e7-94eb-34ab1e4841aa.PNG)
![img_6494](https://user-images.githubusercontent.com/12518623/27541947-6991a706-5a4b-11e7-8348-0a18147c8ddb.PNG)

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/153#issuecomment-311065405) on: **2017-6-26**

Incidentally, the &quot;blue&quot; issue is also present on the multi-text viewer, which also has an odd blue set of dotted lines running across the top.
![img_6504](https://user-images.githubusercontent.com/12518623/27542395-c08ad752-5a4c-11e7-989a-a46dd054e4d5.PNG)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/153#issuecomment-311636506) on: **2017-6-28**

&gt; However, it looks like in fixing this, on the spectral image viewer you set the colors off. See screen shots, there&#x27;s lots of blue text here (and on the share icons) that shouldn&#x27;t be blue and the transcription is coming up with out colors.

I can&#x27;t seem to reproduce the issue with blue links or lines, likely this is from a font or css file failing to download? Do you still see this issue?

&gt; Also, given how little real estate there is here, on mobile, for both viewers, could you go ahead and remove the search box? It will still only be one click away (via closing the viewer), but this will open up some space.

Sure thing.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/153#issuecomment-311653190) on: **2017-6-28**

Removal of the search bar looks good and I think helps open up the space.

In looking at that, I also notice that, on the spectral image viewer, I also notice that the &quot;Processing Details&quot; button needs to be moved down slightly so that it is level top and bottom with the &quot;Color&quot; (spectral image selector) tab.

Unfortunately, the &quot;blue&quot; issue is still there both on the multispectral viewer and on the multi-text viewer.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/153#issuecomment-317547698) on: **2017-7-24**

The blue issue was from reverting the changes I made to LEAP-XSLT its the css rules bleeding through. I&#x27;ve changed the stage box to use my branch on LEAP-XSLT for now (you won&#x27;t be able to see changes to your XSLT / CSS on stage for the moment).


---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/153#issuecomment-317583802) on: **2017-7-24**

OK, I won&#x27;t worry about the blue issue them. The processing details button appears to be moved down, so thanks for that. However, in reviewing this page, I also see that all the font looks too bit (16px). Please make the font on all the buttons etc. on this page 14px. This will bring it inline with other relevant parts of the site.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/153#issuecomment-318696168) on: **2017-7-28**

Change to 14px.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/153#issuecomment-318737168) on: **2017-7-28**

Looks good. Thank you!
