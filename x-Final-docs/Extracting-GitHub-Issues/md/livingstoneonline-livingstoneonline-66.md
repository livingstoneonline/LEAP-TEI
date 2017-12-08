# [Manuscript Content Type: Geo-coordinates](https://github.com/livingstoneonline/livingstoneonline/issues/66)

> state: **closed** opened by: **awisnicki** on: **2016-6-23**

Geo-coordinates (mods:coordinates) need to be included in this new content type as they will be needed for the Browse by Geolocation page.


### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/66#issuecomment-230950799) on: **2016-7-6**

It looks like it might not be a bad idea to also add the ISO date and alternate title fields.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/66#issuecomment-231333525) on: **2016-7-8**

ISO date is already covered in **Date Range Start** and **Date Range End** respectively for the other fields.
- mods:coordinates
- mods:titleInfo[@type&#x3D;&quot;alternative&quot;]/mods:title

We&#x27;ll have to rebuild the solr index.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/66#issuecomment-231719558) on: **2016-7-11**

Solr index has been rebuild and content has been updated on stage.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/66#issuecomment-231832087) on: **2016-7-11**

Alternative title looks good. 

Coordinates sometimes has two or three sets of coordinates, but in all cases I see only one displayed. It would be good for each set to be displayed and separated by a ;

Also, in looking at the listing of things for the manuscript content type, I see that alternative title and coordinates appear all the way at the end of the list (see screen shot)
![screen shot 2016-07-11 at 21 01 41](https://cloud.githubusercontent.com/assets/12518623/16743021/b0a31544-47aa-11e6-80fb-bdf833301152.png)

It would be better (and more logical) to have them appear in the order in which they appear in the MODS record itself, so alternative title would appear right after title, and coordinates would appear right after place(s) created.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/66#issuecomment-232617899) on: **2016-7-14**

&gt; Coordinates sometimes has two or three sets of coordinates, but in all cases I see only one displayed. It would be good for each set to be displayed and separated by a ;

I&#x27;ve created a multi-value field to hold them rather than putting them all into a single one, as it&#x27;s more likely to work with Drupal contrib modules.

&gt; Also, in looking at the listing of things for the manuscript content type, I see that alternative title and coordinates appear all the way at the end of the list (see screen shot)
&gt; 
&gt; It would be better (and more logical) to have them appear in the order in which they appear in the MODS record itself, so alternative title would appear right after title, and coordinates would appear right after place(s) created.

The fields are never shown to end users in this way, so the order isn&#x27;t of any particular importance. That being said you can set the ordering to whatever you like:

http://livingstonestage.lib.umd.edu/admin/structure/types/manage/manuscript/fields

&lt;img width&#x3D;&quot;1244&quot; alt&#x3D;&quot;fields&quot; src&#x3D;&quot;https://cloud.githubusercontent.com/assets/487373/16835251/b441c4dc-49af-11e6-8144-ad9b658ff9d6.png&quot;&gt;

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/66#issuecomment-232618005) on: **2016-7-14**

Currently rebuilding solr index.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/66#issuecomment-232775066) on: **2016-7-14**

Oddly the link above does not work for me (I am logged in) and I can&#x27;t otherwise get to the page shown in your screen shot where the various tabs appear in the upper right.
![screen shot 2016-07-14 at 21 55 00](https://cloud.githubusercontent.com/assets/12518623/16853958/1d618f56-4a0f-11e6-85ec-557b3e00673a.png)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/66#issuecomment-232898318) on: **2016-7-15**

Should work for you now, just had to add permissions though the interface.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/66#issuecomment-232921764) on: **2016-7-15**

Looks good. Thank you!

