# [Browse by Catalogue: Dropdowns modifications](https://github.com/livingstoneonline/livingstoneonline/issues/15)

> state: **closed** opened by: **awisnicki** on: **2016-5-4**

1) The search box/facet dropdowns/clear button are a bit too tall. Please reduce the height. I think the search box can be made the same height as the search box in the upper right-hand corner of all site pages. I think the dropdowns/clear button can be have an even lower height than the search box. We don&#x27;t want to be crushing the text inside them, but we also don&#x27;t want the dropdowns so high that they feel so heavy (as they do now) on the left-hand side of the screen. Hope that makes sense.

2) Also the dropdowns, etc are a bit too wide. Right now it looks like the width is being determined by the widest addressee item. I&#x27;d suggest you determine the width by the _next_ widest addressee item and for this long one just wrap it, but using a hanging indent:

Ancient &amp;amp; Honourable Company of Turners, Ladies &amp;amp; 
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Gentlemen of the (1)

3) Also, note two things about this facet: a) when it&#x27;s selected, then on the next page it shows up in a wonky way in the addressee facet and b) &amp; is showing as &amp;amp; (i.e., it&#x27;s not being converted).

For 3a, I find that this happens whenever the given item selected is _longer_ than the facet dropdown. Given this issue, I suggest that the item be truncated in the facet when it shown after being selected and be followed by ...  Alternately, it doesn&#x27;t need to be shown in the facet dropdown after being selected _at all_.

4) I&#x27;d suggest the &quot;Clear&quot; button not need to change to white font when moused over. You could make this button a different shade of gray to differentiate it.

5) It occurs to me that Year, From, and To are all narrow enough so that they could go on one line, rather than spread over two. Year could be slightly wider to differentiate it (and also because it will include &quot;Date unknown&quot;. What do you think? I think how it works would still be obvious to the user.

6) If you&#x27;re in a dropdown with all the items list and you choose the first one (the actual title of the dropdown) it returns an error.


### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/15#issuecomment-219801332) on: **2016-5-17**

&gt; 1) The search box/facet dropdowns/clear button are a bit too tall. Please reduce the height. I think the search box can be made the same height as the search box in the upper right-hand corner of all site pages. I think the dropdowns/clear button can be have an even lower height than the search box. We don&#x27;t want to be crushing the text inside them, but we also don&#x27;t want the dropdowns so high that they feel so heavy (as they do now) on the left-hand side of the screen. Hope that makes sense.

Height has been changed to match the search field used elsewhere on the site.

&gt; 2) Also the dropdowns, etc are a bit too wide. Right now it looks like the width is being determined by the widest addressee item. I&#x27;d suggest you determine the width by the next widest addressee item and for this long one just wrap it, but using a hanging indent:
&gt; 
&gt; Ancient &amp; Honourable Company of Turners, Ladies &amp; 
&gt;     Gentlemen of the (1)

I think this is only referring to the display when selecting a value:

&lt;img width&#x3D;&quot;1232&quot; alt&#x3D;&quot;screen shot 2016-05-17 at 18 52 30&quot; src&#x3D;&quot;https://cloud.githubusercontent.com/assets/487373/15333189/9c97204c-1c60-11e6-8265-ad2dd136b2f4.png&quot;&gt;

We can&#x27;t adjust the widths of this display as it&#x27;s controlled by the browser. The only way to support this would be to replace the select fields with a custom widget, which would take a long time and hurt cross browser support.

&gt; 3) Also, note two things about this facet: a) when it&#x27;s selected, then on the next page it shows up in a wonky way in the addressee facet and b) &amp; is showing as &amp; (i.e., it&#x27;s not being converted).
&gt; 
&gt; For 3a, I find that this happens whenever the given item selected is longer than the facet dropdown. Given this issue, I suggest that the item be truncated in the facet when it shown after being selected and be followed by ... Alternately, it doesn&#x27;t need to be shown in the facet dropdown after being selected at all.

It&#x27;s now truncated but we can&#x27;t display ellipses in this case as it&#x27;s not supported by all browsers (the CSS property to do so does not work with select fields but does work with div&#x27;s etc).

Also HTML encoded characters such as &#x60;&amp;amp;&#x60; are now represented by there respective characters like &amp;.

&gt; 4) I&#x27;d suggest the &quot;Clear&quot; button not need to change to white font when moused over. You could make this button a different shade of gray to differentiate it.

It&#x27;s now a gray color.

&gt; 5) It occurs to me that Year, From, and To are all narrow enough so that they could go on one line, rather than spread over two. Year could be slightly wider to differentiate it (and also because it will include &quot;Date unknown&quot;. What do you think? I think how it works would still be obvious to the user.

I&#x27;ve put them all on a single line, but we won&#x27;t be showing &quot;Date unknown&quot; in this field, for reasons discussed in livingstoneonline/issues/4. 

&gt; 6) If you&#x27;re in a dropdown with all the items list and you choose the first one (the actual title of the dropdown) it returns an error.

I haven&#x27;t been able to reproduce this could you provide more information?

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/15#issuecomment-219819516) on: **2016-5-17**

#1, #2, and #6 are done. Thank you!
For #3, can we do it so that we don&#x27;t show the facet at all, after selection, in the dropdown.
For #4, sorry I think I wasn&#x27;t clear. I&#x27;d prefer that it not change color at all when moused over. Instead, make the button itself a slightly darker shade of gray and the text should be static, always black.
For #5, could we put the word &quot;or&quot; between the year and from/to dropdowns? See attached mockup.
![screen shot 2016-05-17 at 13 55 05](https://cloud.githubusercontent.com/assets/12518623/15335381/aecc1412-1c37-11e6-9fd9-6b14e09b1cfb.png)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/15#issuecomment-220089424) on: **2016-5-18**

We discussed #3, on the call and settled with changing the margin during the call, that&#x27;s now deployed to stage.

#4 and #5 are also deployed to stage.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/15#issuecomment-220102391) on: **2016-5-18**

All looks good. Thank you!

