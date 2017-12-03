# [Browse By Catalogue: Mobile](https://github.com/livingstoneonline/livingstoneonline/issues/42)

> state: **closed** opened by: **nigelgbanks** on: **2016-5-24**

Year and Search look a bit wonky in-between media sizes.


### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/42#issuecomment-223082013) on: **2016-6-1**

![screen shot 2016-06-01 at 13 23 16](https://cloud.githubusercontent.com/assets/12518623/15721304/f3468c22-27fd-11e6-9b44-0107d5ec1664.png)
I think this looks great overall, except there&#x27;s one small spot where the search button is way over from the search bar. See screen shot. Perhaps that this point, the search bar could be extend to the button?  Also, the distance of the downward pointing right arrows on the right side of the Year, From, and To dropdowns in not the same as on the other dropdowns and it becomes very obvious in the mobile view. Please put all of these downward arrows the same distance from the right side. Once you do those two things, then please feel free to close this ticket.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/42#issuecomment-223988228) on: **2016-6-6**

Fixed and Deployed

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/42#issuecomment-223990012) on: **2016-6-6**

Both changes cited here are fixed, but as a process of this you seem to have replaced the downward arrows with these big wonky looking arrows. This additional change wasn&#x27;t necessary :&gt;

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/42#issuecomment-223991159) on: **2016-6-6**

Can you try clearing your cache? The change required creating a new image icon and scaling it differently if the old icon was being used but with the new css settings it would look too big.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/42#issuecomment-224004013) on: **2016-6-6**

Yes, that did the trick. However, when reviewing this I noticed two further things:
1. The title of the page (Browse by Digital Catalogue) disappears at a certain point. This should not happen rather the title should behave like the other titles on comparable pages of the site. See for example: http://livingstonestage.lib.umd.edu/about-site/livingstone-online-introduction (Note that the size stays fairly the same for a while as the browser narrows, then the size of the title gets smaller.)
2. When the title is still there, it&#x27;s wrapping sooner than it should. See attached screen shot.
   ![screen shot 2016-06-06 at 10 58 59](https://cloud.githubusercontent.com/assets/12518623/15828664/ce19bac4-2bd5-11e6-94f7-b94764d7e10a.png)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/42#issuecomment-224005048) on: **2016-6-6**

Thats part of the theme code, might I suggest you pass it on to Kathy, as it likely ties into the other mobile work she has been doing.?

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/42#issuecomment-224017553) on: **2016-6-6**

OK, will do. Closing this issue. Thanks for your work on it!

