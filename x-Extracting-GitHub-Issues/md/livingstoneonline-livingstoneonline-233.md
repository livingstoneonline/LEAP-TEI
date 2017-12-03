# [Prod Migration Cleanup](https://github.com/livingstoneonline/livingstoneonline/issues/233)

> state: **closed** opened by: **awisnicki** on: **2017-10-31**

I caught some minor issues on prod:

1) When you access home page slides via the Content page (http://livingstoneonline.org/admin/content) and select &quot;edit,&quot; you are given a screen where you have the option of adding alt text and a title: 

![screen shot 2017-10-31 at 22 34 23](https://user-images.githubusercontent.com/12518623/32259035-da2eaf50-be8b-11e7-87d2-84bac2024cbc.png)

If you add something here and save it, then come back to the edit page, the text you added is not saved. Rather you have to select the image, then navigate to the Files view (http://livingstoneonline.org/admin/content/file), find the image, then add alt text and title that way:

![screen shot 2017-10-31 at 22 35 05](https://user-images.githubusercontent.com/12518623/32259048-e50b39de-be8b-11e7-8713-bb474f221d55.png)

This works and then populates this text to the edit view from Content. In short, I can do it this way (and document that it needs to be done this way), but to avoid confusion in the future, it&#x27;s probably best to remove the title and alt text boxes from the content edit view show in the first screen shot above. Also, is it possible to turn off the limit of how much title and alt text you can add? I hit a limit and couldn&#x27;t add characters past a certain point.


2) On the Repository page and the Catalogue, words with accents have an extra space in the middle. See screen shots. This is a single problem, I&#x27;m just showing you a few examples.

![screen shot 2017-09-18 at 10 55 10](https://user-images.githubusercontent.com/12518623/32258801-bbf4ba12-be8a-11e7-9e76-a52e7194daef.png)
![screen shot 2017-09-18 at 10 55 19](https://user-images.githubusercontent.com/12518623/32258802-bc123308-be8a-11e7-8d3e-4dee6b59e38b.png)
![screen shot 2017-09-18 at 10 55 27](https://user-images.githubusercontent.com/12518623/32258803-bc2fe1d2-be8a-11e7-8031-ffef3bcc1ab3.png)
![screen shot 2017-09-18 at 10 55 36](https://user-images.githubusercontent.com/12518623/32258804-bc5dc41c-be8a-11e7-9396-965353895229.png)


### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/233#issuecomment-341118609) on: **2017-11-1**

Two more minor things:
1. The main search box doesn&#x27;t quite work right on first click. On first click it opens the dropdown, but doesn&#x27;t present the cursor, so users have to click a second time to actually type in the box. This wasn&#x27;t an issue before.

2. Odd rendering with some of the transcriptions in the manuscript viewer. See screen shot. This is liv_000019.

![screen shot 2017-11-01 at 07 28 14](https://user-images.githubusercontent.com/12518623/32278988-5efe209a-bee5-11e7-8934-fe0d3ec1baae.png)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/233#issuecomment-341979001) on: **2017-11-5**

&gt; When you access home page slides via the Content page (http://livingstoneonline.org/admin/content) and select &quot;edit,&quot; you are given a screen where you have the option of adding alt text and a title:

Looks like this was a bug introduced into the module recently:

https://www.drupal.org/node/2075745#comment-12313887

I&#x27;ve disabled the fields for now.

&gt; Also, is it possible to turn off the limit of how much title and alt text you can add? I hit a limit and couldn&#x27;t add characters past a certain point.

Unfortunately not its not a setting the module exposes to be configured.

&gt; On the Repository page and the Catalogue, words with accents have an extra space in the middle. See screen shots. This is a single problem, I&#x27;m just showing you a few examples.

This took a while to dig into but it appears to be a bug in Firefox when rendering ext-latin characters using a Google font. I changed the characters manually to an equivalent looking character but one not in ext-latin and that appears to work for all the browsers.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/233#issuecomment-341981998) on: **2017-11-5**

&gt; The main search box doesn&#x27;t quite work right on first click. On first click it opens the dropdown, but doesn&#x27;t present the cursor, so users have to click a second time to actually type in the box. This wasn&#x27;t an issue before.

&gt; Odd rendering with some of the transcriptions in the manuscript viewer. See screen shot. This is liv_000019.

These should be sorted
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/233#issuecomment-342009820) on: **2017-11-5**

Great. Thank you on all of these. Bummer about the limit on alt text/title. Otherwise, everything looks great.
