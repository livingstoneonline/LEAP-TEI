# [Spectral image viewer: buttons](https://github.com/livingstoneonline/livingstoneonline/issues/93)

> state: **closed** opened by: **awisnicki** on: **2016-11-2**

Each spectral image pane should have three buttons at the top:

1) Button for &quot;Select spectral image type&quot; (already there).
2) Button for &quot;Download archival packet [size]&quot; (not always there)
3) Button for &quot;Processing details&quot; that will link to &quot;/spectral-imaging/notes-processed-spectral-images&quot; (relative link).

Please put a little space between the buttons and center them in the pane. The shortening of the spectral image names should create more room for the other two to all fit on one line.

Button 1 can be shortened to &quot;Select spectral image&quot; if necessary and button 3 can be shortened to &quot;Download packet [size]&quot; if necessary.

### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/93#issuecomment-257982303) on: **2016-11-2**

&gt; Button for &quot;Download archival packet [size]&quot; (not always there)

It currently only shows up when the image is displayed in full to save space in when viewing item details / transcription / compare. I can add it back in those cases but it does look a bit cramped.

&gt; Button for &quot;Processing details&quot; that will link to &quot;/spectral-imaging/notes-processed-spectral-images&quot; (relative link).

I&#x27;m not sure what you mean by relative link. Should it use the identifier for the document or page? Something like &quot;/spectral-imaging/notes-processed-spectral-images/liv_000097_0001&quot;, or just that the link should always go to &quot;/spectral-imaging/notes-processed-spectral-images&quot;. If it&#x27;s the later case, perhaps we should add the link to the item details page since it doesn&#x27;t change dynamically with the content and takes up valuable screen real estate?

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/93#issuecomment-257991699) on: **2016-11-2**

From my perspective, if we&#x27;re going to have buttons hoovering over the image, then one, two or three doesn&#x27;t matter, particularly if they&#x27;ll all be on one line and centered (from left and right) in the pane. 

In terms of the relative link, what I meant is:

http://livingstonestage.lib.umd.edu/spectral-imaging/notes-processed-spectral-images
http://livingstoneonline.org/spectral-imaging/notes-processed-spectral-images

so the second part of the URL stays the same, even if the version of the site changes. This link should open in a new tab and is necessary for users to understand what the spectral image names mean so I would like to keep it with the other two buttons that will hover over the image. Hopefully we can shorten up the text on the buttons so they don&#x27;t look too crammed together.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/93#issuecomment-258106106) on: **2016-11-3**

&gt; From my perspective, if we&#x27;re going to have buttons hoovering over the image, then one, two or three doesn&#x27;t matter, particularly if they&#x27;ll all be on one line and centered (from left and right) in the pane.

Doesn&#x27;t seem like there is enough room for all three on the same line for mobile and smaller resolutions.

&lt;img width&#x3D;&quot;565&quot; alt&#x3D;&quot;screen shot 2016-11-03 at 10 20 33&quot; src&#x3D;&quot;https://cloud.githubusercontent.com/assets/487373/19962386/3fea5df8-a1af-11e6-8c96-201466cbe7b5.png&quot;&gt;
&lt;img width&#x3D;&quot;358&quot; alt&#x3D;&quot;screen shot 2016-11-03 at 10 20 49&quot; src&#x3D;&quot;https://cloud.githubusercontent.com/assets/487373/19962387/3fec5b44-a1af-11e6-865a-8340ebf1771f.png&quot;&gt;

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/93#issuecomment-258114966) on: **2016-11-3**

I see. For smaller devices, I don&#x27;t think we need the download button so we could hide that. Also, &quot;processing details&quot; could be changed to &quot;processing info&quot; which is slightly shorter. As a last resort, we could change the download button to simply have the down arrow on it (do this first) and the processing button to have a ? mark on it (only do as a last resort). Does that help?

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/93#issuecomment-258465512) on: **2016-11-4**

I hide download on smaller screens, let me know if it&#x27;s acceptable. It&#x27;s on stage for review.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/93#issuecomment-258571690) on: **2016-11-4**

Please adjust the buttons as follows.
1. Order should be: images, &quot;Processing Details&quot;, download
2. Please change the download button to a down arrow and show the size with only one decimal place, so 17.0 MB rather than 17.04 MB (Note: changing to arrow will give you more space so that you can you use the &quot;Processing Details&quot; text [notice second word and that it is capitalized.]).
3. The download and processing buttons are slightly higher than the images button. All should be at the same levels.
4. Is the font in all these buttons the same font, size, and color as the buttons at the top of the screen? If not, I would like everything to match the text in the buttons at the top of the screen.
5. The text in the download and processing buttons is not centered vertically.
6. Once you change &quot;Download&quot; to an arrow, you may not need to hide it at smaller resolutions.
7. The corners of the buttons look somewhat straight. This may be a trick of them being on a black field, but is there any way to make the corners more rounded?
8. The &quot;Processing Details&quot; button should open a new tab.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/93#issuecomment-260077180) on: **2016-11-11**

Ready for review on stage.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/93#issuecomment-260098617) on: **2016-11-11**

It looks like you took care of most of the issues, so thank you. However I still see a few things: 
1) Sizing on the site has gone off somehow. 
a) When I open the random level 2 page, everything thing is slightly too small. It&#x27;s like I hit command+minus once (although I didn&#x27;t)
![screen shot 2016-11-11 at 21 13 46](https://cloud.githubusercontent.com/assets/12518623/20235303/ff6cf244-a853-11e6-8e2e-d9c6b0424e7b.png)
b) Conversely, when I open the manuscript viewer it&#x27;s slightly too big, as if I hit command+plus once (I didn&#x27;t). For instance, look at the page header:
![screen shot 2016-11-11 at 21 07 39](https://cloud.githubusercontent.com/assets/12518623/20235312/2ae069c4-a854-11e6-869d-3bcfcb40b285.png)
c) When I do hit command+minus, then everything goes the right size:
![screen shot 2016-11-11 at 21 25 40](https://cloud.githubusercontent.com/assets/12518623/20235368/81891edc-a855-11e6-9c3c-f5a6bdb48581.png)

2) The fonts in the buttons are still not worked out right. The size and kind of fonts in the buttons on the viewer should all match the button fonts on, for instance, the Multi-XSLT viewer. Right now the spectral image dropdown font looks like it&#x27;s too big and the fonts in the other buttons looks too dark when compared to the Multi-XSLT viewer.

3) If I select a page and open the transcription, it goes to the right place. However, if in the image I use the left or right arrow buttons to change pages, the transcription does not automatically go to the right place when the image changes.

4) The font in the spectral image type tooltip doesn&#x27;t have too be that small. It can be just small enough so that the tooltip is the same width as the dropdown.

5) As I go to mobile, there is a point where the buttons go to two lines. This should not happen. See screen shot:
![screen shot 2016-11-11 at 21 09 28](https://cloud.githubusercontent.com/assets/12518623/20235351/357d74b6-a855-11e6-8cc6-baa349838ffc.png)

 When I open this page, it&#x27;s sized too big. See screen shot below. When I hit command+minus it gets smaller and goes to the right size. There wasn&#x27;t this issue before:

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/93#issuecomment-260099194) on: **2016-11-11**

One additional question, the viewer (both in spectral mode and not) has a lot of buttons. Could we put titles on these so that a tooltip poped up when someone mouseover them. The buttons would be:

(left to right, top row):
menu
home
email
facebook
twitter
pintrest
zoom in
slider
zoom out
rotate
page no.
item details
transcription
compare spectral images
search

(left to right, second row)
spectral image type
processing details
download

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/93#issuecomment-260186848) on: **2016-11-13**

&gt; 1) Sizing on the site has gone off somehow. 
&gt; a) When I open the random level 2 page, everything thing is slightly too small. It&#x27;s like I hit command+minus once (although I didn&#x27;t)

There hasn&#x27;t been any changes to the css that governs level 2 pages, try using zoom reset in your browser:

&lt;img width&#x3D;&quot;1438&quot; alt&#x3D;&quot;screen shot 2016-11-13 at 13 13 34&quot; src&#x3D;&quot;https://cloud.githubusercontent.com/assets/487373/20245904/155ef566-a9a3-11e6-87a7-ea3fd6db5e46.png&quot;&gt;

&gt; b) Conversely, when I open the manuscript viewer it&#x27;s slightly too big, as if I hit command+plus once (I didn&#x27;t). For instance, look at the page header:

I can&#x27;t reproduce this either with the default zoom settings, can you try resetting the zoom to it&#x27;s default as shown above.

&gt; 2) The fonts in the buttons are still not worked out right. The size and kind of fonts in the buttons on the viewer should all match the button fonts on, for instance, the Multi-XSLT viewer. Right now the spectral image dropdown font looks like it&#x27;s too big and the fonts in the other buttons looks too dark when compared to the Multi-XSLT viewer.

Now set to the same size and color as the Multi-XSLT viewer (0.9em and #333)

&gt; 3) If I select a page and open the transcription, it goes to the right place. However, if in the image I use the left or right arrow buttons to change pages, the transcription does not automatically go to the right place when the image changes.

This appears to be working in that changing the image will cause the transcription to move, but I think the confusion is from changing from one image to the next, which is not necessarily the same as change to the next page.

In some objects an image will be represented by multiple pages so by switching images we can jump over a number of pages. I can change this so that it jumps by a page at a time (rather than by an image at a time), but this will result in times when the user clicks on next in the image but nothing visibly happens in the image panel. If they are only looking at the image which would be confusing I think.

&gt; 4) The font in the spectral image type tooltip doesn&#x27;t have too be that small. It can be just small enough so that the tooltip is the same width as the dropdown.

If I make it larger then it won&#x27;t be the same width. I&#x27;m not sure what your asking for?

&lt;img width&#x3D;&quot;491&quot; alt&#x3D;&quot;screen shot 2016-11-13 at 13 29 24&quot; src&#x3D;&quot;https://cloud.githubusercontent.com/assets/487373/20246002/4ccf7e74-a9a5-11e6-8ff8-321f288cf0f7.png&quot;&gt;

&gt; 5) As I go to mobile, there is a point where the buttons go to two lines. This should not happen. See screen shot:

Should be sorted now.

&gt; When I open this page, it&#x27;s sized too big. See screen shot below. When I hit command+minus it gets smaller and goes to the right size. There wasn&#x27;t this issue before.

Just reset it to the defaults, and you shouldn&#x27;t have an issue.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/93#issuecomment-260186943) on: **2016-11-13**

&gt; One additional question, the viewer (both in spectral mode and not) has a lot of buttons. Could we put titles on these so that a tooltip poped up when someone mouseover them. 

Sure but lets make that into a separate ticket.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/93#issuecomment-260189854) on: **2016-11-13**

&gt; There hasn&#x27;t been any changes to the css that governs level 2 pages, try using zoom reset in your browser:
&gt; 
&gt; I can&#x27;t reproduce this either with the default zoom settings, can you try resetting the zoom to it&#x27;s default as shown above.
&gt; 
&gt; Just reset it to the defaults, and you shouldn&#x27;t have an issue.

Level 2 pages are OK now. I I tried resetting as you suggest,  that but it didn&#x27;t work for the view. See screen shot.
![screen shot 2016-11-13 at 14 23 29](https://cloud.githubusercontent.com/assets/12518623/20246361/493b3d36-a9ad-11e6-8b19-f8c4025fbcd0.png)

&gt;  set to the same size and color as the Multi-XSLT viewer (0.9em and #333)

Everything looks good except two things: 1) I&#x27;m not sure the text in the search bar is the right size or, at least, has the right spacing between characters. The font size in the spectral image dropdown is still too big.

&gt; If I make it larger then it won&#x27;t be the same width. I&#x27;m not sure what your asking for?

Well, once you reduce the font on the spectral image dropdown it may narrow a bit. Let&#x27;s do that first. In the image you posted, the dropdown and popup appear to be the same width which is what I&#x27;d like to have.

This appears to be working in that changing the image will cause the transcription to move, but I think the confusion is from changing from one image to the next, which is not necessarily the same as change to the next page.

&gt; In some objects an image will be represented by multiple pages so by switching images we can jump over a number of pages. I can change this so that it jumps by a page at a time (rather than by an image at a time), but this will result in times when the user clicks on next in the image but nothing visibly happens in the image panel. If they are only looking at the image which would be confusing I think.

In terms of this comment, what I meant is that I was changing pages, not spectral images. So open it where an image is at left, then a transcription is at right. Inside the image box, click on the right or left arrow. The image changes to a new page, but the transcription stays in the same place whereas it should go to the new page.

&gt; 5) As I go to mobile, there is a point where the buttons go to two lines. This should not happen. See screen shot:
&gt; 
&gt; Should be sorted now.

There&#x27;s still some odd ghost text that appears. See screen shot.

![screen shot 2016-11-13 at 14 33 35](https://cloud.githubusercontent.com/assets/12518623/20246428/6ac8e182-a9ae-11e6-8dbf-e8fb6787e5d8.png)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/93#issuecomment-260192759) on: **2016-11-13**

&gt; Level 2 pages are OK now. I I tried resetting as you suggest, that but it didn&#x27;t work for the view. See screen shot.

You&#x27;ll have to reset it on this page as well, as the browse remembers the zoom settings on a page by page basis.

&gt; Everything looks good except two things: 1) I&#x27;m not sure the text in the search bar is the right size or, at least, has the right spacing between characters.

I&#x27;ve changed it back.

&gt; The font size in the spectral image dropdown is still too big.

It&#x27;s the same size as the Multi-XSLT page which you requested for all the text/icons? Are you certain you wish for me to decrease the size, and if that&#x27;s the case do mean to do so for all icons everywhere or just this single instance?

&gt; Well, once you reduce the font on the spectral image dropdown it may narrow a bit. Let&#x27;s do that first. In the image you posted, the dropdown and popup appear to be the same width which is what I&#x27;d like to have.

First we must decided if we want different sizes or the same for buttons and select fields?

&gt; In terms of this comment, what I meant is that I was changing pages, not spectral images. So open it where an image is at left, then a transcription is at right. Inside the image box, click on the right or left arrow. The image changes to a new page, but the transcription stays in the same place whereas it should go to the new page.

If it&#x27;s not changing at all? I can&#x27;t seem to reproduce this behavior then on firefox or chrome. Can you send me the identifier of the manuscript you&#x27;re looking at and the pages your moving between? It might be something with the individual manuscript.

&gt; There&#x27;s still some odd ghost text that appears. See screen shot.

Should be sorted.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/93#issuecomment-260209303) on: **2016-11-13**

See screen shot and let me know if this clarifies the sizing/breakpoint issues?

![screen shot 2016-11-13 at 20 06 29](https://cloud.githubusercontent.com/assets/12518623/20248492/212c578c-a9dd-11e6-94da-b28b4d64022f.png)

In terms of the page change issue, go to this page (although the problem is not limited to this page), then do the following:
1. Push transcription button. 
2. In the image window, push the right arrow. You&#x27;ll notice that the doesn&#x27;t doesn&#x27;t move although the page has changed.
3. Once you&#x27;ve push the right arrow once or twice, push the left arrow, you&#x27;ll see that the transcription text still doesn&#x27;t move.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/93#issuecomment-260302769) on: **2016-11-14**

Try this page:
http://livingstonestage.lib.umd.edu/islandora/search?access&#x3D;view_spectral&amp;view_pid&#x3D;liv%3A000206&amp;view_page&#x3D;0
but again it&#x27;s not limited to any one page.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/93#issuecomment-260471814) on: **2016-11-14**

Looks good. Thank you!

