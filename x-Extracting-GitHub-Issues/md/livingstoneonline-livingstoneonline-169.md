# [Desktop: Alt text in various places](https://github.com/livingstoneonline/livingstoneonline/issues/169)

> state: **closed** opened by: **awisnicki** on: **2017-7-1**

The alt text on the share icons, search box, browse, and nav tabs needs to be correct on home, grid, and section pages.

Be sure to confirm on each of the three kinds of pages as it&#x27;s also inconsistent page to page (i.e., home page is done differently from grid page, etc.).

1) For share icons, search box, and browse, please see the alt text we already used for he manuscript viewer and implement that here.

2) For nav tabs, alt text should simply say what the nav tabs say. Right now, the text is prefaced with &quot;Section pages:&quot;

3) Could we have alt text on the grid boxes that simply said what appears in the grid boxes on mouseover, namely &quot;title colon tag line&quot; e.g. &quot;The Design of Livingstone Online: Creative Collaboration in Action.&quot; I think have such alt text would help visually impaired readers who may have issues with the contrast of text v. images on the grid boxes themselves.

4) Since the site logo (on all levels) is an image (rather than text), it should probably also have alt text.

5) The little circles that allow users to select an image on the home page should probably also have alt text: Home Page Image 1, Home Page Image 2, etc.

6)  The institutional logos on the home page should also have alt text.

7) The images on the carousel should have alt text. The alt text can be &quot;Image:&quot; plus the name of the page to which the image corresponds: &quot;Image: Project Team&quot;

8) For the arrows at the right and left ends of the carousel, please put alt text: &quot;Scroll Left in Carousel&quot; and &quot;Scroll Right in Carousel&quot;

9) To be consistent across the site, I think we should follow the pattern of capitalizing the first word on any alt text, then putting the rest of it in lower case: &quot;Enter your search terms&quot; I also think it looks better that way.

### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/169#issuecomment-317376764) on: **2017-7-24**

&gt; 1. For share icons, search box, and browse, please see the alt text we already used for he manuscript viewer and implement that here.

&#x27;alt&#x27; text only applies to images, but I&#x27;ve added &#x27;title&#x27; attribute to these elements.

&gt; 2. For nav tabs, alt text should simply say what the nav tabs say. Right now, the text is prefaced with &quot;Section pages:&quot;

This can be controlled via the backend see the image below. I&#x27;ve also changed this in the feature for the menu content.

&lt;img width&#x3D;&quot;1659&quot; alt&#x3D;&quot;screen shot 2017-07-24 at 11 06 05&quot; src&#x3D;&quot;https://user-images.githubusercontent.com/487373/28518533-1fc32106-7060-11e7-8d67-b88bb4e6a94b.png&quot;&gt;

&gt; 3. Could we have alt text on the grid boxes that simply said what appears in the grid boxes on mouseover, namely &quot;title colon tag line&quot; e.g. &quot;The Design of Livingstone Online: Creative Collaboration in Action.&quot; I think have such alt text would help visually impaired readers who may have issues with the contrast of text v. images on the grid boxes themselves.

This can be set directly on the content of the section page like so (click edit):

&lt;img width&#x3D;&quot;466&quot; alt&#x3D;&quot;screen shot 2017-07-24 at 11 01 36&quot; src&#x3D;&quot;https://user-images.githubusercontent.com/487373/28518391-9e1fdba8-705f-11e7-87af-d9f3afc7e8d7.png&quot;&gt;

Add either &#x27;alt&#x27; or &#x27;title&#x27; text as needed.
&lt;img width&#x3D;&quot;1391&quot; alt&#x3D;&quot;screen shot 2017-07-24 at 11 01 45&quot; src&#x3D;&quot;https://user-images.githubusercontent.com/487373/28518400-a31ce934-705f-11e7-89e5-8f180bb5c499.png&quot;&gt;

&gt; 4. Since the site logo (on all levels) is an image (rather than text), it should probably also have alt text.

Currently the image has the alt text &quot;Home&quot; but this can be changed to be &quot;Livingstone Online: illuminating imperial exploration&quot;, though likely it would be more confusing for blind people? The link (which doesn&#x27;t appear on the home page) also has the &#x27;title&#x27; Home, currently.

&gt; 5. The little circles that allow users to select an image on the home page should probably also have alt text: Home Page Image 1, Home Page Image 2, etc.

They are not images so have no &#x27;alt&#x27; attribute, but I&#x27;ve added a &#x27;title&#x27; attribute to that affect.

&gt; 6. The institutional logos on the home page should also have alt text.

K.

&gt; 7. The images on the carousel should have alt text. The alt text can be &quot;Image:&quot; plus the name of the page to which the image corresponds: &quot;Image: Project Team&quot;

Probably don&#x27;t need the image in-front of it as it&#x27;s implied by the &#x27;alt&#x27; attribute. This can be set in same way as 3.

&gt; 8. For the arrows at the right and left ends of the carousel, please put alt text: &quot;Scroll Left in Carousel&quot; and &quot;Scroll Right in Carousel&quot;
K.

&gt; 9. To be consistent across the site, I think we should follow the pattern of capitalizing the first word on any alt text, then putting the rest of it in lower case: &quot;Enter your search terms&quot; I also think it looks better that way.

K. I assume this is for &#x27;title&#x27; rather than &#x27;alt&#x27; as &#x27;alt&#x27; is not displayed.


---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/169#issuecomment-317574729) on: **2017-7-24**

1. Search title should be &quot;Enter your search terms&quot;
4. Please show me where I change this alt text.
6. Please show me where I change this alt text.

2/3/5/7/8/9. Resolved. Thank you.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/169#issuecomment-318690332) on: **2017-7-28**

&gt; 1. Search title should be &quot;Enter your search terms&quot;

K

&gt; 2. Please show me where I change this alt text.

For both of these just follow the breadcrumbs shown in blue at the top of the page in both images.

So admin bar -&gt; Structure -&gt; Menu -&gt; (whichever menu) -&gt; (whichever link)

And the field is in the fieldset &quot;Menu Link attributes&quot;, it&#x27;s the first text field. Shown in the bottom of the image.

&gt; 3. Please show me where I change this alt text.

Just click on edit for the Grid Image (any section page) and you&#x27;ll be presented with the form shown in the image above. 
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/169#issuecomment-318744297) on: **2017-7-28**

Everything that was on here is resolved. However, in reviewing this, I noticed that the title text for two buttons needs to be adjusted. In the spectral image viewer, for Processing Details, it shows &quot;Display Processing Details&quot; and for the Archival Packets, the title text is &quot;Download Archival Packet&quot;. In both cases, please decapitalize the 2nd and 3rd words.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/169#issuecomment-320033360) on: **2017-8-3**

Should be sorted.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/169#issuecomment-320079003) on: **2017-8-3**

Great. Thank you! Sorry one more small thing with these two buttons. Currently they are slightly too high so that the bottoms of them are not level with the bottom of the spectral image dropdown to the left. It&#x27;s literally just a touch that&#x27;s needed. Feel free to close this ticket once you done it.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/169#issuecomment-320390040) on: **2017-8-4**

This one&#x27;s a wrap. Thank you!
