# [Questions re: LEAP-XSLT repo](https://github.com/livingstoneonline/livingstoneonline/issues/238)

> state: **closed** opened by: **awisnicki** on: **2017-11-5**

I cloned the new version of the LEAP-XSLT repo, took a quick look, and see that there are a variety of structural changes to the CSS and XSL files.

For instance, in the CSS files, whereas I might have had something like this before:

&#x60;.author&#x60;

I now see that there is a prefix across everything like this

&#x60;div.transcription.style-Bambarre-letter .author&#x60;

There are also some more substantial changes to &#x60;body&#x60; and &#x60;.div-transcription&#x60; at the beginning of the files.

For XSL, it looks like the main changes are adding new classes to the &#x60;&lt;body&gt;&#x60; and &#x60;&lt;div&gt;&#x60; elements. In the quick spot check, I didn&#x27;t see anything else of significance changed.

Can you give me a quick overview of what you&#x27;ve done with these two sorts of files (CSS and XSL), particularly do I need to keep the CSS files in this format now or would it be enough to carry over the &#x60;body&#x60; and &#x60;.div-transcription&#x60; changes to my CSS files that are still in the old format?

### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/238#issuecomment-342016153) on: **2017-11-5**

I have a quick question about files and directories in the LEAP-XSLT repo. I see the following files:

leap_xslt.info
leap_xslt.module

And the following directories:

fonts
images
javascripts
stylesheets

I&#x27;m not sure what these are. I&#x27;m presuming they&#x27;re coming from you, but please let me know.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/238#issuecomment-342066680) on: **2017-11-6**

I&#x27;ve added 

leap_xslt.info
leap_xslt.module

These are required to use the files in Drupal

Though these directories:

fonts
images
javascripts
stylesheets

Have always been there.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/238#issuecomment-342068043) on: **2017-11-6**

&gt; Can you give me a quick overview of what you&#x27;ve done with these two sorts of files (CSS and XSL), particularly do I need to keep the CSS files in this format now or would it be enough to carry over the body and .div-transcription changes to my CSS files that are still in the old format?

Basically almost all elements in a style sheet need to be prefixed with:

&#x60;&#x60;&#x60;css
div.transcription.STYLESHEET_ID ELEMENT
&#x60;&#x60;&#x60;

Where STYLESHEET_ID would be something like style-Bambarre-letter this means the style will only apply to children of the element with the class &#x60;div.transcription.style-Bambarre-letter&#x60;

For the styles at the top of the file, just copy and past change the parts in all CAPS:

&#x60;&#x60;&#x60;css
body.non-embedded-transcription,
div.transcription-viewer-content.STYLESHEET_ID {
  background: SAME_COLOR_USED_FOR_div.transcription_Element;
}
&#x60;&#x60;&#x60;

This is so the parent element if larger than the child has the same background color so things do not look off.

For the xslt&#x27;s the body element should have the class &quot;non-embedded-transcription&quot;:

&#x60;&#x60;&#x60;xml
&lt;body class&#x3D;&quot;non-embedded-transcription&quot;&gt;
  &lt;xsl:apply-templates select&#x3D;&quot;TEI&quot;/&gt;
&lt;/body&gt;
&#x60;&#x60;&#x60;

And the &quot;transcription&quot; div should have the STYLESHEET_ID as a class as well:

&#x60;&#x60;&#x60;
&lt;div class&#x3D;&quot;transcription style-1870-html&quot;&gt;
&#x60;&#x60;&#x60;

Thats it.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/238#issuecomment-342169459) on: **2017-11-6**

OK, great thanks for letting me know on all of this. Re those directories, in re-reviewing now I think they have to do with setting up the public facing version of this page that James previously created (http://livingstoneonline.github.io/LEAP-XSLT/), so I&#x27;ll just leave them alone.

Re: XSL &amp; CSS, great. Makes sense. Thanks for clarifying that. In terms of this change (and the others related to this):

&gt; Basically almost all elements in a style sheet need to be prefixed with:
&gt; 
&gt; div.transcription.STYLESHEET_ID ELEMENT

I&#x27;m guessing this has to do with not having styling of elements in the HTML files interfere with similar elements on the pages in which these files are embedded in the site. Is that correct? I&#x27;ll go ahead to keep the forward momentum going and close this ticket, but please confirm.
