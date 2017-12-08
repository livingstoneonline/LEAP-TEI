# [Browse by Catalgoue: Link in Other Verisons Column](https://github.com/livingstoneonline/livingstoneonline/issues/64)

> state: **closed** opened by: **awisnicki** on: **2016-6-17**

On Prod, some of the URLs in the Other Versions column as coming up as URLs rather than as the word &quot;link&quot;. Take a look here for example:

http://livingstone.lib.umd.edu/islandora/search?f%5B%5D&#x3D;dateRangeYear_mi%3A%221873%22&amp;full_record&#x3D;1


### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/64#issuecomment-227037570) on: **2016-6-19**

The examples on the page I gave above appear to have resolved themselves, but there are still other examples where the issue persists:

Top few records:
http://livingstone.lib.umd.edu/islandora/search?full_record&#x3D;1&amp;order&#x3D;Other+Version%28s%29&amp;page&#x3D;27

Random examples on this page:
http://livingstone.lib.umd.edu/islandora/search?full_record&#x3D;1&amp;order&#x3D;Other+Version%28s%29&amp;page&#x3D;26

etc.

Also see the column on this page (where it actually runs out of the box): 
http://livingstone.lib.umd.edu/islandora/search?f%5B%5D&#x3D;genre_ms%3A%22lantern+slides%22&amp;full_record&#x3D;1

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/64#issuecomment-227236998) on: **2016-6-20**

I can&#x27;t seem to reproduce it for any of the links.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/64#issuecomment-227239808) on: **2016-6-20**

OK, oddly when you link directly to the URLs I provided above, the issue is fixed. However, if you start at the default Catalogue landing page then, for example, narrow by genre to &quot;lantern slides&quot;, then look at Other Versions, you&#x27;ll see the issue. See screen shot. I&#x27;m doing this in Firefox.
![screen shot 2016-06-20 at 14 10 24](https://cloud.githubusercontent.com/assets/12518623/16207054/e3d375fa-36f0-11e6-83d1-906aca6668f1.png)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/64#issuecomment-227249046) on: **2016-6-20**

Fixed

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/64#issuecomment-227250643) on: **2016-6-20**

And indeed this looks fixed too. Thanks as well. One more close.

