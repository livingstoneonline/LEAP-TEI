# [MS Viewer: Mobile Review](https://github.com/livingstoneonline/livingstoneonline/issues/55)

> state: **closed** opened by: **nigelgbanks** on: **2016-6-14**

For the sake of brevity I&#x27;m combining all the mobile aspects of the viewer into a single ticket. I&#x27;ve made quite a few changes in the last week, some are incompatible with other choices but I feel the affect is nicer. For example when viewing in the iPhone, in portrait the icons are left aligned but in landscape they are centre aligned. Please review what&#x27;s currently on stage and put any feed back in this ticket, I&#x27;m going to close the others.


### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/55#issuecomment-225966475) on: **2016-6-14**

Header looks fine and, in relation to mobile, I understand why you&#x27;d like to distribute the things along the top in this way. So all good.

A couple of notes:
1. Please bring the &quot;Item Details&quot; and &quot;Transcriptions&quot; buttons closer together. Make the distance between these two buttons the same as between the + magnifying glass and rotate buttons. You can take the extra space and put it to the left of the dropdown page number
2. In the search box, you should have the text &quot;Search the entire site&quot; in gray and the text box should be white (same as on Kathy&#x27;s Amazon dev site.)
3. A couple of bugs on Filezilla: Page numbers in the dropdown are too big. Arrows and page numbers currently don&#x27;t work, so you can&#x27;t switch from first page to anything else.
4. I think it&#x27;d like to go with icons centered in iPhone portrait.
5. iPhone 5 portrait is wonky. Please review.

Also, one question: 
1. I thought that for portrait in iPhone etc we were going to have Images/Item Details/Transcription each be full screen? Right now it&#x27;s split half and half.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/55#issuecomment-226224215) on: **2016-6-15**

All the above points should be addressed on stage.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/55#issuecomment-226237115) on: **2016-6-15**

Yes, everything looks good. Thank you!

I&#x27;ve found one last bug. Once you resolve this, you can close this ticket:

On iPhone, when I&#x27;m iPhone 5, when I&#x27;m looking first at Item Details (so only that button is highlighted) and then push the button for Transcription, the Transcription comes up (so now both buttons are highlighted).

However,  I&#x27;m looking first at Transcription (so only that button is highlighted) and then push the button for Item Details, nothing happens (so now both buttons are highlighted).

Is it possible to make it so that when both buttons are highlighted, the last of the two buttons pushed comes up?

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/55#issuecomment-226534916) on: **2016-6-16**

I&#x27;ve changed it so that they toggle (only on lower resolution screens, but we can do it for large as well). So now when you click on item details it will close transcription and vice versa.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/55#issuecomment-226544289) on: **2016-6-16**

I can&#x27;t check this because for some reason images aren&#x27;t currently coming up in the viewer.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/55#issuecomment-226549366) on: **2016-6-16**

Should be sorted now.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/55#issuecomment-226567896) on: **2016-6-16**

Looks good!

