# [Access and Upload Options](https://github.com/livingstoneonline/livingstoneonline/issues/206)

> state: **closed** opened by: **awisnicki** on: **2017-9-7**

I&#x27;ve been looking at stage and see that a few back end pages that are accessible from prod are no longer visible from stage. Screen shots below. These pages are helpful in that they let me add media to the site and also review content.

The following pages let me add one file or many files in bulk. The functionality of these may be covered by the filebrowser that&#x27;s been added, but am noting just in case:

![screen shot 2017-09-07 at 11 46 54](https://user-images.githubusercontent.com/12518623/30175035-c1531c12-93c2-11e7-8c7d-f2cc698415d6.png)
![screen shot 2017-09-07 at 11 46 58](https://user-images.githubusercontent.com/12518623/30175036-c166de00-93c2-11e7-936c-fe9afc8c472d.png)

However, I don&#x27;t believe the filebrowser will cover the functionality of the following page:

![screen shot 2017-09-07 at 11 47 09](https://user-images.githubusercontent.com/12518623/30175047-cd7e63ac-93c2-11e7-98db-e13467fba301.png)

This page lets me review and sort content in various forms, so it would be good to have it kept in the new site.



### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/206#issuecomment-327859220) on: **2017-9-7**

From a quick glance now, I don&#x27;t see anything else useful that&#x27;s missing on stage, but I&#x27;ll try to do a more thorough review later today.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/206#issuecomment-328124834) on: **2017-9-8**

Here are a few more things that I can&#x27;t currently see how to adjust on stage:

Where to change the title for Search bar and Browse button.
Where to edit text &amp; link for image credits, site guide on home page; footer text on levels 2/3.
Where to initiate a manual backup of the database as well as where to set location.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/206#issuecomment-329082585) on: **2017-9-13**

You can now access the file browsers (on stage):

&lt;img width&#x3D;&quot;1440&quot; alt&#x3D;&quot;screen shot 2017-09-13 at 08 17 16&quot; src&#x3D;&quot;https://user-images.githubusercontent.com/487373/30364601-d927d884-985c-11e7-85e9-0b189bc68b16.png&quot;&gt;

&gt; This page lets me review and sort content in various forms, so it would be good to have it kept in the new site.

The content page is available in its normal location.

&gt; Where to change the title for Search bar and Browse button.

It&#x27;s hard coded.

&gt; Where to edit text &amp; link for image credits, site guide on home page; footer text on levels 2/3.

It&#x27;s all hard coded.

&gt; Where to initiate a manual backup of the database as well as where to set location.

Backups are not setup for staging server (don&#x27;t want to accidentally overwrite production, etc). The testing of this will have to wait for deployment to production.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/206#issuecomment-329748048) on: **2017-9-15**

I see Filebrowser and you&#x27;re right that the content page is in the normal location. Not sure how I previously missed it!

For the hard-coded items, can you tell me the location of each of them in case I want to edit in the future. For instance, I plan to edit the footer text soon.

Re: backups, OK, I&#x27;ll revisit.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/206#issuecomment-329845043) on: **2017-9-15**

Search:
https://github.com/livingstoneonline/livingstone_online_theme/blob/dev/includes/alter.inc#L18-L19

Footer:

https://github.com/livingstoneonline/livingstone_online_theme/blob/dev/templates/system/page.tpl.php#L139-L141
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/206#issuecomment-329845232) on: **2017-9-15**

I&#x27;ll create a seperate ticket to track backups on production
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/206#issuecomment-329847463) on: **2017-9-15**

Thanks for Search and Footer links. Please note that we still need: Browse and text/link for &quot;image credits&quot; and &quot;site guide&quot; on the home page.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/206#issuecomment-329848370) on: **2017-9-15**

Oh sorry that is here:

https://github.com/livingstoneonline/livingstone_online_theme/blob/dev/templates/system/page--front.tpl.php#L95-L103
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/206#issuecomment-329865896) on: **2017-9-15**

Almost there. Still need the Browse link.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/206#issuecomment-331071805) on: **2017-9-21**

Browse by widget: https://github.com/livingstoneonline/livingstone_online_module/blob/dev/theme/livingstone-browse-collection-block.tpl.php
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/206#issuecomment-331212265) on: **2017-9-21**

Great. Thank you!
