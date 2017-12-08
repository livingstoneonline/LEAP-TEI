# [Browse by Catalogue: ZIP download access](https://github.com/livingstoneonline/livingstoneonline/issues/57)

> state: **closed** opened by: **awisnicki** on: **2016-6-16**

Please add access to zip downloads per the attached mockup. (No need to provide time estimate, since you said this would be quick job.)
![screen shot 2016-06-16 at 13 59 23](https://cloud.githubusercontent.com/assets/12518623/16130581/92b1b174-33cf-11e6-855b-d1b94a61db38.png)

The relevant URLs are:

PDF
http://livingstone.lib.umd.edu/sites/default/files/Livingstone-Online-Complete-PDF-transcriptions.zip

TEI
http://livingstone.lib.umd.edu/sites/default/files/Livingstone-Online-Complete-TEI-transcriptions.zip

MODS
http://livingstone.lib.umd.edu/sites/default/files/Livingstone-Online-Complete-MODS-records.zip


### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/57#issuecomment-231440195) on: **2016-7-8**

This looks right except it&#x27;s too narrow so that text is wrapping when it shouldn&#x27;t (note how in my mock up above everything fits on three separate lines). See attached screen shot for what I&#x27;m seeing now.

Also, the links don&#x27;t work, but I&#x27;m guessing this will be resolved when this is pushed up to prod and links are pointing to prod.
![screen shot 2016-07-08 at 13 39 32](https://cloud.githubusercontent.com/assets/12518623/16697969/a6349894-4511-11e6-8643-b65d2f4c4f4d.png)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/57#issuecomment-231715836) on: **2016-7-11**

I had to decrease the font size to keep those proportions across all resolutions. The download links will only work on Production, as it&#x27;s the only server with those files on it.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/57#issuecomment-231852330) on: **2016-7-11**

Unfortunately, this is still problematic for the following reasons:
1. I was looking for all the lines of text to be centered on the area below the dropdown, but the latter two lines seem left justified (PDF transcriptions (general users) / TEI transcriptions MODS Records). All lines should be continuously centered.
2. &quot;PDF transcriptions (general users)&quot; is one bit of text but it looks like you&#x27;ve put extra spacing between &quot;PDF transcriptions&quot; and &quot;general users&quot; as if these were two items.
3. Lines are still breaking in two at some resolutions. See attached screen shots. 
   ![screen shot 2016-07-11 at 22 13 37](https://cloud.githubusercontent.com/assets/12518623/16745169/eb958542-47b4-11e6-83ec-97a68120b75a.png) 
   ![screen shot 2016-07-11 at 22 15 48](https://cloud.githubusercontent.com/assets/12518623/16745225/2e969cbe-47b5-11e6-9d80-9641010f7cbc.png)

Finally, note that on stage, this page has padding at the sides added by Kathy in preparation for adding arrows at the sides. So search boxes look a little wonky at narrower resolutions because of the extra padding. However, once Kathy adds and configures the arrows, full width should be restored at narrow resolutions because the arrows disappear by the time you get to iPad width and the catalogue then goes full width again. I hope that make sense.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/57#issuecomment-231853340) on: **2016-7-11**

Also, one way we could address the issue of the line breaking and having to make the text smaller is to break this up vertically as follows:

Download complete:
PDF transcriptions (all users)
TEI transcriptions (specialists)
MODS Records (specialists)

Perhaps that would be better and help?

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/57#issuecomment-232615246) on: **2016-7-14**

That helps, I&#x27;ve pushed it up to stage. As you said in the previous comment the padding on the sides does mess with this at lower resolutions (iPhone, etc).

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/57#issuecomment-232770611) on: **2016-7-14**

This looks good. Kathy should fix the padding problem. Two questions:
1) Is there only one space after the hyperlinked text? It looks like two.
2) Could not the size on the text be increased slightly? It looks like there&#x27;s some scope for this even for lower widths (try removing the padding that&#x27;s still there to see what I mean).

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/57#issuecomment-232895955) on: **2016-7-15**

&gt; 1) Is there only one space after the hyperlinked text? It looks like two.

There isn&#x27;t any space characters but there is a padding of 0.5em approx 5.6 pixels.

&gt; 2) Could not the size on the text be increased slightly? It looks like there&#x27;s some scope for this even for lower widths (try removing the padding that&#x27;s still there to see what I mean).

When the paddings removed I can get it to 0.9em at the lower resolutions. It&#x27;s now on stage.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/57#issuecomment-232920644) on: **2016-7-15**

For 2), looks good.
For 1), please reduce to 0.3em and then feel free to close out this ticket.

