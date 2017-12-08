# [Browse by Catalogue: Add Facet](https://github.com/livingstoneonline/livingstoneonline/issues/77)

> state: **closed** opened by: **awisnicki** on: **2016-8-15**

Could we add a facet on the left side of the page, that would appear below the &quot;Search catalogue only&quot; facet and that would have the following options:

Show all items
Items with images only
Items with images &amp; transcriptions

Note the options here would need to be coordinated with the &quot;&quot;Search Catalogue Only&quot; facet, so that if someone selected &quot;Search transcriptions only&quot; from there, this new facet would have to change to &quot;Items with images &amp; transcriptions&quot; and the other two options would be gone. There might be other such coordinations to be made, but I can&#x27;t think of any just now.


### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/77#issuecomment-242469184) on: **2016-8-25**

Adding this facet would conflict with the other facets, so instead I&#x27;ve altered the existing facet on stage to support this use case:

![usecase](https://cloud.githubusercontent.com/assets/487373/17978780/8c6017fa-6aef-11e6-8eeb-21760d16b4cb.png)

This add&#x27;s the following options to the access facet:
- View (any)
- View (w/ Transcription)
- View (w/o Transcription)
- View (any) &amp; download

These can be used much in the same way as what was there before.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/77#issuecomment-242767711) on: **2016-8-26**

This looks good and I like this way of tackling it. Please modify slightly further so that we have all the following options:

View (any)
View (items with transcriptions)
View (items without transcriptions)
Download (any)
Download (items with transcriptions)
Download (items without transcriptions)
View &amp; download (any)
View &amp; download (items with transcriptions)
View &amp; download (items without transcriptions)
Restricted
No access available

Hopefully, all those text variants will fit on the line. If not, you can got back to using w/ and w/o to see if it helps. This way all options are covered. Also note that only the first word is ever capitalized.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/77#issuecomment-244047457) on: **2016-9-1**

Hmm seems to only fit (and not 100% but close enough if I drop the &quot;**items**&quot; and use the abbreviated forms for with/without).

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/77#issuecomment-244096356) on: **2016-9-1**

This looks good and you can push to prod, but let me ask a question: what about dropping the parenthesis (and restoring item) as in the following:

View (any) [leave this one as is]
View items w/ transcriptions
View items w/o transcriptions
etc.

It seems to me that if you tested this in the longest line only you&#x27;d know whether it worked. 

If you do go with this, then you should probably make it &quot;Restricted items&quot; also.

If not, the way you&#x27;ve resolved it is fine and you can close this ticket.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/77#issuecomment-244193303) on: **2016-9-1**

Still a bit too long:

![screen shot 2016-09-01 at 20 54 49](https://cloud.githubusercontent.com/assets/487373/18182115/69f7f57e-7086-11e6-88e6-aba4ce6caba0.png)

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/77#issuecomment-244231741) on: **2016-9-1**

By the way, could you change the text in the &quot;Access&quot; dropdown so it actually says &quot;Access options&quot;

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/77#issuecomment-244561095) on: **2016-9-3**

Reopening this, since the one minor mod is still needed. 

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/77#issuecomment-244614893) on: **2016-9-4**

Should be sorted now.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/77#issuecomment-244615148) on: **2016-9-4**

Indeed it is. Thank you!

