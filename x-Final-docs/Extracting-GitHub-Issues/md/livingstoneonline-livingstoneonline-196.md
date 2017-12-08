# [Mobile: Minor issues](https://github.com/livingstoneonline/livingstoneonline/issues/196)

> state: **closed** opened by: **awisnicki** on: **2017-8-4**

In looking at the site on stage on my mobile, I found four minor issues. See screen shots. The first two are taken from the following page but are not exclusive to it: http://livingstonestage.lib.umd.edu/about-this-site/leap-2013-2017-project-history-part-ii

1. The tooltips are not the right shade of blue. They should be the same as hyperlinks. See image for the different colors. (This is not exclusively a mobile issue; I just caught it on mobile). The first screen shot below shows this.

2. The images used to illustrate section pages should of course narrow like the text. However, some images are spilling off the page. The second screen shot below shows this.

3. On the timeline, occasionally some text is being rendered off the screen. See third screen shot below, text on the left.

4. Critical edition subpages are showing the grid image. See fourth screen shot below.

![img_6906](https://user-images.githubusercontent.com/12518623/28992885-02106b98-796e-11e7-97d8-141e51a2391c.PNG)
![img_6907](https://user-images.githubusercontent.com/12518623/28992883-020750d0-796e-11e7-91cb-c8823288213f.PNG)
![img_6908](https://user-images.githubusercontent.com/12518623/28992884-020ba28e-796e-11e7-9920-fcaad627793b.PNG)
![img_6909](https://user-images.githubusercontent.com/12518623/28992929-42bcc000-796f-11e7-97e3-79a454fc4252.PNG)



### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/196#issuecomment-320529392) on: **2017-8-6**

&gt; 1. The tooltips are not the right shade of blue. They should be the same as hyperlinks. See image for the different colors. (This is not exclusively a mobile issue; I just caught it on mobile). The first screen shot below shows this.

Should be sorted now.

&gt; 2. The images used to illustrate section pages should of course narrow like the text. However, some images are spilling off the page. The second screen shot below shows this.

This issue exists on production as well, it&#x27;s cause you have a hard-coded width for the table in the HTML. You&#x27;ll have to remove that from the nodes content.

&lt;img width&#x3D;&quot;1283&quot; alt&#x3D;&quot;screen shot 2017-08-06 at 20 51 50&quot; src&#x3D;&quot;https://user-images.githubusercontent.com/487373/29006616-330123d6-7aeb-11e7-8ebd-b45e7a28b6e4.png&quot;&gt;

&gt; 3. On the timeline, occasionally some text is being rendered off the screen. See third screen shot below, text on the left.

Issue with older iPhones, should be sorted now.

&gt; 4. Critical edition subpages are showing the grid image. See fourth screen shot below.

This is because the fields are filled out, if no image is placed in them then no image will appear.

&lt;img width&#x3D;&quot;274&quot; alt&#x3D;&quot;screen shot 2017-08-06 at 15 09 10&quot; src&#x3D;&quot;https://user-images.githubusercontent.com/487373/29006630-5d72c750-7aeb-11e7-8494-ab07e4a5ef12.png&quot;&gt;

When I do the migration I&#x27;ll remove this &#x27;place holder&#x27; images from the nodes content.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/196#issuecomment-320533630) on: **2017-8-6**

1/3. Looks good. Thank you!
4. I&#x27;ll leave that with you. I&#x27;ve added a note about it to ticket #159.
2. Although what you&#x27;ve indicated is correct, I don&#x27;t think that&#x27;s the issue. See screen shot, which shows the same image on prod (left) and stage (right). As you can see, the image on prod -- despite the fixed width -- still sizes correctly on mobile.
![screen shot 2017-08-06 at 16 17 48](https://user-images.githubusercontent.com/12518623/29007161-0bd61a78-7ac3-11e7-9128-ab35cb4b8cba.png)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/196#issuecomment-320578516) on: **2017-8-7**

&gt; 2. Although what you&#x27;ve indicated is correct, I don&#x27;t think that&#x27;s the issue. See screen shot, which shows the same image on prod (left) and stage (right). As you can see, the image on prod -- despite the fixed width -- still sizes correctly on mobile.

If you check with Chrome (and likely other browsers) aside from Firefox / iPhone you&#x27;ll see the issue exists on production. 

The reason it&#x27;s working on Firefox, iPhone is because &#x60;max-width: 100%&#x60; is also specified for tables on production. 

The spec (the CSS 3 spec for CSS Intrinsic &amp; Extrinsic Sizing refers to the CSS 2.1 spec on this rule) clearly states (https://drafts.csswg.org/css-sizing-3/#width-height-keywords):

&gt; all elements but non-replaced inline elements, table rows, and row groups
which would mean it should apply to table elements.

This means Chrome is in the wrong, but there&#x27;s nothing we can do about that.

Either way for this to work on all browsers you can&#x27;t use explicit &#x60;width&#x60; on table elements, try instead to use only &#x60;max-width&#x60; when you&#x27;re specifying that you want the image to be at most a certain size, which should be safe.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/196#issuecomment-320661357) on: **2017-8-7**

Ok, thanks for letting me know and looking into this. Interesting to learn about this shortcoming of Chrome. Is there any way of generating a list of pages with tables/images that have a width set like this? It&#x27;s easy to fix, but without list, I&#x27;ll have to go through the pages one by one to find the bits to fix.
