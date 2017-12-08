# [Mobile: wrapping text.](https://github.com/livingstoneonline/livingstoneonline/issues/155)

> state: **closed** opened by: **awisnicki** on: **2017-6-26**

See attached screen shots. The first is from the item details section of the Image viewer. The second comes from this page: http://livingstonestage.lib.umd.edu/about-this-site/livingstone-online-site-guide
![img_6495](https://user-images.githubusercontent.com/12518623/27544337-7663e21c-5a52-11e7-9a7d-54d468654efc.PNG)
![img_6496](https://user-images.githubusercontent.com/12518623/27544338-76677c06-5a52-11e7-841d-908003f67490.PNG)


### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/155#issuecomment-311634103) on: **2017-6-28**

Ready for review.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/155#issuecomment-311651624) on: **2017-6-28**

The item details page is fixed, so thanks for that.

I see that on the other page you&#x27;ve moved the table of contents over to the left, so that helps with the issue and I see also that I can move the page over to the right and see the text that&#x27;s running off the screen. Is that the solution you&#x27;d like to use? If so, that&#x27;s fine, but note that I was suggesting wrapping the text so that it didn&#x27;t run off the screen.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/155#issuecomment-311662503) on: **2017-6-28**

I think I confused tickets. I didn&#x27;t make any changes regarding the second image. Looks like I skipped over it thinking it was related to the first stated issue, or associated it with another ticket.

The fix for the first image was to have text wrap it was using &#x60;&lt;dd&gt;&#x60; elements which don&#x27;t wrap by default, so pretty straight forward.

The second image is a bit tricky since it&#x27;s part of the content and built with a single row table? Along with the &#x60;&amp;nbsp;&#x60;&#x27;s it&#x27;s highly unlikely that we&#x27;ll be able to make this wrap accordingly without changing the actual content. 

Likely to make it work correctly we&#x27;ll have to build a widget or set-out some rules on how to structure the HTML. Perhaps something like this:

https://codepen.io/nbanks/pen/wepoYZ

Does this look reasonable to you?


 
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/155#issuecomment-311830379) on: **2017-6-28**

The example you&#x27;ve provided looks good to me and I&#x27;d be happy to go with it. I see two issues, however. 

First, it seems to me that it would take a lot of coding to implement this manually, unless there&#x27;s an automated way to do it. In case it helps, such TOC text, if present (it isn&#x27;t always unless the given page has multiple sections), always precedes the first &#x60;&lt;hr/&gt;&#x60; on the page. 

Second, TOC text, I believe, can take one of three forms: a) unordered lists (http://livingstoneonline.org/about-site/design-livingstone-online), b) ordered lists (http://livingstoneonline.org/spectral-imaging/creating-1870-field-diary), and c) unordered lists that are actually partly ordered (http://livingstoneonline.org/spectral-imaging/glossary-key-terms-livingstones-manuscripts-1870-71). I&#x27;d be OK with converting category #c into category #b. 

However, I wonder if another option here is to set up some kind of formula for mobile that, for any given page, ignores all instances of &#x60;&amp;nbsp;&#x60; before the first &#x60;&lt;hr/&gt;&#x60;, puts all text flush left, and, as needed, simply wraps it to the next line. 

Does that make sense/seem feasible/is a simpler solution?
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/155#issuecomment-312323235) on: **2017-6-30**

I think we can cover your three use-cases with HTML lists:

https://codepen.io/nbanks/pen/wepoYZ

Altering the number of spaces on mobile is problematic for when they may rotate the screen and change the dimensions.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/155#issuecomment-312373839) on: **2017-6-30**

Ok, great. Thank you. Then I&#x27;ll leave this ticket open so you can take it forward with this.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/155#issuecomment-312373992) on: **2017-6-30**

We&#x27;ll put it on hold until the move to production since it will require changing the content.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/155#issuecomment-318797388) on: **2017-7-28**

Just a reminder that this is something that needs to be adjusted when we move to prod. Should this remain on hold?
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/155#issuecomment-320026415) on: **2017-8-3**

We can&#x27;t do it till after the migration.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/155#issuecomment-329081802) on: **2017-9-13**

Deployed on stage, I&#x27;ve changed the tables where I found them but there is likely a few still about: http://livingstonestage.lib.umd.edu/spectral-imaging/edition-guide-1

Steps:
&lt;img width&#x3D;&quot;1361&quot; alt&#x3D;&quot;screen shot 2017-09-13 at 08 20 02&quot; src&#x3D;&quot;https://user-images.githubusercontent.com/487373/30364537-8bd6a704-985c-11e7-8de5-fa3980c0a6a7.png&quot;&gt;
&lt;img width&#x3D;&quot;1369&quot; alt&#x3D;&quot;screen shot 2017-09-13 at 08 20 10&quot; src&#x3D;&quot;https://user-images.githubusercontent.com/487373/30364538-8bf24e14-985c-11e7-9ffd-0d517948c16a.png&quot;&gt;
&lt;img width&#x3D;&quot;1361&quot; alt&#x3D;&quot;screen shot 2017-09-13 at 08 20 20&quot; src&#x3D;&quot;https://user-images.githubusercontent.com/487373/30364539-8bf428a6-985c-11e7-8161-ee395b6f958e.png&quot;&gt;


---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/155#issuecomment-329555531) on: **2017-9-14**

Additionally, on this page (http://livingstonestage.lib.umd.edu/spectral-imaging/creating-the-1870-field-diary) and others like it, with numbering of tables of contents, the numerals etc are no longer hyperlinked (where they were previously) and on mobile go off the screen at left.
![img_7182](https://user-images.githubusercontent.com/12518623/30444748-9250ff92-9949-11e7-8bed-943c386efd74.PNG)

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/155#issuecomment-329754425) on: **2017-9-15**

I deleted my initial comments on this because in re-reviewing, I think I&#x27;ve gotten a better handle on this.

I see now that longer text should be wrapping, and I see that when it&#x27;s indented it wraps properly now, so all good on that. So here are the questions I have:

Should text that is *not indented*, but that is *long* be wrapping? See for instance this page: http://livingstonestage.lib.umd.edu/life-and-times/livingstone-s-life-expeditions I believe that it should, but it isn&#x27;t on this page and others like it, though perhaps the new table settings haven&#x27;t been applied to this page?

I went to test the table settings out. I see them in your screen shot above, but they don&#x27;t appear in my version of the WYSIWYG, so I suspect you forgot to turn them on for me.


---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/155#issuecomment-331070608) on: **2017-9-21**

&gt; Additionally, on this page (http://livingstonestage.lib.umd.edu/spectral-imaging/creating-the-1870-field-diary) and others like it, with numbering of tables of contents, the numerals etc are no longer hyperlinked (where they were previously) and on mobile go off the screen at left.

I&#x27;ve added the text back in for the lists, this isn&#x27;t the normal way to do lists but whatever works for you. To do this I&#x27;ve changed them all to be formatted as un-numbered lists, then added the numbers, etc to the text inside the link.

&gt; Should text that is not indented, but that is long be wrapping? See for instance this page: http://livingstonestage.lib.umd.edu/life-and-times/livingstone-s-life-expeditions

It should wrap, that page shouldn&#x27;t be long in this case. The problem stems from embedded the images in tables with fixed width:
&#x60;&#x60;&#x60;
&lt;table align&#x3D;&quot;center&quot; cellpadding&#x3D;&quot;1&quot; cellspacing&#x3D;&quot;1&quot; style&#x3D;&quot;width: 550px;&quot;&gt;
...
&lt;img alt&#x3D;&quot;David Livingstone - Lake Ngami (Painted Magic Lantern Slide), c.1857.  Copyright National Library of Scotland. Creative Commons Share-alike 2.5 UK: Scotland (https://creativecommons.org/licenses/by-nc-sa/2.5/scotland/).&quot; class&#x3D;&quot;media-image attr__typeof__foaf:Image img__fid__306 img__view_mode__media_original attr__format__media_original&quot; src&#x3D;&quot;/sites/default/files/life-and-times/livingstone-s-life-expeditions/liv_014066_0001-article.jpg&quot; style&#x3D;&quot;width: 550px;&quot; typeof&#x3D;&quot;foaf:Image&amp;quot;&quot;&gt;
&#x60;&#x60;&#x60;
There shouldn&#x27;t be any use of fixed width elements anywhere on the page as it prevents responsive design. I will search and remove these tables and replace it with the proper html / css.

&gt; I went to test the table settings out. I see them in your screen shot above, but they don&#x27;t appear in my version of the WYSIWYG, so I suspect you forgot to turn them on for me.

They appear to be present, did you create the table of contents first? The options to style lists won&#x27;t show up on non-list elements.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/155#issuecomment-331071211) on: **2017-9-21**

Also I&#x27;m not seeing the mobile issue with the wrapping, perhaps it relates images in the fixed width table making the page too wide, so the page was scrolled a bit to the right for you.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/155#issuecomment-331220232) on: **2017-9-21**

Re: numbering of lists, thanks very much.

Re: images in tables, OK, thank you for taking care of this. I&#x27;ll create a new ticket for this to keep it on the radar.

Re: table settings, can you explain the workflow. I&#x27;ve gone into the back end, tried out the &quot;Templates&quot; button (Table of Contents option -- the only one), then tried to use one of the options from the Styles dropdown, but I don&#x27;t quite get how this is to work. In particular, when I use the &quot;Templates&quot; button is erases what I&#x27;ve written and just produces a generic list.

The mobile issue is indeed resolved. 

So, in other words, all that&#x27;s left on this ticket is explaining tables to me.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/155#issuecomment-331732682) on: **2017-9-24**

Place the cursor where you would like to insert the table of contents:

Select the highlighted button:
&lt;img width&#x3D;&quot;1361&quot; alt&#x3D;&quot;screen shot 2017-09-13 at 08 20 02&quot; src&#x3D;&quot;https://user-images.githubusercontent.com/487373/30364537-8bd6a704-985c-11e7-8de5-fa3980c0a6a7.png&quot;&gt;
There is only one option &quot;Table of contents&quot; select it, also make sure that &quot;Replace Actual Content&quot; is unchecked.
&lt;img width&#x3D;&quot;1369&quot; alt&#x3D;&quot;screen shot 2017-09-13 at 08 20 10&quot; src&#x3D;&quot;https://user-images.githubusercontent.com/487373/30364538-8bf24e14-985c-11e7-9ffd-0d517948c16a.png&quot;&gt;
This will insert a list that you can now edit inserting text adding links etc.

Then when you put your cursor on the list created above you can change the formatting. Though likely you will always want to use &quot;unnumbered&quot; since you want to embed the preceding number in the link.
&lt;img width&#x3D;&quot;1361&quot; alt&#x3D;&quot;screen shot 2017-09-13 at 08 20 20&quot; src&#x3D;&quot;https://user-images.githubusercontent.com/487373/30364539-8bf428a6-985c-11e7-8161-ee395b6f958e.png&quot;&gt;

Use the indentation icons to changed the nesting of the lists:
&lt;img width&#x3D;&quot;1385&quot; alt&#x3D;&quot;indent&quot; src&#x3D;&quot;https://user-images.githubusercontent.com/487373/30785879-550ce654-a165-11e7-8c6b-f1c02092124a.png&quot;&gt;

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/155#issuecomment-331954811) on: **2017-9-25**

Perfect, gives me exactly what I need. Thank you!
