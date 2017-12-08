# [Browse by Catalogue: Notes for IFrame](https://github.com/livingstoneonline/livingstoneonline/issues/10)

> state: **closed** opened by: **awisnicki** on: **2016-4-29**

When we rebuild the Catalogue, we&#x27;ll want to include the following:
1. Lazy load
2. Sticky header

We&#x27;ll most likely also want to hide the &quot;Repository&quot; column in the default view, but this is something we can explore once the rebuild is done.


### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/10#issuecomment-217036709) on: **2016-5-4**

Lazy load and a sticky header will come a bit later and aren&#x27;t currently deployed but &quot;Repsoitory&quot; is now hidden by default.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/10#issuecomment-217058340) on: **2016-5-4**

OK, looks good. What we&#x27;ll want to do, ultimately, is to create enough space on the right and left sides of the page so that we can add the navigation arrows like we have on the other pages in the site. Leave this open for now.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/10#issuecomment-230949946) on: **2016-7-6**

Since we&#x27;ve taken this up in issue #61, when you get a chance, could you give me an estimate of how much time this would take? There are three things here, I believe: 1) Put the catalogue in an iFrame, 2) add a sticky header, 3) add lazy load.

Also, note that Kathy is working on the page arrows this week, so you can ignore the points above in relation to that.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/10#issuecomment-231132633) on: **2016-7-7**

It&#x27;ll take me a while to do some investigation (what existing tools are out there and how can we integrate them etc), I&#x27;ll try to prep a estimate for the tail end of next week.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/10#issuecomment-232914144) on: **2016-7-15**

I have put about an hour into this and I can&#x27;t find anything that will readily work with Drupal and the form that we can plug in and use immediately, so we&#x27;d have to build something from scratch if we&#x27;re to make use of what Drupal provides for rendering tables and paging, etc. 

That being said there is another tool we could adopt to achieve a buffered table with sorting / searching and the like, provided by Ext JS, that we could embedded into the display.

http://examples.sencha.com/extjs/6.0.1/examples/classic/grid/filtered-buffered-store.html

I&#x27;ve worked with this tool in the past (although that was in it&#x27;s 3.0 version and a lot has changed now that it&#x27;s on version 6.0). 

It has many [many more features](http://examples.sencha.com/extjs/6.0.1/examples/) than dealing with the lazy loading table, which you might be interested in exploring. 

The commercial licence fee is $4,340, but fortunately since this is an open source project we can use it under GPLv3 for free.

Before I spend any more time building an estimate, have a look at the demo and and some of the [other features](http://examples.sencha.com/extjs/6.0.1/examples/) and see if the look and feel interests you or gives you any ideas.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/10#issuecomment-232922498) on: **2016-7-15**

OK, I will check this out and be back in touch. Quick question, when you say &quot;see if the look and feel interests you,&quot; the point is we&#x27;d have to redo the visual appearance of the table correct? In other words, we wouldn&#x27;t be leaving it as is and just changing the underlying functionality/technology?

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/10#issuecomment-232923541) on: **2016-7-15**

It will change in look and feel of the table, we do have the ability to theme the Ext JS (So it won&#x27;t look the same as the demo link above), but the table won&#x27;t look the same as it currently does as well.

Some notable changes:
- It will have a fixed height and width
- Users will be able to adjust the width of columns
- Users will be able to re-order columns
- Users will be able to choose which columns they want to appear

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/10#issuecomment-297122739) on: **2017-4-25**

![revised-catalogue-header](https://cloud.githubusercontent.com/assets/487373/25401286/3f0c01ea-29ed-11e7-9f78-baa7bb9df22a.png)

Columns collapse and on download links can dispear on smaller devices.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/10#issuecomment-297123739) on: **2017-4-25**

Look into having the header sticky (should be posible) also have the title column sticky as well (might be tricky)(
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/10#issuecomment-297138317) on: **2017-4-25**

See issue #131 
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/10#issuecomment-306584154) on: **2017-6-6**

Had a crack at this (sticky header), still not yet resolved as there are issues with implementing this for content that is hidden. Will continue to look into it.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/10#issuecomment-306937524) on: **2017-6-7**

Ok, thank you for your work on this. I&#x27;ll stand by.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/10#issuecomment-308567948) on: **2017-6-14**

It&#x27;s ready to be reviewed.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/10#issuecomment-308574006) on: **2017-6-14**

This works brilliantly on desktop. Thank you.

I looked at mobile also, but see it&#x27;s slightly wonky there. See screen shot.
![img_6340](https://user-images.githubusercontent.com/12518623/27157017-43933cc4-5125-11e7-8849-39497fe66a9d.PNG)

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/10#issuecomment-310345517) on: **2017-6-22**

Just drawing attention to this as another mobile issue.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/10#issuecomment-311063932) on: **2017-6-26**

You didn&#x27;t comment on this. This has been improved, but there&#x27;s still a slightly small space between the top sticky row of the header and the sticky header of the site.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/10#issuecomment-318796423) on: **2017-7-28**

This remains an issue. Please see screen shot. Note that there&#x27;s just a sliver of text peeking through in the circled area.
![img_6861](https://user-images.githubusercontent.com/12518623/28741308-ef1b02ae-73d8-11e7-8cf2-7a77f7189804.PNG)


---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/10#issuecomment-320074584) on: **2017-8-3**

Looks resolved. Thank you~!
