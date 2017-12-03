# [Critical edition pages: carousel and share icons](https://github.com/livingstoneonline/livingstoneonline/issues/99)

> state: **closed** opened by: **awisnicki** on: **2016-11-10**

When a page is in a critical edition, but does not have a level two tile it loses the carousel (at the top of the page) and the share icons, etc. at the bottom of the page. For instance, take a look at this page: http://livingstonestage.lib.umd.edu/diary-across-hands-space-and-time-2

This is not correct. Each page in the critical edition should be governed by the main critical edition page and should have the same colored carousel plus the share icons at bottom. So in other words a critical edition child page will differ from the critical edition parent page only in that the child does not have the arrows at the sides, but otherwise the page should look exactly the same.

### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/99#issuecomment-260193370) on: **2016-11-13**

If you set the section to &quot;Spectral&quot; it will show the carousel and the share buttons:

&lt;img width&#x3D;&quot;245&quot; alt&#x3D;&quot;screen shot 2016-11-13 at 15 35 20&quot; src&#x3D;&quot;https://cloud.githubusercontent.com/assets/487373/20246805/e6b99798-a9b6-11e6-9408-46087940636e.png&quot;&gt;

If you don&#x27;t want the page to show up as an option in the carousel and on the grid of the spectral page remove it from the node queue.

http://livingstonestage.lib.umd.edu/admin/structure/nodequeue/2/view/2

For example I&#x27;ve done this  for the page:

http://livingstonestage.lib.umd.edu/spectral-imaging/diary-across-hands-space-and-time-2

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/99#issuecomment-260210370) on: **2016-11-13**

Yes, this resolves this. Thank you! Closing this ticket.

