# [Browse by Catalogue: Repository Dropdown](https://github.com/livingstoneonline/livingstoneonline/issues/19)

> state: **closed** opened by: **awisnicki** on: **2016-5-4**

I don&#x27;t think all the repositories are listed here. For instance, Columbia is missing, although I can find it on prod:

http://livingstone.lib.umd.edu/islandora/search/*%3A*?f[0]&#x3D;mods_relatedItem_original_name_corporate_repository_namePart_s%3A%22Columbia+University+Libraries.+Burke+Library+at+Union+Theological+Seminary%22


### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/19#issuecomment-217876948) on: **2016-5-9**

The MODS on stage doesn&#x27;t match what&#x27;s on production exactly, it&#x27;s there for testing purposes and I don&#x27;t update it when I&#x27;ve updated the production MODS.

**Stage:**

&#x60;&#x60;&#x60; xml
&lt;mods:mods xmlns:xsi&#x3D;&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xsi:schemaLocation&#x3D;&quot;http://www.loc.gov/standards/mods/v3/mods-3-5.xsd&quot;&gt;
  &lt;mods:identifier type&#x3D;&quot;local&quot; displayLabel&#x3D;&quot;master_id&quot;&gt;liv_000941&lt;/mods:identifier&gt;
  &lt;mods:identifier type&#x3D;&quot;local&quot; displayLabel&#x3D;&quot;Canonical Catalog Number&quot;&gt;Letters, 0451&lt;/mods:identifier&gt;
  &lt;mods:titleInfo&gt;
    &lt;mods:title&gt;Letter to Unknown&lt;/mods:title&gt;
  &lt;/mods:titleInfo&gt;
  &lt;mods:titleInfo type&#x3D;&quot;alternative&quot;&gt;
    &lt;mods:title&gt;Letter to Unknown, 6 January [1857]&lt;/mods:title&gt;
  &lt;/mods:titleInfo&gt;
  &lt;mods:name type&#x3D;&quot;personal&quot;&gt;
    &lt;mods:namePart&gt;Livingstone, David, 1813-1873&lt;/mods:namePart&gt;
    &lt;mods:role&gt;
      &lt;mods:roleTerm type&#x3D;&quot;text&quot;&gt;creator&lt;/mods:roleTerm&gt;
    &lt;/mods:role&gt;
  &lt;/mods:name&gt;
  &lt;mods:note displayLabel&#x3D;&quot;addressee&quot;&gt;The addressee is unknown.&lt;/mods:note&gt;
  &lt;mods:genre authority&#x3D;&quot;aat&quot;&gt;letters&lt;/mods:genre&gt;
  &lt;mods:genre authority&#x3D;&quot;aat&quot;&gt;autographs (manuscripts)&lt;/mods:genre&gt;
  &lt;mods:originInfo&gt;
    &lt;mods:publisher&gt;Livingstone Online (http://livingstoneonline.org/)&lt;/mods:publisher&gt;
    &lt;mods:dateCreated&gt;6 January [1857]&lt;/mods:dateCreated&gt;
    &lt;mods:dateCreated encoding&#x3D;&quot;iso8601&quot;&gt;1857-01-06&lt;/mods:dateCreated&gt;
  &lt;/mods:originInfo&gt;
  &lt;mods:originInfo displayLabel&#x3D;&quot;Livingstone&quot;&gt;
    &lt;mods:place&gt;
      &lt;mods:placeTerm type&#x3D;&quot;text&quot;&gt;Mission House&lt;/mods:placeTerm&gt;
    &lt;/mods:place&gt;
  &lt;/mods:originInfo&gt;
  &lt;mods:originInfo displayLabel&#x3D;&quot;LoC&quot;&gt;
    &lt;mods:place&gt;
      &lt;mods:placeTerm type&#x3D;&quot;text&quot;&gt;London (England)&lt;/mods:placeTerm&gt;
    &lt;/mods:place&gt;
  &lt;/mods:originInfo&gt;
  &lt;mods:subject&gt;
    &lt;mods:cartographics&gt;
      &lt;mods:coordinates&gt;51.507222,-0.1275&lt;/mods:coordinates&gt;
    &lt;/mods:cartographics&gt;
  &lt;/mods:subject&gt;
  &lt;mods:physicalDescription&gt;
    &lt;mods:note type&#x3D;&quot;physical details&quot;&gt;Complete manuscript in creator&#x27;s hand&lt;/mods:note&gt;
    &lt;mods:extent unit&#x3D;&quot;pages&quot;&gt;4&lt;/mods:extent&gt;
    &lt;mods:note&gt;1 folio, folded to create 4 pages, with writing on 4 pages&lt;/mods:note&gt;
    &lt;mods:extent unit&#x3D;&quot;mm&quot;&gt;182 x 113&lt;/mods:extent&gt;
  &lt;/mods:physicalDescription&gt;
  &lt;mods:relatedItem type&#x3D;&quot;original&quot;&gt;
    &lt;mods:name type&#x3D;&quot;corporate&quot; authority&#x3D;&quot;local&quot;&gt;
      &lt;mods:namePart&gt;Union Theological Seminary (New York, N.Y.). Archive&lt;/mods:namePart&gt;
      &lt;mods:role&gt;
        &lt;mods:roleTerm type&#x3D;&quot;text&quot; authority&#x3D;&quot;marclerator&quot;&gt;repository&lt;/mods:roleTerm&gt;
      &lt;/mods:role&gt;
    &lt;/mods:name&gt;
    &lt;mods:location&gt;
      &lt;mods:shelfLocator&gt;Archives&lt;/mods:shelfLocator&gt;
    &lt;/mods:location&gt;
  &lt;/mods:relatedItem&gt;
  &lt;mods:identifier type&#x3D;&quot;local&quot; displayLabel&#x3D;&quot;NLS copy identifier&quot;&gt;MS. 10779&lt;/mods:identifier&gt;
&lt;/mods:mods&gt;
&#x60;&#x60;&#x60;

**Prod:**

&#x60;&#x60;&#x60; xml
&lt;mods:mods xmlns:xsi&#x3D;&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xsi:schemaLocation&#x3D;&quot;http://www.loc.gov/standards/mods/v3/mods-3-5.xsd&quot;&gt;
  &lt;mods:identifier type&#x3D;&quot;local&quot; displayLabel&#x3D;&quot;master_id&quot;&gt;liv_000941&lt;/mods:identifier&gt;
  &lt;mods:identifier type&#x3D;&quot;local&quot; displayLabel&#x3D;&quot;Canonical Catalog Number&quot;&gt;Letters, 0451&lt;/mods:identifier&gt;
  &lt;mods:titleInfo&gt;
    &lt;mods:title&gt;Letter to Young Men&#x27;s Christian Association (YMCA)&lt;/mods:title&gt;
  &lt;/mods:titleInfo&gt;
  &lt;mods:titleInfo type&#x3D;&quot;alternative&quot;&gt;
    &lt;mods:title&gt;Letter to Young Men&#x27;s Christian Association (YMCA), 6 January [1857]&lt;/mods:title&gt;
  &lt;/mods:titleInfo&gt;
  &lt;mods:name type&#x3D;&quot;personal&quot;&gt;
    &lt;mods:namePart&gt;Livingstone, David, 1813-1873&lt;/mods:namePart&gt;
    &lt;mods:role&gt;
      &lt;mods:roleTerm type&#x3D;&quot;text&quot;&gt;creator&lt;/mods:roleTerm&gt;
    &lt;/mods:role&gt;
  &lt;/mods:name&gt;
  &lt;mods:name type&#x3D;&quot;personal&quot;&gt;
    &lt;mods:namePart&gt;Young Men&#x27;s Christian Association (YMCA)&lt;/mods:namePart&gt;
    &lt;mods:role&gt;
      &lt;mods:roleTerm type&#x3D;&quot;text&quot;&gt;addressee&lt;/mods:roleTerm&gt;
    &lt;/mods:role&gt;
  &lt;/mods:name&gt;
  &lt;mods:genre authority&#x3D;&quot;aat&quot;&gt;letters&lt;/mods:genre&gt;
  &lt;mods:genre authority&#x3D;&quot;aat&quot;&gt;autographs (manuscripts)&lt;/mods:genre&gt;
  &lt;mods:originInfo&gt;
    &lt;mods:publisher&gt;Livingstone Online (http://livingstoneonline.org/)&lt;/mods:publisher&gt;
    &lt;mods:dateCreated&gt;6 January [1857]&lt;/mods:dateCreated&gt;
    &lt;mods:dateCreated encoding&#x3D;&quot;iso8601&quot;&gt;1857-01-06&lt;/mods:dateCreated&gt;
  &lt;/mods:originInfo&gt;
  &lt;mods:originInfo displayLabel&#x3D;&quot;Livingstone&quot;&gt;
    &lt;mods:place&gt;
      &lt;mods:placeTerm type&#x3D;&quot;text&quot;&gt;Mission House&lt;/mods:placeTerm&gt;
    &lt;/mods:place&gt;
  &lt;/mods:originInfo&gt;
  &lt;mods:originInfo displayLabel&#x3D;&quot;LoC&quot;&gt;
    &lt;mods:place&gt;
      &lt;mods:placeTerm type&#x3D;&quot;text&quot;&gt;London (England)&lt;/mods:placeTerm&gt;
    &lt;/mods:place&gt;
  &lt;/mods:originInfo&gt;
  &lt;mods:subject&gt;
    &lt;mods:cartographics&gt;
      &lt;mods:coordinates&gt;51.507222,-0.1275&lt;/mods:coordinates&gt;
    &lt;/mods:cartographics&gt;
  &lt;/mods:subject&gt;
  &lt;mods:physicalDescription&gt;
    &lt;mods:note type&#x3D;&quot;physical details&quot;&gt;Complete manuscript in creator&#x27;s hand&lt;/mods:note&gt;
    &lt;mods:extent unit&#x3D;&quot;pages&quot;&gt;4&lt;/mods:extent&gt;
    &lt;mods:note&gt;1 folio, folded to create 4 pages, with writing on 4 pages&lt;/mods:note&gt;
    &lt;mods:extent unit&#x3D;&quot;mm&quot;&gt;182 x 113&lt;/mods:extent&gt;
  &lt;/mods:physicalDescription&gt;
  &lt;mods:relatedItem type&#x3D;&quot;original&quot;&gt;
    &lt;mods:name type&#x3D;&quot;corporate&quot; authority&#x3D;&quot;local&quot;&gt;
      &lt;mods:namePart&gt;Columbia University Libraries. Burke Library at Union Theological Seminary&lt;/mods:namePart&gt;
      &lt;mods:role&gt;
        &lt;mods:roleTerm type&#x3D;&quot;text&quot; authority&#x3D;&quot;marclerator&quot;&gt;repository&lt;/mods:roleTerm&gt;
      &lt;/mods:role&gt;
    &lt;/mods:name&gt;
    &lt;mods:location&gt;
      &lt;mods:shelfLocator&gt;MRL 1, Box 1, folder 1&lt;/mods:shelfLocator&gt;
    &lt;/mods:location&gt;
    &lt;mods:accessCondition type&#x3D;&quot;use and reproduction&quot;&gt;Images courtesy of the Burke Library at Union Theological Seminary, Columbia University Libraries.&lt;/mods:accessCondition&gt;
  &lt;/mods:relatedItem&gt;
  &lt;mods:identifier type&#x3D;&quot;local&quot; displayLabel&#x3D;&quot;NLS copy identifier&quot;&gt;MS. 10779&lt;/mods:identifier&gt;
&lt;/mods:mods&gt;
&#x60;&#x60;&#x60;

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/19#issuecomment-217901243) on: **2016-5-9**

I think we&#x27;re OK then. Thanks for checking this.

