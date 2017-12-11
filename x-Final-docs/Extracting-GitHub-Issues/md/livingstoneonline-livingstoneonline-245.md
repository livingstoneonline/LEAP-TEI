# [Handover](https://github.com/livingstoneonline/livingstoneonline/issues/245)

> state: **closed** opened by: **awisnicki** on: **2017-12-8**

Please merge prod (which is now exactly how we want it) down into stage and please ensure that all branches of livingstone_online_module, livingstone_online_theme, etc. are in sync. Also please be sure to back up before merging.

Please also give me some guidance on how to merge prod into stage (files, code, etc) so I can do it myself going forward.

### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/245#issuecomment-350314313) on: **2017-12-8**

As you&#x27;re merging, please note that I&#x27;m getting the following error on prod when I add new items to Fedora.

![screenshot from 2017-12-08 10-51-18](https://user-images.githubusercontent.com/12518623/33776326-99bf3d98-dc06-11e7-8d97-d096b910b376.png)

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/245#issuecomment-350570260) on: **2017-12-10**

I suspect that this is related to the error in the previous comment, but this problem arose on a separate occasion. If you look at this page, you&#x27;ll see that there are three items that you can view but not download:

http://livingstoneonline.org/in-his-own-words/catalogue?f%5B0%5D&#x3D;repository_ms%3A%22University%20of%20Birmingham.%20Library%22

However, I have uploaded images for all three items per the normal procedure so the camera icon should be visible here and the item images should be viewable.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/245#issuecomment-350584530) on: **2017-12-10**

&gt; Please merge prod (which is now exactly how we want it) down into stage and please ensure that all branches of livingstone_online_module, livingstone_online_theme, etc. are in sync. Also please be sure to back up before merging.

Codes been set.

&gt; Please also give me some guidance on how to merge prod into stage (files, code, etc) so I can do it myself going forward.

Same way to update production just go to the deploy tab and choose stage rather than prod. Note that this doesn&#x27;t move content around just the code. The content can only be moved around manually. It&#x27;s best that you work from production when creating / changing section pages and just mark them as unpublished rather than working with any content on stage directly as changes to the content will get remove during deployments etc.

&gt; As you&#x27;re merging, please note that I&#x27;m getting the following error on prod when I add new items to Fedora.

Those are just notices and warnings, the update worked (the green section above) they aren&#x27;t anything to worry about.

&gt; I suspect that this is related to the error in the previous comment, but this problem arose on a separate occasion. If you look at this page, you&#x27;ll see that there are three items that you can view but not download:

&gt; http://livingstoneonline.org/in-his-own-words/catalogue?f%5B0%5D&#x3D;repository_ms%3A%22University%20of%20Birmingham.%20Library%22

&gt; However, I have uploaded images for all three items per the normal procedure so the camera icon should be visible here and the item images should be viewable.

In this case it was a new bug not related to the warnings above that arose from a configuration change. A fix has been deployed, in the future if you do notice things are off on the browse by catalogue page you can run the &quot;Reindex Solr&quot; job and it should sort it, if not feel free to create a ticket.

&lt;img width&#x3D;&quot;687&quot; alt&#x3D;&quot;screen shot 2017-12-10 at 21 50 24&quot; src&#x3D;&quot;https://user-images.githubusercontent.com/487373/33809783-370f341a-ddf4-11e7-8528-29f882d774f1.png&quot;&gt;

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/245#issuecomment-350599103) on: **2017-12-10**

I do believe we&#x27;re done! All looks good. Thank you so much.
