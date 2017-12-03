# [Importing content](https://github.com/livingstoneonline/livingstoneonline/issues/134)

> state: **closed** opened by: **awisnicki** on: **2017-6-2**

On the back end, on the import content page, I&#x27;d like the listing ordered and renamed as follows:

Manuscript(s) &#x3D;&gt; Manuscript Objects
Manuscript Page(s) &#x3D;&gt; Manuscript Object Pages/Images
Manuscript Additional PDF(s) &#x3D;&gt; Manuscript Object PDFs
Spectral Manuscript(s) &#x3D;&gt; Spectral Manuscript Objects
Spectral Manuscript Page(s) &#x3D;&gt; Spectral Manuscript Pages
[nothing] &#x3D;&gt; Spectral Manuscript Images [I&#x27;d like this one added]
Illustrative Image(s) &#x3D;&gt; Illustrative Images

We discussed this a while ago, but I never made a ticket for it.

### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/134#issuecomment-306591324) on: **2017-6-6**

Should be sorted though one point of clarification:

&gt; Spectral Manuscript Page(s) &#x3D;&gt; Spectral Manuscript Pages
&gt; [nothing] &#x3D;&gt; Spectral Manuscript Images [I&#x27;d like this one added]

These represent the same data in fedora a single object (there isn&#x27;t a separate object per image, just one for all images of a page). So I&#x27;ve combined the two same as the Manuscript pages.

Spectral Manuscript Page(s) &#x3D;&gt; Spectral Manuscript Pages/Images
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/134#issuecomment-306938267) on: **2017-6-7**

See my note for #115. I can&#x27;t access that section now, so will come back to this. Note, however, that I wanted to separate out Spectral Manuscript Pages and Images partly as a way for me to keep track of the number of images. So although there are 202 spectral manuscript pages, this really represents 3000 odd images so combining the two sounds like I won&#x27;t be getting all that info. So, in other words, for regular manuscripts, one page &#x3D; one image, hence why I combined then, but for spectral manuscripts, one page could &#x3D; 17 images, etc. However, I&#x27;ll review once I can access this.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/134#issuecomment-307185664) on: **2017-6-8**

Should have access now (a permission wasn&#x27;t set for your account that now has been enabled).
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/134#issuecomment-307185930) on: **2017-6-8**

The data on the server is grouped by &quot;objects&quot; not by the files uploaded, the information on the number of files is not currently present in the structure that is used to build that page, it will take some time to write it to add that information.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/134#issuecomment-307236201) on: **2017-6-8**

It looks like everything is sorted except the separate listing out of spectral images, so I&#x27;m leaving this open. Apologies for the extra work.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/134#issuecomment-308156691) on: **2017-6-13**

Ok but just to be clear this will take somewhere in the ball park of 6 or more hours.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/134#issuecomment-308167271) on: **2017-6-13**

Ah, I didn&#x27;t realize that was the amount of time you meant! I think this is one of those cases where we need to imagine the ideal and leave it as that, imaginary. I&#x27;ll go ahead and close this ticket. Thanks for your work in sorting out the rest of this.
