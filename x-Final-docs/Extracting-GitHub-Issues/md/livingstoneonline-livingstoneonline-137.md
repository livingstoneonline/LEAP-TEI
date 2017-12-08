# [For LEAP-XSLT Repo](https://github.com/livingstoneonline/livingstoneonline/issues/137)

> state: **closed** opened by: **nigelgbanks** on: **2017-6-8**

Update and add some documentation won&#x27;t be using less going forward.

### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/137#issuecomment-308068704) on: **2017-6-13**

As a reminder I&#x27;ve moved my code to the branch theme-rewrite (so the use of update script won&#x27;t deploy what was on the dev branch). This ticket can&#x27;t be completed until we are ready to move to production.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/137#issuecomment-318797514) on: **2017-7-28**

Just a reminder that this is something that needs to be adjusted when we move to prod. Like #155, should this remain on hold?
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/137#issuecomment-320032903) on: **2017-8-3**

Yes we can&#x27;t do this until after we&#x27;ve done the migration.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/137#issuecomment-329080287) on: **2017-9-13**

Currently deployed to stage
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/137#issuecomment-329525502) on: **2017-9-14**

This had to do with rendering of &#x60;&lt;body&gt;&#x60; around transcriptions? I believe that the place to review this is on the multi-text viewer:

http://livingstonestage.lib.umd.edu/spectral-imaging/three-versions-the-1870-field-diary
http://livingstonestage.lib.umd.edu/spectral-imaging/three-versions-the-1871-field-diary

Is that correct? If so, then it looks good to me and we can close this ticket, unless there&#x27;s additional explanation needed for how I now update XSLT files?
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/137#issuecomment-329526304) on: **2017-9-14**

Actually, I see an issue in the MS viewer. Here&#x27;s one example:

http://livingstonestage.lib.umd.edu/in-his-own-words/catalogue?access&#x3D;view_transcription&amp;view_pid&#x3D;liv%3A002647&amp;view_page&#x3D;0

On this page, first, the transcription is being rendered at too small a size. Second, you&#x27;ll see in the screen shot, that a white space appears below the transcription.
![screen shot 2017-09-14 at 10 52 11](https://user-images.githubusercontent.com/12518623/30439949-c76a5cbe-993a-11e7-861c-914045e22941.png)

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/137#issuecomment-329526751) on: **2017-9-14**

Also, when you open a longer transcription, the first page number is appearing under the sticky header whereas it should appear right below it.
![screen shot 2017-09-14 at 10 53 01](https://user-images.githubusercontent.com/12518623/30439993-f86f2006-993a-11e7-8f2e-914132384dea.png)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/137#issuecomment-329875898) on: **2017-9-15**

These two issues should be sorted now.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/137#issuecomment-329876069) on: **2017-9-15**

&gt; Is that correct? If so, then it looks good to me and we can close this ticket, unless there&#x27;s additional explanation needed for how I now update XSLT files?

You can just edit the css files like before.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/137#issuecomment-329921471) on: **2017-9-15**

Yep, it looks like both issues have been resolved. 

However, the text is still rendering too small. Compare the following page (transcription view) on prod: http://livingstoneonline.org/islandora/search?view_pid&#x3D;liv%3A000504&amp;view_page&#x3D;0 and on stage: http://livingstonestage.lib.umd.edu/in-his-own-words/catalogue?access&#x3D;view_transcription&amp;view_pid&#x3D;liv%3A000504&amp;view_page&#x3D;0 and you&#x27;ll see that the stage text is smaller. It should be the size it is on prod.

Re: updating CSS/XSL via the old process sounds good. However, when I modify in dev branch, then run update_github command (so as to push to the stage and prod branches), I get the following error:

awisnicki2@ENGL-0B5E4A:~$ /Users/awisnicki2/GitHub/LEAP-XSLT/update_github.command ; exit;
xcrun: error: invalid active developer path (/Library/Developer/CommandLineTools), missing xcrun at: /Library/Developer/CommandLineTools/usr/bin/xcrun
logout
Saving session...
...copying shared history...
...saving history...truncating history files...
...completed.
Deleting expired sessions...4 completed.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/137#issuecomment-330054065) on: **2017-9-17**

&gt; However, the text is still rendering too small. Compare the following page (transcription view) on prod: http://livingstoneonline.org/islandora/search?view_pid&#x3D;liv%3A000504&amp;view_page&#x3D;0 and on stage: http://livingstonestage.lib.umd.edu/in-his-own-words/catalogue?access&#x3D;view_transcription&amp;view_pid&#x3D;liv%3A000504&amp;view_page&#x3D;0 and you&#x27;ll see that the stage text is smaller. It should be the size it is on prod.

The fonts are actually different, on production the css used with the xslt&#x27;s references fonts like &quot;Crimson Text&quot; but doesn&#x27;t actually load them so it defaults to one of the browser provided fonts. On stage it&#x27;s actually using those fonts since the theme is loading them. 

&gt; Re: updating CSS/XSL via the old process sounds good. However, when I modify in dev branch, then run update_github command (so as to push to the stage and prod branches), I get the following error:

Please don&#x27;t make changes till after the move to production. 

The error would indicated that you have some issue with your installation of osx developer tools.

Try this:
https://apple.stackexchange.com/questions/254380/macos-sierra-invalid-active-developer-path

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/137#issuecomment-330277868) on: **2017-9-18**

OK, thanks! I&#x27;ll leave this ticket open because I&#x27;d like to review the small text issue when we go up to prod. Also, no problem: I wont&#x27; make any changes to XSLT/CSS. I am applying the solution you&#x27;ve provided to the terminal error I had (thanks very much for that), but I&#x27;ll wait to test it out till we&#x27;re on prod.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/137#issuecomment-340650549) on: **2017-10-30**

I&#x27;ve reviewed the small font issue and it looks like I&#x27;m going to have to increase font size to 1.1 em and adjust other bits accordingly. Am I now able to push up changes in the LEAP-XSLT repo as per the previous workflow?
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/137#issuecomment-340663353) on: **2017-10-31**

Yup feel free
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/137#issuecomment-340736751) on: **2017-10-31**

I&#x27;ve looked slightly further into this and think something else may be causing the small font size, other than change in font. See screen shots. When I change the font, the font size remains small.

![screen shot 2017-10-31 at 06 33 35](https://user-images.githubusercontent.com/12518623/32222128-0d8aeb74-be06-11e7-90f2-8f392289eff3.png)

![screen shot 2017-10-31 at 06 33 44](https://user-images.githubusercontent.com/12518623/32222136-1254131a-be06-11e7-90cf-3a8bb62c6a95.png)


---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/137#issuecomment-341119081) on: **2017-11-1**

I&#x27;ve also found that manuscripts in the multitext viewer are rendering at the right size (e.g., http://livingstoneonline.org/spectral-imaging/three-versions-the-1871-field-diary), so I do think this issue is small text issue is arising from the ms. viewer.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/137#issuecomment-341983024) on: **2017-11-5**

For the example you give: 

http://livingstoneonline.org/in-his-own-words/catalogue?query&#x3D;liv_000478&amp;view_pid&#x3D;liv%3A000478&amp;view_page&#x3D;0

It&#x27;s using the style sheet: 
LEAP-XSLT/style.css

Which has this bit of css in it:

&#x60;&#x60;&#x60;css
/* 1. Textual divisions */
div.transcription.style {
  ...
  font-family: &quot;source sans pro&quot;, calibri, arial, helvetica, sans-serif;
  font-size: 1em;
  ...
}
&#x60;&#x60;&#x60;

Now 1em is a relative font size so the font will be scaled against it&#x27;s parent setting which is 14px. So the font will be 14px.

In the multitext viewer the 1871 field diary is using the stylesheet: 
LEAP-XSLT/style-1871-html.css

It also is using a relative font size:

&#x60;&#x60;&#x60;css
div.transcription.style-1871-html {
  ...
  font-family: &quot;source sans pro&quot;, calibri, arial, helvetica, sans-serif;
  font-size: 1em;
  ...
}
&#x60;&#x60;&#x60;

The difference is the parent element from which it is scaled relatively to is 16px.

If you wish to have exactly 16px in both places use that rather than relative font sizes. So for both of these files you would use:

&#x60;&#x60;&#x60;css
  font-family: &quot;source sans pro&quot;, calibri, arial, helvetica, sans-serif;
  font-size: 16px;
&#x60;&#x60;&#x60;
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/137#issuecomment-342006935) on: **2017-11-5**

Thank you. Makes total sense. I just updated the CSS files and all seems resolved now.
