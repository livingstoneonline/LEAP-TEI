# [Multi-Viewer: Mobile](https://github.com/livingstoneonline/livingstoneonline/issues/110)

> state: **closed** opened by: **awisnicki** on: **2016-11-21**

The multi-viewer is wonky on mobile. You can not slide side to side to see text when it goes out of the pane, and text than should all be the same size renders at multiple sizes. For the latter, see the attached screen shot, where the text shifts from big to small on one page.

![img_4411](https://cloud.githubusercontent.com/assets/12518623/20502779/99472390-b037-11e6-8fdd-23b2f2eb9530.PNG)


### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/110#issuecomment-263295521) on: **2016-11-28**

The CSS issues can largely be handled by a reset style sheet to remove the quirks between browsers. I&#x27;ve added this to the LEAP repository.

https://github.com/livingstoneonline/LEAP-XSLT/blob/gh-pages/reset.css

But this is only the first step, in looking at the various stylesheets in the repo, they were depending on some browser defaults common to Firefox and others for example.

&#x60;&lt;strong&gt;Date of composition:&lt;/strong&gt;&#x60;

Would look like this in Firefox:

&lt;img width&#x3D;&quot;248&quot; alt&#x3D;&quot;firefox&quot; src&#x3D;&quot;https://cloud.githubusercontent.com/assets/487373/20673314/89650358-b57c-11e6-8ed1-fa3d0933794e.png&quot;&gt;

But will look like this when the reset is applied:

&lt;img width&#x3D;&quot;440&quot; alt&#x3D;&quot;reset&quot; src&#x3D;&quot;https://cloud.githubusercontent.com/assets/487373/20673335/9dcf906a-b57c-11e6-8cbe-64bcb75a2a99.png&quot;&gt;

Because by default Firefox provides the style:

&#x60;&#x60;&#x60;css
strong, b {
    font-weight: bold;
}
&#x60;&#x60;&#x60;

So now some of those defaults must be added back in explicitly so they apply to all browsers.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/110#issuecomment-263620655) on: **2016-11-29**

OK, thank for doing this and letting me know about this issue. What would be the next step in tackling this?
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/110#issuecomment-263632704) on: **2016-11-29**

I&#x27;m testing some fixes at the moment.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/110#issuecomment-267847619) on: **2016-12-18**

This has been reworked and deployed to stage &amp; prod for review, I made some more changes to the LEAP-XSLT module to achieve this:

https://github.com/livingstoneonline/LEAP-XSLT/compare/b461df12d5931e873a2e7c343d6966e8f104c195...dd3d7f1b44d93689e1c0c426a59708b15cbb8bee
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/110#issuecomment-268398083) on: **2016-12-20**

The size of text issue on this is now fixed, but on my iPhone 5, at least, when I look at the pages in portrait or landscape I still cannot scroll side to side when the text goes out of the pane. 
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/110#issuecomment-268399018) on: **2016-12-20**

I&#x27;ve realized that the side-to-side issue is also present in mobile in the manuscript viewer, not just on the multi-viewer page.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/110#issuecomment-271379553) on: **2017-1-9**

This should be sorted on production now.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/110#issuecomment-272266393) on: **2017-1-12**

I think the side to side issue cited here is the same one that I just described in #107 so I&#x27;m going to close this ticket. Everything else here seems resolved.
