# [Manuscript Viewer: Restricted Items](https://github.com/livingstoneonline/livingstoneonline/issues/63)

> state: **closed** opened by: **awisnicki** on: **2016-6-17**

On prod, the restricted item display (i.e. the text box) is not working. Take a look, for instance, at the first item in the catalogue on this page:

Catalogue:

http://livingstone.lib.umd.edu/islandora/search?f%5B%5D&#x3D;dateRangeYear_mi%3A%221843%22&amp;full_record&#x3D;1

Actual item:

http://livingstone.lib.umd.edu/islandora/search?f%5B%5D&#x3D;dateRangeYear_mi%3A%221843%22&amp;full_record&#x3D;1&amp;view_pid&#x3D;liv%3A000521&amp;view_page&#x3D;0

Also, can you tell me where I modify this text?


### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/63#issuecomment-227194441) on: **2016-6-20**

Took some digging but it turns out the generate TEI, is not valid HTML and it&#x27;s missing tags causing the browser to remove the section of the viewer which is responsible for displaying the images / restricted item size.

Looks like it has to do with the title field.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/63#issuecomment-227197221) on: **2016-6-20**

Currently of the XSLT is &#x27;xml&#x27; which outputs some tags as beings self closed (this case the empty title). This is invalid in HTML5. Changing the output to &#x27;html&#x27; doesn&#x27;t help things either as the Saxon webapp is not generating valid output for that either.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/63#issuecomment-227197386) on: **2016-6-20**

We won&#x27;t be able to resolve this before I leave.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/63#issuecomment-227197669) on: **2016-6-20**

&gt; Also, can you tell me where I modify this text?

It can be modified [here](https://github.com/livingstoneonline/livingstone_online_module/blob/02e5648a53248e1fc53628e24764a176e71c8d55/theme/livingstone-manuscript-viewer.tpl.php#L55-L61).

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/63#issuecomment-227210720) on: **2016-6-20**

I don&#x27;t quite follow the issue here as for this restricted item (liv_000521), there is no TEI (transcription) file. 

That said, I suspect that the issue may be that the following bit of code in transcription.xsl needs to be commented out:

&#x60;&#x60;&#x60;
            &lt;title&gt;
                &lt;xsl:value-of select&#x3D;&quot;//teiHeader//title[2]&quot;/&gt;
            &lt;/title&gt;
&#x60;&#x60;&#x60;

In other words, change it to this:

&#x60;&#x60;&#x60;
            &lt;!--&lt;title&gt;
                &lt;xsl:value-of select&#x3D;&quot;//teiHeader//title[2]&quot;/&gt;
            &lt;/title&gt;--&gt;
&#x60;&#x60;&#x60;

Does that do the trick?

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/63#issuecomment-227211342) on: **2016-6-20**

I&#x27;m not certain I follow the issue here as the given item, liv_000521, has no associated TEI file. 

That said, I suspect the issue you&#x27;re pointing to originates in the transcription.xsl file and might be fixed by commenting out the following bit of code:

&#x60;&#x60;&#x60;
            &lt;title&gt;
                &lt;xsl:value-of select&#x3D;&quot;//teiHeader//title[2]&quot;/&gt;
            &lt;/title&gt;
&#x60;&#x60;&#x60;

In other words, modify it as follows:

&#x60;&#x60;&#x60;
            &lt;!--&lt;title&gt;
                &lt;xsl:value-of select&#x3D;&quot;//teiHeader//title[2]&quot;/&gt;
            &lt;/title&gt;--&gt;
&#x60;&#x60;&#x60;

Can you try that and tell me if that does the trick?

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/63#issuecomment-227219421) on: **2016-6-20**

Also, I&#x27;ve modified the restricted view text on the php file to which you directed me and have push up the modified file. Please put this up on the site.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/63#issuecomment-227244220) on: **2016-6-20**

liv:000521 does have a TEI file I&#x27;ve attached it.

[liv_000521_TEI.xml.zip](https://github.com/livingstoneonline/livingstoneonline/files/324138/liv_000521_TEI.xml.zip)

That change you&#x27;ve recommended doesn&#x27;t solve the issue (I&#x27;ve tested). It just appeared in the title tag of the browser (the error is likely somewhere else in the document and there may be multiple). 

Likely there are many more problems in the same vein that will show up only under particular circumstances. The problem arises from invalid HTML5 being generated from the transcription and inserted into the browser. 

This isn&#x27;t a small issue to fix, will likely take some time (could be in the range of day or more), in both the transform and the service (saxon) that provides the transformation.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/63#issuecomment-227246081) on: **2016-6-20**

I see what the issue is. It appears that you&#x27;ve pulled in some transcriptions from the wrong subdirectory. All TEI files should only come from the following subdirectory:

https://github.com/livingstoneonline/TEI-Files/tree/master/Legacy4-TEI-publish

You should not be pulling TEI files from any other subdirectories.

The file, in question, appears in the following directory, which contains files that we are still working on and that should _not_ be put up on the site as they will still have various errors, issues, as in the present case: 

https://github.com/livingstoneonline/TEI-Files/tree/master/South-African-Letters

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/63#issuecomment-227260528) on: **2016-6-20**

All TEI files not in https://github.com/livingstoneonline/TEI-Files/tree/master/Legacy4-TEI-publish have been removed.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/63#issuecomment-227288898) on: **2016-6-20**

Looks like this is now sorted out. Thank you.

