# [Links to anchors](https://github.com/livingstoneonline/livingstoneonline/issues/109)

> state: **closed** opened by: **awisnicki** on: **2016-11-21**

I&#x27;ve found that when one page points to an anchor on another page, clicking on the linking often takes you to the wrong part of the other page. When you&#x27;re ready to tackle this, I can show you some examples, but there are lots of them on these pages:

http://livingstoneonline.org/spectral-imaging/diary-across-hands-space-and-time-1
http://livingstoneonline.org/spectral-imaging/diary-across-hands-space-and-time-2
http://livingstoneonline.org/spectral-imaging/diary-across-hands-space-and-time-3



### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/109#issuecomment-265850679) on: **2016-12-8**

Hmm if some are farther down the page when the fixed header appears then the fixed title bar appears and sometimes covers the heading, is that what you are referring to?
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/109#issuecomment-265861321) on: **2016-12-8**

Hmm might also have to do with the layout moving as images load in, as the browser jumps to the destination before all images are loaded, offsetting the position a bit.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/109#issuecomment-265861756) on: **2016-12-8**

I think this can be solved with a bit of jQuery that moves the scroll position again after all the images have loaded.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/109#issuecomment-266036656) on: **2016-12-9**

Yes, the issues you&#x27;ve described. Good to know that this can be addressed.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/109#issuecomment-267848023) on: **2016-12-18**

Should be working now. Not that this now adjusts for the header, so you may want to move some of the anchors to the **exact** line they are used. For example: 

http://livingstoneonline.org/spectral-imaging/creating-1870-field-diary#link14

Has the following HTML

&#x60;&#x60;&#x60;html
&lt;p class&#x3D;&quot;space2&quot;&gt;
... essay (see Livingstone 1870a:[7]) so Livingstone clearly had the essay by that date.
&lt;a id&#x3D;&quot;link14&quot; name&#x3D;&quot;link14&quot;&gt;&lt;/a&gt;
&lt;/p&gt;
&lt;p&gt;&lt;a ...&gt;▲&lt;/a&gt;&lt;strong&gt; Annotation of one undertext.&lt;/strong&gt; ...
&#x60;&#x60;&#x60;

So it scrolls to the end of that first paragraph rather than the start of the next one which I think is the intention. So instead something like:

&#x60;&#x60;&#x60;html
&lt;p class&#x3D;&quot;space2&quot;&gt;
... essay (see Livingstone 1870a:[7]) so Livingstone clearly had the essay by that date.

&lt;/p&gt;
&lt;p&gt;&lt;a id&#x3D;&quot;link14&quot; ...&gt;▲&lt;/a&gt;&lt;strong&gt; Annotation of one undertext.&lt;/strong&gt; ...
&#x60;&#x60;&#x60;
Would produce the desired result.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/109#issuecomment-268514207) on: **2016-12-21**

Yes, this looks like it&#x27;s resolved. Thank you. It&#x27;d probably be best to review the anchors across the site with this change now in place, so that&#x27;s a project I&#x27;ll have to tackle in the spring. The good news is even if the relevant line appears somewhat below the sticky header, that&#x27;s still fine.
