# [NINES RDF](https://github.com/livingstoneonline/livingstoneonline/issues/242)

> state: **closed** opened by: **awisnicki** on: **2017-11-10**

I filled out the author and editor fields for all section pages this week, but when I generated the NINES RDF just now, I found that this author/editor info was not being added to the files.

### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/242#issuecomment-346274514) on: **2017-11-22**

Should be sorted now.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/242#issuecomment-346396374) on: **2017-11-22**

Unfortunately, this one&#x27;s still not working right. All names are appearing, but my name always comes out first as author, even if I&#x27;m listed second as author. When I&#x27;m listed as editor, my name comes out as author and editor:

&#x60;&#x60;&#x60;
		&lt;role:AUT&gt;Wisnicki, Adrian S.&lt;/role:AUT&gt;
		&lt;role:EDT&gt;Wisnicki, Adrian S.&lt;/role:EDT&gt;
&#x60;&#x60;&#x60;

In other words, it looks like my name is hard-coded to appear as author and always first, whereas it should just be putting out names as they appear, only in the fields in which they appear, i.e., if I&#x27;m only listed as editor in the back end, then I should only appear as editor in the RDF.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/242#issuecomment-346544650) on: **2017-11-23**

Should be sorted now.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/242#issuecomment-346941168) on: **2017-11-25**

Unfortunately, this one is still not sorted. It&#x27;s a little hard to tell what&#x27;s going on, but it appears that I never come up when I&#x27;m editor and, when there is more than one instance of an author or editor field, only the first instance comes up.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/242#issuecomment-346944215) on: **2017-11-25**

You can use the fields from the following pages to compare against generated RDF, to see if all is transferring over:

http://livingstoneonline.org/in-his-own-words/field-diary-iv-overview

http://livingstoneonline.org/life-and-times/livingstone-s-posthumous-reputation

http://livingstoneonline.org/spectral-imaging/the-diary-across-hands-space-and-time-1
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/242#issuecomment-350097030) on: **2017-12-7**

Should be sorted now.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/242#issuecomment-350129058) on: **2017-12-7**

Yes, looks great. Thanks for taking care of this!
