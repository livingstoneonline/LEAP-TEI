# [Issue on Prod: Level 3 Title Disappearing](https://github.com/livingstoneonline/livingstoneonline/issues/75)

> state: **closed** opened by: **awisnicki** on: **2016-8-15**

This is the same issue that came up before. The title on level 3 pages is visible, but if you click a link that&#x27;s anchored to a place lower down on the page, then scroll back up, the title is gone. 

You of course got this close to working, it was fine, then I noticed the other day that the issue had returned. I went into the back end, fixed it exactly as you did (oddly the setting had changed since you set it up correctly), but this time changing the settings didn&#x27;t work.

This doesn&#x27;t have to work perfectly -- if, say, the title simply moves closer to the carousel that will be OK -- but the title can&#x27;t be disappearing as now.

![screen shot 2016-08-15 at 16 09 32](https://cloud.githubusercontent.com/assets/12518623/17679952/695dab12-6303-11e6-881d-392050843a38.png)
![screen shot 2016-08-15 at 16 09 38](https://cloud.githubusercontent.com/assets/12518623/17679951/69598ee2-6303-11e6-9d1f-7707893f62fd.png)


### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/75#issuecomment-242725289) on: **2016-8-26**

Looks good! It looks like we&#x27;re back to the original solution, which was not 100% but does the trick. Is that right? Let me know in case this issue comes up again.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/75#issuecomment-242725942) on: **2016-8-26**

Yup same solution as before, it came back because it was in one of the features which got reapplied (reintroducing the issue again). I&#x27;ve removed it from the feature so it shouldn&#x27;t crop up again.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/75#issuecomment-248760358) on: **2016-9-21**

Nigel, could you fix this issue on stage. It&#x27;s cropped up there. Please don&#x27;t just copy down the prod database to stage as we&#x27;re in the process of developing new content in stage so we don&#x27;t want that overwritten. 

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/75#issuecomment-250513663) on: **2016-9-29**

I can&#x27;t seem to reproduce it?

