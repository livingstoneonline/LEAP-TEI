# [Issue with CSS in MS Viewer](https://github.com/livingstoneonline/livingstoneonline/issues/239)

> state: **open** opened by: **awisnicki** on: **2017-11-6**

I&#x27;ve discovered an issue with how CSS in the MS viewer is rendering certain text. I&#x27;ve been looking at this file: http://livingstoneonline.org/in-his-own-words/catalogue?query&#x3D;liv_000019&amp;view_pid&#x3D;liv%3A000019&amp;view_page&#x3D;0

Please also see attached for a standalone HTML version of the transcription that is working with the same XSL and CSS as the file in the MS Viewer. [liv_000019_TEI.html.zip](https://github.com/livingstoneonline/livingstoneonline/files/1448722/liv_000019_TEI.html.zip)

In particular please compare pages 380-395. In the standalone file, note that all text is properly aligned on the right:

![screen shot 2017-11-06 at 22 45 44](https://user-images.githubusercontent.com/12518623/32477501-50485544-c344-11e7-8508-cfb261f49528.png)

In the viewer, the text on the right is getting bunched up:

![screen shot 2017-11-06 at 22 45 24](https://user-images.githubusercontent.com/12518623/32477528-8df54c4e-c344-11e7-8c96-fef10845608a.png)

Also, take a look at the bottom of page 736. In the standalone, the text (from a table) is presented line after line: 

![screen shot 2017-11-06 at 22 51 04](https://user-images.githubusercontent.com/12518623/32477623-461e1026-c345-11e7-97cf-feec32774d3a.png)

In the viewer, the text is getting extra space added between lines:

![screen shot 2017-11-06 at 22 51 06](https://user-images.githubusercontent.com/12518623/32477627-50831c8c-c345-11e7-8ff0-dd771f9899a0.png)

These same problems crop up when the file appears in the multitext viewer:

![screen shot 2017-11-06 at 22 55 47](https://user-images.githubusercontent.com/12518623/32477725-c006394a-c345-11e7-91db-ac1e87710ff5.png)

I did some amount of work on the CSS and XSL files today and updated prod with the new versions. That&#x27;s not the cause of this issue, I don&#x27;t believe. Stage is still using the older versions of these files and the problems are there to, so it appears they were there before I did any work.

### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/239#issuecomment-342377689) on: **2017-11-6**

It looks like the table spacing issue is also appear in other files:

![screen shot 2017-11-06 at 23 10 51](https://user-images.githubusercontent.com/12518623/32478038-f27d689c-c347-11e7-92af-9fc27d90ef1e.png)

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/239#issuecomment-343277345) on: **2017-11-9**

I found another exmaple of this issue. Here some margin is being added above the horizontal lines. As you can see from the code, in this case it&#x27;s being pulled in from one of your CSS files.

![screen shot 2017-11-09 at 14 11 01](https://user-images.githubusercontent.com/12518623/32627402-ea80a278-c557-11e7-8035-6a8efcd54b2d.png)

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/239#issuecomment-343278166) on: **2017-11-9**

And here&#x27;s another similar example. In this case, the h4 font is coming from your stylesheet:

![screen shot 2017-11-09 at 14 13 11](https://user-images.githubusercontent.com/12518623/32627562-7aaced3e-c558-11e7-9a0b-54f8a6866295.png)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/239#issuecomment-346708335) on: **2017-11-23**

I&#x27;ve handle all the issues except for the h4 I don&#x27;t want to override your style sheets globally in that case, it makes more sense for your to explicitly set the font sizes, etc for those elements in your css files for each xslt. 

Most of the issues stemmed from the user of a css reset sheet on the site (except for the h4 issue), of which there is non being used in your HTML page generated from the xslt. Theres really no way around it, there will be differences because they do different things, my recommendation is when you encounter a problem a difference just add a new rule to your xslt stylesheets to have it render the way you would like.

Using a css reset sheet like the one we use on livingstoneonline.org (https://github.com/necolas/normalize.css/blob/3.0.3/normalize.css) is recommend since its goal is to ensure the default styles on elements cause them to be rendered roughly equivalent regardless of what browser the user is using.

On a side note the &quot;Unyanyembe Journal&quot; will likely never look &quot;correct&quot; either embedded in the site or as a stand alone HTML file. Setting widths and margins on elements like that explicitly runs counter to how HTML and CSS is meant to work. Inline content like text is meant to flow relative to the amount of space and the users choice in fonts (families, size, and zoom level). And given that no width information is really built into the TEI the XSLTs will never know exactly how much space something needs to be placed to match the layout in the original document, so something will always be spaced too far out or too close as rules for each element applied can&#x27;t know the required details.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/239#issuecomment-346942248) on: **2017-11-25**

OK, thanks for taking care of this. I&#x27;ll investigate in more detail (and so get back to you if I have any questions about what you&#x27;ve written above) and follow your advice going forward. For now, please note that re: horizontal lines, you&#x27;ve fixed the issue for double-lines, but for single lines it is still there.

![screen shot 2017-11-25 at 07 53 58](https://user-images.githubusercontent.com/12518623/33231160-2e9413ae-d1b6-11e7-8fe0-5130cadb6c14.png)

![screen shot 2017-11-25 at 07 59 20](https://user-images.githubusercontent.com/12518623/33231187-a508e5c8-d1b6-11e7-8c25-67e7a60d02f7.png)

