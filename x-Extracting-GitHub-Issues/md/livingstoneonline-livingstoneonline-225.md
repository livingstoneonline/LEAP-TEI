# [Issue with Spectral Image Viewer](https://github.com/livingstoneonline/livingstoneonline/issues/225)

> state: **closed** opened by: **awisnicki** on: **2017-9-19**

I&#x27;ve just been using the spectral image viewer (on prod) and, on laptop at least, find that there is something wrong with the image display pane. On first visiting the page, you can drag the images around, but once you go to transcription view, then switch to a spectral image, it becomes difficult to drag the image around, and when you move the pointer onto the transcription the image still drags around. However, at a certain point it also locks and cannot be moved around and the zoom slider stops working. I&#x27;m using the trackpad rather than a mouse.

### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/225#issuecomment-330603096) on: **2017-9-19**

Here&#x27;s the page I was looking at: http://livingstoneonline.org/islandora/search/%221871%20Field%20Diary%22%20NOT%20integrated%20NOT%20segment?access&#x3D;all&amp;limit&#x3D;catalogue&amp;view_pid&#x3D;liv%3A000095&amp;view_page&#x3D;0
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/225#issuecomment-330620847) on: **2017-9-19**

Locking issue should be sorted now, also it won&#x27;t move when dragging over the transcription, but it also doesn&#x27;t stop dragging if you move back over the image, we were fortunate in that the Openseadragon team just resolve this issue recently: https://github.com/openseadragon/openseadragon/pull/1133.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/225#issuecomment-330638210) on: **2017-9-19**

That is good fortune indeed. Thanks for sorting this out so fast. Looks good!
