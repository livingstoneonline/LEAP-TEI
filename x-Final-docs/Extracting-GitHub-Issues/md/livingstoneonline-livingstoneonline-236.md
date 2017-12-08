# [Content not importing into Fedora](https://github.com/livingstoneonline/livingstoneonline/issues/236)

> state: **closed** opened by: **awisnicki** on: **2017-11-2**

I ran a Fedora import and got the following warnings:

&gt;     Warning: array_walk() expects parameter 1 to be array, null given in livingstone_batch_finished() (line 272 of /var/www/localhost/htdocs/sites/all/modules/custom/livingstone_online_module/includes/batch.inc).
&gt;     Notice: Undefined index: successful in livingstone_batch_finished() (line 277 of /var/www/localhost/htdocs/sites/all/modules/custom/livingstone_online_module/includes/batch.inc).
&gt;     Notice: Undefined index: failed in livingstone_batch_finished() (line 278 of /var/www/localhost/htdocs/sites/all/modules/custom/livingstone_online_module/includes/batch.inc).
&gt;     Notice: Undefined index: messages in livingstone_batch_finished() (line 282 of /var/www/localhost/htdocs/sites/all/modules/custom/livingstone_online_module/includes/batch.inc).
&gt;     Warning: array_filter() expects parameter 1 to be array, null given in livingstone_batch_finished() (line 282 of /var/www/localhost/htdocs/sites/all/modules/custom/livingstone_online_module/includes/batch.inc).
&gt;     Warning: Invalid argument supplied for foreach() in livingstone_batch_finished() (line 283 of /var/www/localhost/htdocs/sites/all/modules/custom/livingstone_online_module/includes/batch.inc).

Now, there appear to be objects that are &quot;out of date&quot; or &quot;to be added&quot; that didn&#x27;t get resolved when I ran the &quot;Import all content&quot; process.

### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/236#issuecomment-341523728) on: **2017-11-2**

Also, this may be related to the above, but on the Catalogue page, some facets (e.g. addressee, genre, etc.) are not showing everything that should be there.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/236#issuecomment-341761384) on: **2017-11-3**

To follow up on the missing facet items, in the previous comment, this may be due to Fedora into Drupal import failing. See screen shot.
![screen shot 2017-11-03 at 11 46 33](https://user-images.githubusercontent.com/12518623/32385627-c638f82c-c08c-11e7-8723-a38289970447.png)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/236#issuecomment-341971092) on: **2017-11-5**

I just ran it again, everything seemed to work fine. I had a read through the code, and couldn&#x27;t find a reasonable explanation for them, seems that state shouldn&#x27;t have been possible under normal circumstances, let me know if anything else comes up. Also you don&#x27;t need to worry if an import fails or if there is a warning, just try running things again in a few minutes.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/236#issuecomment-342013208) on: **2017-11-5**

Everything on the back end tables looks good. I also did a fair amount of checking in the Catalogue and all looks good there. So thanks very much for sorting all that out. 

That leaves this issue:

&gt; Also, this may be related to the above, but on the Catalogue page, some facets (e.g. addressee, genre, etc.) are not showing everything that should be there.

Unfortunately, this is still not fixed. I just imported/updated all manuscript nodes via this page (http://livingstoneonline.org/admin/livingstone/import/drupal) and also cleared all caches. However, on the Catalogue page at least the addressee and genre facets still appear to be incomplete. 

One easy way to tell is to compare the list of Addressees on this page (http://livingstoneonline.org/in-his-own-words/catalogue) with the list on the Browse by Addressee page (http://livingstoneonline.org/in-his-own-words/addressee). You&#x27;ll see that the latter page is showing lots of Addressees that are not making it onto the relevant Catalogue page facet.

I also think that the failure to import this data issue may be carrying over to the Browse by Location page. See screen shot. For example, for location &quot;[Africa]&quot; (or Africa), we should have loads of pins in this location (-11.825556,25.135556) but there&#x27;s only this one.

![screen shot 2017-11-05 at 16 00 26](https://user-images.githubusercontent.com/12518623/32420086-e0b3dedc-c24a-11e7-8966-a88f19ef73fc.png)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/236#issuecomment-342066344) on: **2017-11-6**

&gt; Unfortunately, this is still not fixed. I just imported/updated all manuscript nodes via this page (http://livingstoneonline.org/admin/livingstone/import/drupal) and also cleared all caches. However, on the Catalogue page at least the addressee and genre facets still appear to be incomplete.

&gt; One easy way to tell is to compare the list of Addressees on this page (http://livingstoneonline.org/in-his-own-words/catalogue) with the list on the Browse by Addressee page (http://livingstoneonline.org/in-his-own-words/addressee). You&#x27;ll see that the latter page is showing lots of Addressees that are not making it onto the relevant Catalogue page facet.

Oh I didn&#x27;t know thats what you meant, the facets are limited to 20 to show and only those facets which have two or more items in their category was showing, this is how the catalogue has always worked, anyway I&#x27;ve removed those limitations so now it shows all facets.

I believe the second issue has to do with the other items having more than one coordinate:

![screen shot 2017-11-06 at 07 19 58](https://user-images.githubusercontent.com/487373/32429575-26ee826c-c2c3-11e7-84ca-79dc8557ee9f.png)

This one is showing up at the first coordinate rather than both places. It would appear that the google maps view module only has support for one coordinate marker per item.



---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/236#issuecomment-342143626) on: **2017-11-6**

OK, thanks for resolving the Catalogue issue. Catalogue page looks great now. Too bad about the location page; Livingstone sometimes writes things in multiple places. In any case, I&#x27;ll sort out something with the MODS records down the road (or choose a &quot;priority&quot; coordinate to put first or something like that).
