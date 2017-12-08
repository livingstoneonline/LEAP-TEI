# [MS Viewer: Image numbering in transcription](https://github.com/livingstoneonline/livingstoneonline/issues/45)

> state: **closed** opened by: **awisnicki** on: **2016-5-24**

1) The image identification info for each page of the transcription is currently bold, centered, has a semi-colon after the word &quot;image&quot; and has an empty line below it. Please change this as follows:

rend left
no bold
in square brackets
remove semi-colon
empty line above rather than below

2) Please remove the black horizontal line that appears between pages of the transcription.

---

So, in other words, going from one page of the transcription to the next would look like the following:

That, the scriptures of the old and new Testaments, are a revelation of the will
of god to fallen man, this being attested by such evidence as no one with an unbiased 
mind can resist. That they contain a perfect rule of faith and practice. &quot;All

[Image 0003]
scripture being given by inspiration of god, and profitable for doctrines for
reproof, for correction, for instruction in righteousness,&quot; From these we learn that 

---

Also a question, would it be difficult to hyperlink the [Image 0003 text] to the relevant image so that when you clicked on the hyperlinked text in the transcription it would call up the relevant image?


### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/45#issuecomment-222311299) on: **2016-5-28**

My changes to the XSLT have resolved all of this and so only my question at the end needs to be addressed:

Would it be difficult to hyperlink the [Image 0003 text] to the relevant image so that when you clicked on the hyperlinked text in the transcription it would call up the relevant image?

It&#x27;s possible, I might be able to set this up via the XSLT myself.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/45#issuecomment-222726733) on: **2016-5-31**

It&#x27;s not possible via the XSLT alone, as the XSLT won&#x27;t be aware of the url parameters so any added links are like to remove the users facets (Genre, etc). It can be achieved via javascript though.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/45#issuecomment-222758953) on: **2016-5-31**

How much work would this entail?

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/45#issuecomment-222759543) on: **2016-5-31**

1-2 hours

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/45#issuecomment-222807676) on: **2016-5-31**

Could we go ahead and do this then? I tried to take a few things off the list/close out some tickets to compensate for the added time here.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/45#issuecomment-223080347) on: **2016-6-1**

Looks good. Thank you! I&#x27;ll also change the CSS to make it obvious that this is a link.

