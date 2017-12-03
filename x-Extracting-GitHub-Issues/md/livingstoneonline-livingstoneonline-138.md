# [RDF NINES](https://github.com/livingstoneonline/livingstoneonline/issues/138)

> state: **closed** opened by: **nigelgbanks** on: **2017-6-8**

Export UUID, Title, Byline, and Date created. so that Adrian can then update a csv and then nigel can write a script to update those pages.

### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/138#issuecomment-307960727) on: **2017-6-12**

Also, I&#x27;ve now reviewed the NINES page and for dc:type would like to add the following categories by default:

Illustration
Still Image
Dataset

The following could also be added, but only for those MODS records that had the corresponding fields in the genre category:

Map
Page Proofs 	 	 	 	
Typescript 	
Drawing

 Any way to do that without much trouble? If not, then we can ignore these four.


---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/138#issuecomment-307960999) on: **2017-6-12**

For collex:discipline, please add the following:

Political Science
Religious Studies
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/138#issuecomment-307961367) on: **2017-6-12**

For collex:genre, please add the following:

Catalog
Collection 	
Correspondence
Ephemera 
Essay
Political Statement 	
Religion
Visual Art 
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/138#issuecomment-307961671) on: **2017-6-12**

For dc:title, we&#x27;d better add &lt;title type&#x3D;&quot;alternative&quot;&gt; from the MODS also. (Right now you just have &lt;title&gt;)

For &lt;role:PBL&gt;Livingstone Online&lt;/role:PBL&gt;, perhaps we should make it &lt;role:PBL&gt;Livingstone Online (livignstoneonline.org)&lt;/role:PBL&gt; ?
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/138#issuecomment-311732304) on: **2017-6-28**

All the other aspects have been taken care of except for populating generating the csv file which will wait for when we do the final move to production (as content is likely to continue to change).
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/138#issuecomment-311825318) on: **2017-6-28**

I think you need to restore some permissions on the back end, as I again can&#x27;t see where to export the NINES files and don&#x27;t have access to the FTP and dev update sections.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/138#issuecomment-312373958) on: **2017-6-30**

Could you go ahead before you go and restore the relevant permissions so I can review this?
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/138#issuecomment-312375592) on: **2017-6-30**

You should have access now?
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/138#issuecomment-312379533) on: **2017-6-30**

Yep, all good. Thank you!
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/138#issuecomment-318798167) on: **2017-7-28**

I&#x27;ve reviewed the MODS and of the suggested changes above, I don&#x27;t see that the following two have been addressed:

1. The following could also be added, but only for those MODS records that had the corresponding fields in the genre category:

Map
Page Proofs
Typescript
Drawing

Any way to do that without much trouble? If not, then we can ignore these four.

2. For role:PBLLivingstone Online&lt;/role:PBL&gt;, perhaps we should make it role:PBLLivingstone Online (livignstoneonline.org)&lt;/role:PBL&gt; ?

---
It&#x27;s possible that after you previously reviewed these two requests, you decided that shouldn&#x27;t be implemented (which is fine), but please confirm.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/138#issuecomment-320032479) on: **2017-8-3**

&gt; 1. The following could also be added, but only for those MODS records that had the corresponding fields in the genre category:
Map
Page Proofs
Typescript
Drawing
Any way to do that without much trouble? If not, then we can ignore these four.

Seems to be working? 

- &#x60;liv_002681.rdf&#x60; has **Map** as a &#x60;&lt;dc:type&gt;&#x60; 
- &#x60;liv_003011.rdf&#x60; has **Page Proofs** as a &#x60;&lt;dc:type&gt;&#x60;
- &#x60;liv_003098.rdf&#x60; has **Typescript** as a &#x60;&lt;dc:type&gt;&#x60;
- &#x60;liv_002819.rdf&#x60; has **Drawing** as a &#x60;&lt;dc:type&gt;&#x60;

&gt; For role:PBLLivingstone Online&lt;/role:PBL&gt;, perhaps we should make it role:PBLLivingstone Online (livignstoneonline.org)&lt;/role:PBL&gt; ?

Sure thing just changed it.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/138#issuecomment-320081896) on: **2017-8-3**

Re: URL in publisher, great. Thank you!

Re: Map, Page Proofs, etc., you&#x27;re correct. My apologies for missing this. Closing the ticket.
