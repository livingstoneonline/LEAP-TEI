# [Browse by Catalogue: Minor modifications](https://github.com/livingstoneonline/livingstoneonline/issues/38)

> state: **closed** opened by: **awisnicki** on: **2016-5-17**

Two small things:
1. For the &quot;Full Record&quot; checkbox, please lower the &quot;Full Record&quot; text slightly so that the bottom of the text is flush with the bottom of the checkbox. (Right now it&#x27;s higher)
2. When the Full Record box is checked, the table drops down a bit. It should not drop down, but rather stay where it is.


### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/38#issuecomment-220101567) on: **2016-5-18**

#2 is done.
For #1, please drop the text still a touch more then you can close this issue.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/38#issuecomment-220311325) on: **2016-5-19**

It&#x27;s a bit lower now, deployed on stage &amp; prod.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/38#issuecomment-220323687) on: **2016-5-19**

Unfortunately, the bottom of the check box and the bottom of the words &quot;Full Record&quot; still do not look flush. &quot;Full Record&quot; looks like it&#x27;s higher.

Also sticking two items here, as this seems the best place for them:
1. Please alphabetize the items in the genre column in the table as you have in the creator and addressee fields.
2. Can you add a final column (i.e., all the way on the right) in the full table view called &quot;Project ID&quot; that would simply given the liv number from the MODS? This is the mods:identifier type&#x3D;&#x27;local&#x27; displayLabel&#x3D;&#x27;master_id&#x27;

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/38#issuecomment-222267085) on: **2016-5-27**

&gt; Please alphabetize the items in the genre column in the table as you have in the creator and addressee fields.

The genre column seems to be alphabetical order?

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/38#issuecomment-222311214) on: **2016-5-28**

I don&#x27;t think it is. Open to full view from the default landing page and take a look at the second item, for instance:

signatures (names);
books;
autographs (manuscripts);
publications

It should be in the following order:

autographs (manuscripts);
books;
publications;
signatures (names);

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/38#issuecomment-222349720) on: **2016-5-29**

Oh I misunderstood I thought you were taking about the select field.

On Saturday, 28 May 2016, awisnicki notifications@github.com wrote:

&gt; I don&#x27;t think it is. Open to full view from the default landing page and
&gt; take a look at the second item, for instance:
&gt; 
&gt; signatures (names);
&gt; books;
&gt; autographs (manuscripts);
&gt; publications
&gt; 
&gt; It should be in the following order:
&gt; 
&gt; autographs (manuscripts);
&gt; books;
&gt; publications;
&gt; signatures (names);
&gt; 
&gt; —
&gt; You are receiving this because you were assigned.
&gt; Reply to this email directly, view it on GitHub
&gt; https://github.com/livingstoneonline/livingstoneonline/issues/38#issuecomment-222311214,
&gt; or mute the thread
&gt; https://github.com/notifications/unsubscribe/AAdvzVTzAOW_yijr2nHZ40pbf90mlz33ks5qGFB_gaJpZM4Igmbp
&gt; .

## 

Nigel Banks
nigel.g.banks@gmail.com

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/38#issuecomment-222729758) on: **2016-5-31**

&gt; In the main table, currently only one genre appears in the genre field, but there can be up to FOUR, so all these should be **listed as relevant**, but separated by a ;  So if the MODS record says:

https://docs.google.com/document/d/14lKUnmSN45E5uCBDbwGdVQoadR3zseSlo4oy5hpnYz8/edit

Just to confirm we want to change genre fields within an single cell to be sorted by Alphanumerically?

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/38#issuecomment-222759722) on: **2016-5-31**

Odd! I thought I answered this one. Yes, that&#x27;s correct alphanumerically, just like currently happens in the creator and addressee fields.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/38#issuecomment-222761288) on: **2016-5-31**

K that&#x27;ll have to wait a bit as I need to rebuild to the solr index to do so.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/38#issuecomment-223030332) on: **2016-6-1**

Index has been rebuilt.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/38#issuecomment-223079650) on: **2016-6-1**

This looks good. However, please put each individual genre on its own line, per the model of the creator/addressee columns.

Separately, I&#x27;ll just throw this small bit in here rather than creating a new ticket, but I noticed when reviewing this that in the viewer, in the Item Details section, when there are two creators, they are separated by a comma rather than semi-colon. Please make it semi-colon. Example:
http://livingstonestage.lib.umd.edu/islandora/search?full_record&#x3D;1&amp;sort&#x3D;desc&amp;order&#x3D;Title&amp;view_pid&#x3D;liv%3A000214&amp;view_page&#x3D;0

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/38#issuecomment-223133416) on: **2016-6-1**

Fixed as for

&gt; Separately, I&#x27;ll just throw this small bit in here rather than creating a new ticket, but I noticed when reviewing this that in the viewer, in the Item Details section, when there are two creators, they are separated by a comma rather than semi-colon. Please make it semi-colon. Example:
&gt; http://livingstonestage.lib.umd.edu/islandora/search?full_record&#x3D;1&amp;sort&#x3D;desc&amp;order&#x3D;Title&amp;view_pid&#x3D;liv%3A000214&amp;view_page&#x3D;0

It&#x27;s now in it&#x27;s own ticket https://github.com/livingstoneonline/livingstoneonline/issues/50, don&#x27;t worry about creating small tickets, small single purpose tickets are easier to deal with rather than large tickets with unrelated issues.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/38#issuecomment-223138086) on: **2016-6-1**

Genre, looks good. I&#x27;m closing this one! Also, duly noted on small tickets. I&#x27;ll do that going forward.

