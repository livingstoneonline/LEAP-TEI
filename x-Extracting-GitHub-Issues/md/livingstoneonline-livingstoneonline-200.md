# [Geolocation: Search boxes](https://github.com/livingstoneonline/livingstoneonline/issues/200)

> state: **closed** opened by: **awisnicki** on: **2017-8-11**

Given the change discussed in #199 and the focus of this page, I think the first search box should be &quot;Search by geolocation&quot; rather than date. The search box could search two fields in the MODS records, those with Livingstone&#x27;s locations and those with the normalized LoC location names

### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/200#issuecomment-322254180) on: **2017-8-14**

After further review of this with one of our collaborators, it&#x27;s become clear that we&#x27;d not like to have the row of search boxes on this page, so let&#x27;s plan to remove it.

Ideally, it&#x27;d be preferable to have a series of facets here. Would it be possible to have those on this kind of page rather than the search boxes? The facets would be drawn from the MODS.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/200#issuecomment-336630744) on: **2017-10-14**

&gt; Ideally, it&#x27;d be preferable to have a series of facets here

It can&#x27;t be driven by facets as this display is driven by Drupal Views (MySQL) rather than the Digital Catalogue which is driven by Solr which has support for facets.

I have removed the various searches which allows us to use caching so I can now display all 3000+ records on the map at once with reasonable performance.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/200#issuecomment-336647028) on: **2017-10-14**

Oh that&#x27;s great. I think this works well as is. I don&#x27;t see all 3,000 records currently, but I&#x27;m guessing they&#x27;re just not on stage (I believe you said that before).

Once I add the &quot;overview&quot; text add the top, I can use that to explain how the page works, etc. 

When you push to prod, please leave the Geolocation page as unpublished and then I&#x27;ll finalize it before it goes live.

Feel free reopen the comment if there&#x27;s anything else to add about this, but otherwise thank you again on this one.
