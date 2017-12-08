# [Browse by Catalogue: Date Facets](https://github.com/livingstoneonline/livingstoneonline/issues/4)

> state: **closed** opened by: **awisnicki** on: **2016-4-28**

We need a date facet on the left side with only the year list. Years should be given in chronological order based on the following MODS field:

mods:dateCreated encoding&#x3D;&#x27;iso8601&#x27;

Note: sometimes the date can be a range:

&#x60;&#x60;&#x60;
&lt;mods:dateCreated encoding&#x3D;&#x27;iso8601&#x27;&gt;1866-12-26/1867-03-01&lt;/mods:dateCreated&gt;
&#x60;&#x60;&#x60;

Note: sometimes the date is wholly unknown and although a made up value is provided for mods:dateCreated encoding&#x3D;&#x27;iso8601&#x27;, a different MODS field says “date unknown”:

&#x60;&#x60;&#x60;
&lt;mods:dateCreated&gt;Date unknown&lt;/mods:dateCreated&gt;
&#x60;&#x60;&#x60;

Is there anything we could do so that if the mods:dateCreated field says “Dake unknown” it trumps mods:dateCreated encoding&#x3D;&#x27;iso8601&#x27; field and in the facet all such dates would appear under a “Date unknown” category?

Also see the mockups I sent. 


### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/4#issuecomment-215525921) on: **2016-4-28**

Looked into it, and have some code incoming.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/4#issuecomment-215530525) on: **2016-4-28**

Will be done as part of the re-write of the Browse by Catalogue page.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/4#issuecomment-217038063) on: **2016-5-4**

We now create a ranged facet for date values:
1. Single dates (i.e. 1874) have a single date value (1874).
2. Range dates (i.e 1800/2000) have many date values one for each year (1800, 1801, 1802).

This allows us to search for ranges, though some objects have huge ranges (i.e. 1800/2000) which causes them to show up in most ranged searches.

Deployed to stage and ready for review.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/4#issuecomment-217056565) on: **2016-5-4**

This looks good. Thank you!

For huge date ranges, I could try to at least narrow down these ranges in the MODS. So that&#x27;s one option to improve this element. However, before I do something like that, here are two questions:

For dates, could we do something like 1) automatic sorting where if the MODS field that gives the text version of the date says &quot;Date Unknown&quot;, those items are automatically sorted _last_ in the relevant table column, and then behind the scenes sorting by the beginning date in the ISO date ranges happens as a second priorty? and then separately 2) these items would appear under &quot;Date unknown&quot; in the date facet rather than under a specific year?

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/4#issuecomment-217882932) on: **2016-5-9**

The sort is being performed by a Solr Date field (we can&#x27;t sort on mixed fields, like Strings and Dates, we can only sort on either String or Dates). We can force a record to appear lower or higher by giving it a date, that&#x27;s either earlier or later relative to all the others. 

The only work around for this would be to choose some date that&#x27;s way off in the future say 9999-01-01 or whatever the limit would be, and forcing &quot;Unknown Dates&quot; to have that as their date value, in total I think there are currently 57 records which have &quot;Unknown Dates&quot;, some of them have small date ranges like 1838/1873, so information would be lost. 

That being said we can&#x27;t really have both, so it&#x27;s either objects show up in a single date (which we can label &quot;Unknown Date&quot;, or they can exist in a range, say 1838 to 1873.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/4#issuecomment-217901501) on: **2016-5-9**

OK, I&#x27;ll investigate this, make a decision on how to handle it, and be back in touch.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/4#issuecomment-218169677) on: **2016-5-10**

I&#x27;ve resolved this. There were 50 odd records with &quot;Date unknown&quot; in the MODS, so for the ISO field of those records I, first, changed all unknown Livingstone items to the single date of 1873, so they would display after all his items for which dates are known and, second, for all other Livingstone-related items I made an educated guess in terms of a single date. Please resync the MODS records from Github, and you&#x27;ll get the newest files.

There are still Livingstone items that have a definitive date range, for instance a journal that we know he wrote between 1866 and 1872, so those date ranges I&#x27;ve left (in all cases, those ranges will only be a few years). For those items, I would be happy in showing them for _each relevant year_, so the example journal could show up under 1866, 1867, 1868, 1869, 1870, 1871, 1872. And so forth.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/4#issuecomment-219798325) on: **2016-5-17**

I&#x27;ve updated the MODS records on production, stage is no longer pointing to production though (as the index changed significantly for other recent issues).

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/4#issuecomment-219798444) on: **2016-5-17**

This will have to wait for a checking when we deploy to production.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/4#issuecomment-220323088) on: **2016-5-19**

Having seen this on prod, I think it&#x27;s better that for remaining date ranges, we just go with the first date in the range for sorting, etc.

Also, selecting the year is producing a wonky result in the dropdown. See attached screen shot. I think we&#x27;d better set it so that once a date is selected, in the dropdown it&#x27;s truncated only to the date itself (not going into number of results).
![screen shot 2016-05-19 at 8 13 31](https://cloud.githubusercontent.com/assets/12518623/15395055/d9687b7e-1d9b-11e6-8296-622db8cfe34c.png)

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/4#issuecomment-221468488) on: **2016-5-24**

The second item in my last comment (remove number of results) is duplicated by another ticket, so please ignore what&#x27;s written in this ticket on that point and let&#x27;s use this ticket only for the following:

Having seen this on prod, I think it&#x27;s better that for remaining date ranges, we just go with the first date in the range for sorting, etc.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/4#issuecomment-222756866) on: **2016-5-31**

We&#x27;re currently going with the first date in the range for sorting, shall we close this ticket?

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/4#issuecomment-222789740) on: **2016-5-31**

Yes, good thank you! Closing this ticket, but one question: When it sorts by the ISO date field, what is the next field by which it sorts, and after that, etc? Is there a way for me to control the order?

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/4#issuecomment-222791359) on: **2016-5-31**

It&#x27;s sorts by &quot;score&quot; second which roughly translates to whatever closest
matches against the search terms, we can change it to a particular field if
you like though like title (if so create a new ticket).

On Tue, May 31, 2016 at 8:10 PM, awisnicki notifications@github.com wrote:

&gt; Closed #4
&gt; https://github.com/livingstoneonline/livingstoneonline/issues/4.
&gt; 
&gt; —
&gt; You are receiving this because you were assigned.
&gt; Reply to this email directly, view it on GitHub
&gt; https://github.com/livingstoneonline/livingstoneonline/issues/4#event-677470423,
&gt; or mute the thread
&gt; https://github.com/notifications/unsubscribe/AAdvzdLgrgO-tOpImGm_ho-GznVgxIeyks5qHIeqgaJpZM4ISN6m
&gt; .

## 

Nigel Banks
nigel.g.banks@gmail.com

