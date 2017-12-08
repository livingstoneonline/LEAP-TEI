# [Sitewide Search: Non-viewable items](https://github.com/livingstoneonline/livingstoneonline/issues/71)

> state: **closed** opened by: **awisnicki** on: **2016-6-29**

In the specs for sitewide search you have: 

&quot;To have the Sitewide Search link back to the appropriate page for Manuscript items we’ll be using Drupal Node Redirects. This will rewrite the URLs for matching manuscript items such that it will take the user to Browse by Catalogue page, and display the Manuscript in the viewer when appropriate. Nonviewable Manuscripts will still link to the Browse by Catalogue page, but they will not launch the Manuscript viewer.&quot;

However, it appears that nonviewable items are in fact launching the viewer and showing the &quot;restricted image&quot; text. Take a look at this example:

http://livingstoneonline.org/search/node/james%20gray


### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/71#issuecomment-229510397) on: **2016-6-29**

Also, this is now working in views, according to Kathy. She tried constructing the correct url in the view but the PID in the content is delivered with an underscore, i.e., liv_0122025, and the url wants a colon, i.e., liv%3A0122025
(http://livingstonestage.lib.umd.edu/islandora/search/%2522liv:012025%2522?view_pid&#x3D;liv:012025)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/71#issuecomment-230852309) on: **2016-7-6**

This has been resolved by adding a few new fields to the Drupal nodes:
- Viewable
- Hidden
- Downloadable

&gt; using Drupal Node Redirects

The implementation for this is different than from the original description as Drupal redirects can&#x27;t handle this kind of logic (generating different urls based on the presence of boolean: yes or no, values). It&#x27;s now implemented as a theme function override.

I&#x27;m currently re-importing the nodes so it&#x27;s not ready for testing quite yet though.

&gt; Also, this is now working in views, according to Kathy. She tried constructing the correct url in the view but the PID in the content is delivered with an underscore, i.e., liv_0122025, and the url wants a colon, i.e., liv%3A0122025

I&#x27;m not sure I understand, is this for the timeline? In which case there is a field &quot;PID&quot; which contains the semicolon.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/71#issuecomment-230869970) on: **2016-7-6**

Re-index has completed and it&#x27;s ready for review.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/71#issuecomment-230953383) on: **2016-7-6**

It looks like this works now as expected. I tested items that are viewable, downloadable only, restricted, and not viewable (because we don&#x27;t have images), and all came up as expected. Kathy&#x27;s question has also bee resolved so I&#x27;m closing this ticket. Thanks very much.

