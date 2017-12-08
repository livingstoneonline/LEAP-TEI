# [MS Viewer: Image padding](https://github.com/livingstoneonline/livingstoneonline/issues/48)

> state: **closed** opened by: **awisnicki** on: **2016-5-31**

Images, when they first appear in the viewer, need some padding at the bottom so that the bottom of the image is not touching the bottom of the browser by default. This was fine before but seems to have been undone by the remove of the thumbnail strip. The padding below the image should be the same as the padding above (which currently looks good).


### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/48#issuecomment-222854931) on: **2016-5-31**

Still not quite right. It seems like you made it smaller.

 Open any image, click &quot;Item Details,&quot; then close &quot;Item Details&quot; and you will see that the padding has changed and is now slightly larger above and below. The images should also by default open with this amount of padding.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/48#issuecomment-222921826) on: **2016-6-1**

I&#x27;ve made the margin a bit larger at the start, we can&#x27;t make it exactly the same as when the item details is showing, as the image will dynamically zoom to keep it&#x27;s proportions. 

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/48#issuecomment-222995023) on: **2016-6-1**

Perfect, thank you! Closing this issue.

