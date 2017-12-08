# [Directory structure for Drupal images](https://github.com/livingstoneonline/livingstoneonline/issues/139)

> state: **closed** opened by: **awisnicki** on: **2017-6-12**

I&#x27;ve reviewed the files.csv file and would like to go with the following structure:

1) Create six main directories, numbered, that correspond to the six sections of the site.

About-this-Site
In-His-Own-Words,
Spectral-Imaging

etc.

2) In each section, create sub-directories for the pages that constitute that section. Into those sub-directions, put the images that go with each given page. If an image is used for two or more different pages, put separate copies of the image in each relevant sub-directory.

So, for instance, an image from a page in the In His Own Words section, would have the following path:

In-His-Own-Words/The-Livingstone-Online-Digital-Collection/liv_012043_0001-article.jpg

3) In the case of critical edition page, add one more layer of sub-directories.

Spectral-Imaging/Livingstone&#x27;s-1870-Field-Diary/Project-Team/liv_000073_0002-article.jpg

4) Finally, for images that are not linked to any given page, create one subdirectory at the top level (same level as the six main sections) and call that directory &quot;Unlinked.&quot; (On prod, you will now find some images that are unlinked to any given site page in just this way.)

### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/139#issuecomment-307956606) on: **2017-6-12**

Also, note that for ZIP and PDF files, I&#x27;d like to follow a slightly different process. For those files, put them in two top level directories &quot;ZIPs&quot; and &quot;PDFs&quot; (same level as &quot;Unlinked&quot; and the six main sections). All relevant pages, should then point to these two directories.

In other words, zip and pdf files should not be duplicated and distributed into individual page directories.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/139#issuecomment-307957159) on: **2017-6-12**

Also, one question. I see you in your CSV file that there are many instances, where a line is duplicated and the same page points to the same image twice:

6fb642c6-5b13-41a6-a99f-462bc4fcef2e	Overview of Processing Objectives	/sites/default/files/liv_016141_0001.jpg
6fb642c6-5b13-41a6-a99f-462bc4fcef2e	Overview of Processing Objectives	/sites/default/files/liv_016141_0001.jpg

This does not always happen, but only sometimes. Can you explain this?
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/139#issuecomment-308071599) on: **2017-6-13**

&gt; Also, one question. I see you in your CSV file that there are many instances, where a line is duplicated and the same page points to the same image twice:

&gt; 6fb642c6-5b13-41a6-a99f-462bc4fcef2e	Overview of Processing Objectives /sites/default/files/liv_016141_0001.jpg
6fb642c6-5b13-41a6-a99f-462bc4fcef2e	Overview of Processing Objectives /sites/default/files/liv_016141_0001.jpg

&gt; This does not always happen, but only sometimes. Can you explain this?

To make sure we got all references to all files, we extracted them from links (&amp;lt;a&amp;gt; tags) and also image tags (&amp;lt;img&amp;gt;) in this case and in others you have a file embedded in the image tag is surrounded by a link tag that points to the same file, so it&#x27;s referenced twice and as such gets extracted twice.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/139#issuecomment-308129843) on: **2017-6-13**

Ah, that&#x27;s quite useful to know, then. As I think some images that should have both &#x60;&lt;a&gt;&#x60; and &#x60;&lt;img&gt;&#x60; don&#x27;t. This will help me identify them. 
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/139#issuecomment-310232729) on: **2017-6-21**

I&#x27;m putting this on hold until we&#x27;re ready to do the migration to production as I&#x27;m going to have to do some of this manually.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/139#issuecomment-310341367) on: **2017-6-22**

OK, no problem. I was thinking along the same lines, as I&#x27;ve been adding images over the last few weeks, so we&#x27;d want to make a pause while you set this up.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/139#issuecomment-310700652) on: **2017-6-23**

Just a note, the TEI makes references to files that exist on the server, these need to be accounted for and be left in place, otherwise they will break the transcription displays.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/139#issuecomment-311057705) on: **2017-6-26**

OK, great. Thanks for letting me know. Can you generate a list of such files for me and, perhaps, which TEI files are referencing them? I suspect that it&#x27;s just a handful of TEI files, so this is something I could sort out myself down the road and you can leave all relevant files in place for now.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/139#issuecomment-329080533) on: **2017-9-13**

Deployed to stage, you can browse by clicking on your user name in the top right hand corner then selecting &quot;File Browser&quot;, images within the section pages will refer to these new locations.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/139#issuecomment-329080881) on: **2017-9-13**

&lt;img width&#x3D;&quot;1440&quot; alt&#x3D;&quot;screen shot 2017-09-13 at 08 17 16&quot; src&#x3D;&quot;https://user-images.githubusercontent.com/487373/30364412-0953aa16-985c-11e7-8dc0-357acb16dc4a.png&quot;&gt;

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/139#issuecomment-329752381) on: **2017-9-15**

**A few questions about File Browser**

I see a few empty folders here: css, ctools, js, materials, pictures, print_pdf, schemas. Are these needed? Can these be removed?

How is the styles folder being used?

I also see a folder for Filedepot, but no files in it. However, I see that the &quot;private&quot; folder has the Filedepot files. How will this work? I see that I can&#x27;t access it via the usual method of just adding &quot;filedepot&quot; to the end of the home page URL.

Where are the ZIP and PDF files, and unlinked images, which I&#x27;d asked to have in separate directories above?

Above, I&#x27;d asked to have critical edition pages be in one more set of subdirectories. So, for instance, in the main spectral imaging directory, you&#x27;d just have an 1870 Field Diary directory, and then all the pages for that edition would be in subdirectories of the main one. Since you haven&#x27;t set that up, I&#x27;m guessing that&#x27;s not feasible?

Is there a way to upload more than one file at once?


**A few theming/functional questions**

Can we add a search box?

Please refresh my memory on this. I will have a local copy of all the files here and will be able to sync with the online version. Is that correct?

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/139#issuecomment-330053512) on: **2017-9-17**

&gt; I see a few empty folders here: css, ctools, js, materials, pictures, print_pdf, schemas. Are these needed? Can these be removed?

Drupal will create some folders and files, it&#x27;s best not to delete them, lest they cause some bug.

&gt; How is the styles folder being used?

These are generate by Drupal, it applies styles for particular views of images (croping or resizing images, etc). Best not to edit this folder directly.

&gt; I also see a folder for Filedepot, but no files in it. However, I see that the &quot;private&quot; folder has the Filedepot files. How will this work? I see that I can&#x27;t access it via the usual method of just adding &quot;filedepot&quot; to the end of the home page URL.

Filedepot is a tool that is no longer in use so these folders could be deleted safely. The private folder is a Drupal folder for non-public files (files that are only accessible to authenticated users). The files in the folder &quot;private/filedepot&quot; are not referenced by any of the section pages, it&#x27;s likely they are not used anywhere, and could be safely deleted, unless of course you wish to leave them on as a sort of backup).

&gt; Where are the ZIP and PDF files, and unlinked images, which I&#x27;d asked to have in separate directories above?

The staging server does not have enough space for all of these files so they are stripped out. They will be available on production though.

&gt; Above, I&#x27;d asked to have critical edition pages be in one more set of subdirectories. So, for instance, in the main spectral imaging directory, you&#x27;d just have an 1870 Field Diary directory, and then all the pages for that edition would be in subdirectories of the main one. Since you haven&#x27;t set that up, I&#x27;m guessing that&#x27;s not feasible?

This is not feasible. You can move them around afterwards manually though (after the move to production) if you see fit.

&gt; Is there a way to upload more than one file at once?

There is now, I&#x27;ve just added this functionality.

&gt; Can we add a search box?

Yes I&#x27;ve just added this functionality.

&gt; Please refresh my memory on this. I will have a local copy of all the files here and will be able to sync with the online version. Is that correct?

We can set that up for production, after the move.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/139#issuecomment-331224120) on: **2017-9-21**

Re: Filedepot, I think then that we can delete the main Filedepot directory (that is empty). 

The private folder with Filedepot files, however, I&#x27;d like to keep. Indeed, this is not referenced anywhere in the site, but include documentation, such as permissions etc. Before we overwrite prod, I&#x27;ll make sure I have all the Filedepot files from prod (what&#x27;s on private at present is a bit disoraganized).

Re: ZIP &amp; PDF sounds good.

Re: Critical ed subdirectories, no prob.

Re: Upload and Search functionality, look good. For search, can we have partial search, i.e., so that if I enter only the first part of the name I get some results? Right now, it looks like it&#x27;s only exact match or nothing. 

Finally, note that the theming on upload and search is slightly off, see below.

![screen shot 2017-09-21 at 12 15 32](https://user-images.githubusercontent.com/12518623/30709258-3fe3e372-9ec7-11e7-88f5-615af7698b0c.png)
![screen shot 2017-09-21 at 12 15 36](https://user-images.githubusercontent.com/12518623/30709257-3fdbacca-9ec7-11e7-835a-45c8fb17880b.png)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/139#issuecomment-331732990) on: **2017-9-24**

&gt; Re: Upload and Search functionality, look good. For search, can we have partial search, i.e., so that if I enter only the first part of the name I get some results? Right now, it looks like it&#x27;s only exact match or nothing.

That would be out of scope, I didn&#x27;t implement this functionality; It&#x27;s simply what&#x27;s provided by a contrib module.

&gt; Finally, note that the theming on upload and search is slightly off, see below.

Updating the look would be out of scope this is only viewable by you (it&#x27;s not public). We are not maintaining or modifying this module.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/139#issuecomment-331938150) on: **2017-9-25**

Ah-ha. No prob. I suspect that once the files are on my local machine, I&#x27;ll probably be accessing/searching, etc. them that way anyway, so all should be good. Thanks again for your other work on this ticket.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/139#issuecomment-332242697) on: **2017-9-26**

I have one more question about File Browser, so am reopening this ticket. I see that along the top there are a few features that we don&#x27;t need: Thumbnails and Resize. Can you easily turn these two options off and/or hide them? The &quot;create thumbnails&quot; option on &quot;Upload&quot; could also be turned off.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/139#issuecomment-336630911) on: **2017-10-14**

Fortunately there was some settings which allowed me to remove them.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/139#issuecomment-336643945) on: **2017-10-14**

OK, looks great. Thank you!
