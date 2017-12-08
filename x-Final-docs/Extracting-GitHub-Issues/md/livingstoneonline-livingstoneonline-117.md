# [Browse by Catalogue: links issue](https://github.com/livingstoneonline/livingstoneonline/issues/117)

> state: **closed** opened by: **awisnicki** on: **2016-11-28**

Please take a look at this page of the Catalogue:

http://livingstoneonline.org/islandora/search/%22liv%3A001429%22?full_record&#x3D;1

If you scroll to the &quot;Other Version(s)&quot; column, you&#x27;ll see that the word &quot;link&quot; is not hyperlinked as it should be to the URL available in the MODS record and, indeed, part of the relevant MODS record is missing here.

I see other such broken instances in the catalogue, but also some that work: http://livingstoneonline.org/islandora/search/liv_000111?full_record&#x3D;1

### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/117#issuecomment-265273475) on: **2016-12-6**

Another link that&#x27;s not working as it should.
![screen shot 2016-12-06 at 15 10 21](https://cloud.githubusercontent.com/assets/12518623/20943694/3e3c73fc-bbc6-11e6-82a1-bf93a668af2b.png)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/117#issuecomment-265844582) on: **2016-12-8**

Took a look into and it seems that the url in the data is invalid in two respects.

- The apostrophe must be &quot;URL Encoded&quot; to be properly escaped.
- The URL no longer points to a valid page.

The url for this object has this form in the MODS

&#x60;&#x60;&#x60;xml
&lt;mods:relatedItem type&#x3D;&quot;otherVersion&quot;&gt;
  &lt;mods:identifier&gt;Helmsley Parish, http://www.helmsleyparish.org.uk/pics/Helmsley%20David%20Livingstone&#x27;s%20letter.jpg (accessed 9 September 2015).&lt;/mods:identifier&gt;
&lt;/mods:relatedItem&gt;
&#x60;&#x60;&#x60;

So they apostrophe needs to be &quot;URL Encoded&quot; in the same sense that the spaces are &quot;URL Encoded&quot;.

- Space Character becomes %20
- Apostrophe becomes %27

The other issue is that the page linked to no longer exists.

[http://www.helmsleyparish.org.uk/pics/Helmsley%20David%20Livingstone%27s%20letter.jpg](http://www.helmsleyparish.org.uk/pics/Helmsley%20David%20Livingstone%27s%20letter.jpg)
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/117#issuecomment-265844998) on: **2016-12-8**

@awisnicki could you change the MODS file, and use the FTP import tool like you did with the recent images you added?
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/117#issuecomment-266031455) on: **2016-12-9**

Yes, I can do this. I can across these two links by chance. Is there any way I can sort the table so it shows all the links in a row. That way I could go through them all and see if there are any other issues. Also, your answer seems to apply to the second problem I cite above. Does it also apply to the first? The issue there is not only that the link is broken, but that part of the normal text also doesn&#x27;t show up.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/117#issuecomment-267847474) on: **2016-12-18**

I&#x27;ve applied a few more fixes, also this is the list of all items with Other Versions that have links: 

http://livingstoneonline.org/islandora/search/otherVersion_t:%22%2Ahttp:%22%22?full_record&#x3D;1
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/117#issuecomment-268395833) on: **2016-12-20**

Thanks very much for the link to the Catalogue with all links displayed. I&#x27;ve gone through this and fixed all those necessary; they&#x27;ll get updated when I next update the MODS. 

We can close this ticket except there&#x27;s one small bug in that when two entries appear in the Other Version column, then should be separated by a space, but right now they just run onto one another. For example, liv_002557:

Reginald Foskett, ed., The Zambesi Doctors: David Livingstone&#x27;s Letters to John Kirk, 1858-1872 (Edinburgh: Edinburgh University Press, 1964), 140-144.Christie&#x27;s (London), 25 September 2008, link (accessed 13 April 2015).

Corrected version (notice the space before the word &quot;Christies&quot;:

Reginald Foskett, ed., The Zambesi Doctors: David Livingstone&#x27;s Letters to John Kirk, 1858-1872 (Edinburgh: Edinburgh University Press, 1964), 140-144. Christie&#x27;s (London), 25 September 2008, link (accessed 13 April 2015).
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/117#issuecomment-271379696) on: **2017-1-9**

Should be fixed on production now.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/117#issuecomment-272261480) on: **2017-1-12**

Looks good. Thank you. Closing this ticket.
