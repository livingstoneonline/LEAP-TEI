# [Critical edition dropdown: Title](https://github.com/livingstoneonline/livingstoneonline/issues/108)

> state: **closed** opened by: **awisnicki** on: **2016-11-17**

There&#x27;s an issue with putting text into the Critical Edition dropdown. Right now, it&#x27;s labeled exactly how we want: &quot;Critical Edition - Table of Contents&quot; but the issue is that when you go to the main site dropdown on mobile, in the list of site pages under the &quot;Spectral Imaging&quot; section, rather than &quot;1870 Field Diary,&quot; what shows up is &quot;Critical Edition - Table of Contents.&quot;

### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/108#issuecomment-306581347) on: **2017-6-6**

The way we build the table of contents has now changed, we&#x27;ll chat about it a bit more on Thursday
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/108#issuecomment-306929453) on: **2017-6-7**

OK, sounds good. I see that right now on mobile, in the TOC, we only have the six main sections, not any of the pages below them.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/108#issuecomment-307235115) on: **2017-6-8**

Sounds like this is still in progress, so will leave open, but feel free to close it if I&#x27;ve misunderstood.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/108#issuecomment-307901424) on: **2017-6-12**

This part of the issue has been handled, I&#x27;ve also updated the main menu. Other issues related to the table of contents, are handled in https://github.com/livingstoneonline/livingstoneonline/issues/106.

![screen shot 2017-06-12 at 20 48 38](https://user-images.githubusercontent.com/487373/27052122-8d31436a-4fb0-11e7-8b02-82acdd48efab.png)

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/108#issuecomment-307951033) on: **2017-6-12**

I see that the main menu has been updated and that the text (for editions) in that menu, no longer says &quot;Critical edition&quot; etc. but rather gives the appropriate title, so all good &amp; thank you! However, before we close this ticket, could you please explain:

1) How I add items to the main menu so that I know when I add editions, etc. in the future.
2) How I change the lead text in the critical edition dropdown. For instance, for the 1870 Field Diary it currently says &quot;Critical Edition - Table of Contents.&quot; What do I do if I want to change that wording?
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/108#issuecomment-308129567) on: **2017-6-13**

&gt; How I add items to the main menu so that I know when I add editions, etc. in the future.

It&#x27;s 100% the same as adding links to the 1870&#x27;s field diary menu like we did on Thursday, except you choose the &quot;main menu&quot; instead to add links.

&gt; How I change the lead text in the critical edition dropdown. For instance, for the 1870 Field Diary it currently says &quot;Critical Edition - Table of Contents.&quot; What do I do if I want to change that wording?

It&#x27;s currently hard coded here: https://github.com/livingstoneonline/livingstone_online_theme/blob/dev/js/custom.js#L102 

You can just ping me if you want to change the text, it applies to all the places where the table of contents is displayed.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/108#issuecomment-308135318) on: **2017-6-13**

OK, thanks. All good to know. One follow up question re: menus. For regular pages, I see that the path is straightforward and what I would expect. However, I looked at the critical editions and see the path is something like follows:

uuid/node/75c25c6c-c491-4059-b446-3562d7518c95

In this case, I would have normally put in:

spectral-imaging/livingstones-1871-field-diary-0

Would that still be OK? The question here seems to apply only to critical editions, I would guess, because of the issue of how these were previously rendering in the mobile menu.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/108#issuecomment-308136678) on: **2017-6-13**

Yup you can use either style of path, I tend to use &quot;uuid&#x27;s&quot; as they are more portable, but you don&#x27;t need to worry about that.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/108#issuecomment-308168153) on: **2017-6-13**

OK, perfect. I think it&#x27;s a wrap on this.
