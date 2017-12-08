# [Browse by Catalogue: Search](https://github.com/livingstoneonline/livingstoneonline/issues/18)

> state: **closed** opened by: **awisnicki** on: **2016-5-4**

Something is not working right about the search box. Try typing in &quot;hair&quot;. You will get two entries (first and last) that are relevant, but then also three in the middle that don&#x27;t have the word &quot;hair&quot; anywhere in them, even when expanded to the full record. Something is amiss in the search, I think.


### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/18#issuecomment-217877920) on: **2016-5-9**

The MODS from those records &quot;Letter to Titus Salt&quot; do contain the word hair in their MODS, for example this is from the MODS description element:

&gt; Manufacturer who made his fortune by developing a method of using alpaca hair.

&#x60;&#x60;&#x60; xml
&lt;mods:mods xmlns:xsi&#x3D;&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xsi:schemaLocation&#x3D;&quot;http://www.loc.gov/standards/mods/v3/mods-3-5.xsd&quot;&gt;
  &lt;mods:identifier type&#x3D;&quot;local&quot; displayLabel&#x3D;&quot;master_id&quot;&gt;liv_001123&lt;/mods:identifier&gt;
  &lt;mods:identifier type&#x3D;&quot;local&quot; displayLabel&#x3D;&quot;Canonical Catalog Number&quot;&gt;Letters, 0611.5&lt;/mods:identifier&gt;
  &lt;mods:titleInfo&gt;
    &lt;mods:title&gt;Letter to Titus Salt&lt;/mods:title&gt;
  &lt;/mods:titleInfo&gt;
  &lt;mods:titleInfo type&#x3D;&quot;alternative&quot;&gt;
    &lt;mods:title&gt;Letter to Titus Salt, 29 October 1857&lt;/mods:title&gt;
  &lt;/mods:titleInfo&gt;
  &lt;mods:name type&#x3D;&quot;personal&quot;&gt;
    &lt;mods:namePart&gt;Livingstone, David, 1813-1873&lt;/mods:namePart&gt;
    &lt;mods:role&gt;
      &lt;mods:roleTerm type&#x3D;&quot;text&quot;&gt;creator&lt;/mods:roleTerm&gt;
    &lt;/mods:role&gt;
  &lt;/mods:name&gt;
  &lt;mods:name type&#x3D;&quot;personal&quot;&gt;
    &lt;mods:namePart&gt;Salt, Titus, 1803-1876&lt;/mods:namePart&gt;
    &lt;mods:role&gt;
      &lt;mods:roleTerm type&#x3D;&quot;text&quot;&gt;addressee&lt;/mods:roleTerm&gt;
    &lt;/mods:role&gt;
    &lt;mods:description&gt;Manufacturer who made his fortune by developing a method of using alpaca hair. Built manufacturing town of Saltaire. Represented Bradford in the House of Commons 1859-61. Created a Baronet in 1869.&lt;/mods:description&gt;
  &lt;/mods:name&gt;
  &lt;mods:genre authority&#x3D;&quot;aat&quot;&gt;letters&lt;/mods:genre&gt;
  &lt;mods:genre authority&#x3D;&quot;aat&quot;&gt;autographs (manuscripts)&lt;/mods:genre&gt;
  &lt;mods:originInfo&gt;
    &lt;mods:publisher&gt;Livingstone Online (http://livingstoneonline.org/)&lt;/mods:publisher&gt;
    &lt;mods:dateCreated&gt;29 October 1857&lt;/mods:dateCreated&gt;
    &lt;mods:dateCreated encoding&#x3D;&quot;iso8601&quot;&gt;1857-10-29&lt;/mods:dateCreated&gt;
  &lt;/mods:originInfo&gt;
  &lt;mods:originInfo displayLabel&#x3D;&quot;Livingstone&quot;&gt;
    &lt;mods:place&gt;
      &lt;mods:placeTerm type&#x3D;&quot;text&quot;&gt;50 Albemarle St., London&lt;/mods:placeTerm&gt;
    &lt;/mods:place&gt;
  &lt;/mods:originInfo&gt;
  &lt;mods:originInfo displayLabel&#x3D;&quot;LoC&quot;&gt;
    &lt;mods:place&gt;
      &lt;mods:placeTerm type&#x3D;&quot;text&quot;&gt;London (England)&lt;/mods:placeTerm&gt;
    &lt;/mods:place&gt;
  &lt;/mods:originInfo&gt;
  &lt;mods:subject&gt;
    &lt;mods:cartographics&gt;
      &lt;mods:coordinates&gt;51.507962,-0.141103&lt;/mods:coordinates&gt;
    &lt;/mods:cartographics&gt;
  &lt;/mods:subject&gt;
  &lt;mods:physicalDescription&gt;
    &lt;mods:note type&#x3D;&quot;physical details&quot;&gt;Complete manuscript in creator&#x27;s hand&lt;/mods:note&gt;
    &lt;mods:extent unit&#x3D;&quot;pages&quot;&gt;4&lt;/mods:extent&gt;
    &lt;mods:note&gt;1 folio, folded to create 4 pages, with writing on 4 pages&lt;/mods:note&gt;
    &lt;mods:extent unit&#x3D;&quot;mm&quot;&gt;180 x 113&lt;/mods:extent&gt;
  &lt;/mods:physicalDescription&gt;
  &lt;mods:relatedItem type&#x3D;&quot;original&quot;&gt;
    &lt;mods:name type&#x3D;&quot;corporate&quot; authorityURI&#x3D;&quot;http://id.loc.gov/authorities/names&quot; valueURI&#x3D;&quot;http://id.loc.gov/authorities/names/n80044899&quot;&gt;
      &lt;mods:namePart&gt;National Library of Scotland&lt;/mods:namePart&gt;
      &lt;mods:role&gt;
        &lt;mods:roleTerm type&#x3D;&quot;text&quot; authority&#x3D;&quot;marclerator&quot;&gt;repository&lt;/mods:roleTerm&gt;
      &lt;/mods:role&gt;
    &lt;/mods:name&gt;
    &lt;mods:location&gt;
      &lt;mods:shelfLocator&gt;MS. 20312, ff. 35-36&lt;/mods:shelfLocator&gt;
    &lt;/mods:location&gt;
    &lt;mods:accessCondition type&#x3D;&quot;use and reproduction&quot;&gt;Images &amp;amp;#169; National Library of Scotland. Creative Commons Share-alike 2.5 UK: Scotland (https://creativecommons.org/licenses/by-nc-sa/2.5/scotland/).&lt;/mods:accessCondition&gt;
    &lt;mods:accessCondition type&#x3D;&quot;use and reproduction&quot;&gt;As relevant, &amp;amp;#169; Dr. Neil Imray Livingstone Wilson. Creative Commons Attribution-NonCommercial 3.0 Unported (https://creativecommons.org/licenses/by-nc/3.0/).&lt;/mods:accessCondition&gt;
  &lt;/mods:relatedItem&gt;
  &lt;mods:relatedItem type&#x3D;&quot;otherVersion&quot;&gt;
    &lt;mods:identifier&gt;Myers&#x27; Cat., 10 (1977), no. 5.&lt;/mods:identifier&gt;
  &lt;/mods:relatedItem&gt;
&lt;/mods:mods&gt;
&#x60;&#x60;&#x60;

The search is being performed on the entire document. We can limit it to the fields shown by creating a specific search handler for that purpose if you&#x27;d like though.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/18#issuecomment-217900990) on: **2016-5-9**

Yes, that sounds good. I&#x27;ll get back to you on this. 

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/18#issuecomment-218151331) on: **2016-5-10**

I&#x27;ve made a list of 10 MODS fields to exclude from all searches. See attached.
[Fields to exclude.txt](https://github.com/livingstoneonline/livingstoneonline/files/257219/Fields.to.exclude.txt)
 All other fields in the MODS records can be included.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/18#issuecomment-219815676) on: **2016-5-17**

It looks like this has been completed except for the mods:publisher field. If I do a search for &quot;livingstone online&quot; I get all the records in the catalogue.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/18#issuecomment-220038281) on: **2016-5-18**

Seems to be working. 

When you search for &#x60;livingstone online&#x60; **unquoted** _livingstone_ will match against almost every record, and _online_ will match against no records. If searching with &#x60;&quot;livingstone online&quot;&#x60; in **quotes**, no records are returned.

Clear Search (~3000 results): http://livingstonestage.lib.umd.edu/islandora/search
Unquoted (~3000 results): http://livingstonestage.lib.umd.edu/islandora/search/livingstone%20online
Online Only (0 results):  http://livingstonestage.lib.umd.edu/islandora/search/online
Quoted (0 results): http://livingstonestage.lib.umd.edu/islandora/search/%22livingstone%20online%22

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/18#issuecomment-220050549) on: **2016-5-18**

Confirmed. All looks good. Thank you!

