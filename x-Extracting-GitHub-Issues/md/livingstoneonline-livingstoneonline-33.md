# [MS Viewer: Item Details/Digital Edition Rendering](https://github.com/livingstoneonline/livingstoneonline/issues/33)

> state: **closed** opened by: **awisnicki** on: **2016-5-9**

1) Text Sizes

**Main title**
font-family: Crimson Text, serif
font-size: 2.3 em
font-weight: 600
margin-bottom: 10px
Note: should be flush left with the rest of the text, not hanging out into the margin, so I think margin-left: 10px

**Main text**
font: Source Sans Pro, sans-serif
font-size: .9 em

2) Combine &quot;Publication&quot; and &quot;Digital Edition&quot; into a single section called &quot;Digital Edition&quot; that begins before the line for &quot;Directors&quot;. I&#x27;ll provide the text for this section in a separate Github ticket.

3) **Section title for Digital Edition**
font-family: Crimson Text, serif
font-size: 1.5 em
Note: should be flush left with the rest of the text, not hanging out into the margin, so I think margin-left: 10px
Note: there should not be an empty line after this title. The text can be right below it.


### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/33#issuecomment-221069679) on: **2016-5-23**

All looks good except please adjust further as follows:

1) Text sizes
**Main title**
font-size: 1.75 em
margin-bottom: it appears that the solution I proposed (10em) does not work. The point is that right now there is an extra amount of space between the title and the items below it. The space below the title should be the same as the space between the different lines of this section.
Also, let&#x27;s put a horizontal line below the title that runs end to end (left to right) and is gray. See how we do it on any page of the site, for instance: http://livingstone.lib.umd.edu/about-site/livingstone-online-introduction

3) **Section Title for Digital Edition**
font-size: 1.75 em
font-weight: 600
Also, let&#x27;s put a horizontal line below the title that runs end to end (left to right) and is gray. See how we do it on any page of the site, for instance: http://livingstone.lib.umd.edu/about-site/livingstone-online-introduction
Finally, we need an empty line above this to set off this section from the previous one. Please make the empty line the size of a regular line in the section (rather than the size of the title).

In other words, I&#x27;d like to do the same thing for the Item Details and Digital Edition titles.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/33#issuecomment-222799978) on: **2016-5-31**

I&#x27;m closing out section #34 and combining it with one since it all goes together.

Still a touch of tweaking left on the Item Details and Digital Edition sections left as follows:
1. The vertical space between Item Details/Digital Edition and the gray line beneath is too large in each case and needs to be reduced. The vertical distance from these titles to the gray line, should be the same as from the gray line to the first line of text below.
2. We still need some vertical space about &quot;Digital Edition&quot; so that the &quot;Digital Edition&quot; section is clearly set off from the &quot;Item Details&quot; section.
3. The &quot;Image Credits&quot; section seems to have the word &quot;Images&quot; hard coded, so each version of this starts off with the word &quot;Images&quot; unnecessarily duplicated:
   **Image Credits:** Images Images [...]
4. In the &quot;Directors&quot; line, I meant for you to use &quot;Leadership:&quot; instead of &quot;Directors&quot;, but I see now that &quot;Directors&quot; works just fine, so please just remove the word &quot;Leadership:&quot; (including the semi-colon that follows that word. In other words, the &quot;Directors&quot; line should read:
   **Directors:** Adrian S. Wisnicki (director), Christopher Lawrence (director emeritus), Megan Ward (associate director), Anne Martin (associate director)
5. The &quot;Cite Item (MLA)&quot; section needs to end with a final period (after the auto-generated date). Currently that period is missing.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/33#issuecomment-222995275) on: **2016-6-1**

&gt; The vertical space between Item Details/Digital Edition and the gray line beneath is too large in each case and needs to be reduced. The vertical distance from these titles to the gray line, should be the same as from the gray line to the first line of text below.

Done.

&gt; We still need some vertical space about &quot;Digital Edition&quot; so that the &quot;Digital Edition&quot; section is clearly set off from the &quot;Item Details&quot; section.

Margin is now set to 2em (was 0.5em).

&gt; The &quot;Image Credits&quot; section seems to have the word &quot;Images&quot; hard coded, so each version of this starts off with the word &quot;Images&quot; unnecessarily duplicated: Image Credits: Images Images [...]

Hard coding of &quot;Images&quot; has been removed.

&gt; In the &quot;Directors&quot; line, I meant for you to use &quot;Leadership:&quot; instead of &quot;Directors&quot;, but I see now that &quot;Directors&quot; works just fine, so please just remove the word &quot;Leadership:&quot; (including the semi-colon that follows that word. In other words, the &quot;Directors&quot; line should read: Directors: Adrian S. Wisnicki (director), Christopher Lawrence (director emeritus), Megan Ward (associate director), Anne Martin (associate director)

Done.

&gt; The &quot;Cite Item (MLA)&quot; section needs to end with a final period (after the auto-generated date). Currently that period is missing.

Done.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/33#issuecomment-222997254) on: **2016-6-1**

Everything looks great (thank you!), except please make one final change. Please change margin above &quot;Digital Edition&quot; to 1.5em and then please feel free to close this ticket.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/33#issuecomment-222999966) on: **2016-6-1**

Deployed to stage

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/33#issuecomment-223070682) on: **2016-6-1**

Perfect. Thank you!

