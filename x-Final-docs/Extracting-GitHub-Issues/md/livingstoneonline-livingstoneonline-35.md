# [MS Viewer: Tweaks to Item Details Rendering](https://github.com/livingstoneonline/livingstoneonline/issues/35)

> state: **closed** opened by: **awisnicki** on: **2016-5-9**

1) Repository field is currently showing creator
2) Image Credits should show all fields as one continuous block of text that starts on the same line as &quot;Image Credits:&quot;

Image Credits: Images © National Library of Scotland. Creative Commons Share-alike 2.5 UK: Scotland (https://creativecommons.org/licenses/by-nc-sa/2.5/scotland/). As relevant, © Dr. Neil Imray Livingstone Wilson. Creative Commons Attribution-NonCommercial 3.0 Unported (https://creativecommons.org/licenses/by-nc/3.0/).

3) In image credits, rather than showing the URLs (as above), could we have the foregoing Creative Commons text hyperlinked (to open in new tabs) with the URLs?


### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/35#issuecomment-220958317) on: **2016-5-23**

Ready for review.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/35#issuecomment-221079918) on: **2016-5-23**

Still wonky as follows:
1. Multiple instances of creator should be separated by a semi-colon, not comma
2. Please change &quot;Authors&quot; to &quot;Creator(s)&quot;
3. Repository field is showing Addressee plus repository.
4. Image credits field appears to be static and exactly the same for each item, whereas it should be pulled dynamically from the MODS like the other field here.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/35#issuecomment-222737836) on: **2016-5-31**

I can&#x27;t pull the image credits from the MODS _and_ replace text with a URL as the text is **not** [regular](https://en.wikipedia.org/wiki/Regular_language). So I&#x27;m currently just pulling whats in the MODS. If you are guaranteed to have only a certain set of copyright types I could match explicitly against those (but cases in which there is a spelling mistake or some such it won&#x27;t work), alternatively you could alter the data such the the links and the text that represent them by extending the &#x60;mods&#x60; to make use of the [CDL Copyright schema ](http://www.cdlib.org/groups/rmg/) for more info [MODS Documentation](https://www.loc.gov/standards/mods/userguide/accesscondition.html)

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/35#issuecomment-222805381) on: **2016-5-31**

OK, I think there are two easier solutions here:
1. You could take a URL that appears in the MODS Access Condition field and simply hyperlink it. I believe that would be straightforward, no?
2. I could modify the MODS records so that the access condition field has an &quot;a href&quot; tag with proper URL around any item that should be hyperlinked. I just tested this out and the MODS schema seems to accept it. This change would be easy to make and appears to achieve what we need. Should I go ahead and do it?

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/35#issuecomment-222992034) on: **2016-6-1**

I&#x27;ve implemented number 1. So it will appear like so:

&gt; Images © David Livingstone Centre. Object images used by permission. May not be reproduced without the express written consent of the National Trust for Scotland, on behalf of the Scottish National Memorial to David Livingstone Trust. Images of the objects from the David Livingstone Centre are © Roddy Simpson. Creative Commons Attribution-NonCommercial 3.0 Unported (https://creativecommons.org/licenses/by-nc/3.0/).

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/35#issuecomment-222997724) on: **2016-6-1**

Excellent. Looks good! Closing this issue.....

