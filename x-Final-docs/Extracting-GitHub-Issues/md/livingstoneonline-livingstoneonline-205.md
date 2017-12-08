# [HTML/CSS issue](https://github.com/livingstoneonline/livingstoneonline/issues/205)

> state: **closed** opened by: **awisnicki** on: **2017-8-23**

I have a small query that I&#x27;ve been unable to resolve on my own despite quite a bit of researching. When I display an html file in the multitext of manuscript viewer, I&#x27;d like a short bit of text to toggle an additional stylesheet on and off. 

So, for instance, liv_002513_TEI.xml uses transcription.xsl for its transformation to HTML. Thanks to transcription.xsl, the HTML file points to the following stylesheets:

&#x60;&#x60;&#x60;
&lt;link rel&#x3D;&quot;stylesheet&quot; type&#x3D;&quot;text/css&quot; href&#x3D;&quot;http://livingstoneonline.github.io/LEAP-XSLT/normalize.css&quot;/&gt;
&lt;link rel&#x3D;&quot;stylesheet&quot; type&#x3D;&quot;text/css&quot; href&#x3D;&quot;http://livingstoneonline.github.io/LEAP-XSLT/common.css&quot;/&gt;
&lt;link rel&#x3D;&quot;stylesheet&quot; type&#x3D;&quot;text/css&quot; href&#x3D;&quot;http://livingstoneonline.github.io/LEAP-XSLT/style.css&quot;/&gt;
&#x60;&#x60;&#x60;

I&#x27;d like to add an additional stylesheet, let&#x27;s say style2.css. This stylesheet would not be applied like the others (by default), but rather in the HTML there would be bit of text enclosed in &#x60;&lt;a&gt;&#x60; that said &quot;Click me&quot; (for instance) and when that text was clicked, the additional stylesheet would be applied. If the text was clicked yet again, the stylesheet would be unapplied. 

From what I&#x27;ve seen the additional stylesheet should be given thus in the HTML file:

&#x60;&lt;link rel&#x3D;&quot;stylesheet alternate&quot; type&#x3D;&quot;text/css&quot; href&#x3D;&quot;http://livingstoneonline.github.io/LEAP-XSLT/style2.css&quot;/&gt;&#x60;

And the click and adding the additional stylesheet might be sorted out with some jquery or javascript in a &#x60;&lt;script&gt;&#x60; in the &#x60;&lt;head&gt;&#x60; of the &#x60;&lt;html&gt;&#x60;, but beyond that I&#x27;ve not been able to find the right formula or make the pieces work together since this is a bit out of my depth.

### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/205#issuecomment-336632511) on: **2017-10-14**

The easiest way to do this does not require adding another css file, just the setting of a class on a top level element, and using that class to &quot;namespace&quot; elements below and change their display. This example might answer your question (Example doesn&#x27;t require jQuery).

https://codepen.io/nbanks/pen/oGPOoX/
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/205#issuecomment-336642167) on: **2017-10-14**

OK, thank you very much! I&#x27;ll take it from here.
