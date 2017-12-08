# [Issues with viewers](https://github.com/livingstoneonline/livingstoneonline/issues/127)

> state: **closed** opened by: **awisnicki** on: **2017-1-31**

This was in an email, but I&#x27;m putting it here so that it doesn&#x27;t get lost.

I&#x27;ve noticed two odd things -- I don&#x27;t know if this is related to the work you&#x27;ve recently been doing. First, tooltips are flashing in an odd way, as at the top of the transcription on this page:

http://livingstoneonline.org/islandora/search?access&#x3D;view_spectral&amp;view_pid&#x3D;liv%3A002570&amp;view_page&#x3D;0

Second, you&#x27;ll note note in the ms viewer and in the multiviewer there&#x27;s an odd additonal scrollbar that doesn&#x27;t work. See attached screen shots. This appears to be tied to the height of the iframe which seems to need to be turned off.

![screen shot 2017-01-24 at 20 26 53](https://cloud.githubusercontent.com/assets/12518623/22488204/57d13b7c-e7d6-11e6-82c2-2eaaa9e8bacb.png)
![screen shot 2017-01-24 at 20 26 56](https://cloud.githubusercontent.com/assets/12518623/22488203/57d0b1ca-e7d6-11e6-8d6d-5dfd5e067a1a.png)

### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/127#issuecomment-284707897) on: **2017-3-7**

Just note for self the tooltip issue has been resolved. Double scroll bars still remain, they require a significant change in rendering (no longer using iframes), they were introduced to deal with bugs in the iPhone when rendering content in iFrames.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/127#issuecomment-306582520) on: **2017-6-6**

Should now be sorted on stage, further changes are needed to the xslt styles in LEAP-XSLT but we&#x27;ll have to chat about that on Thursday.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/127#issuecomment-306934079) on: **2017-6-7**

OK, sounds like this is related to some of the issues I raised in #107. I&#x27;ll leave this open for now so we don&#x27;t forget about this.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/127#issuecomment-307235787) on: **2017-6-8**

Sounds like we&#x27;ll come back to this so leaving open for now.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/127#issuecomment-308068832) on: **2017-6-13**

What we discussed on Thursday is captured in: https://github.com/livingstoneonline/livingstoneonline/issues/137, the issue that this ticket references has been resolved on stage. I move that we close this issue.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/127#issuecomment-308127974) on: **2017-6-13**

Motion granted!
