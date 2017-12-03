# [Update Image Data](https://github.com/livingstoneonline/livingstoneonline/issues/37)

> state: **closed** opened by: **nigelgbanks** on: **2016-5-12**

&gt; Data has been updated in the 01, 03, 04, and 06 directories so please run your sync program to upload this newest data to the UMD server. Take note that it&#x27;s a larger amount this time (35 GB) as, in particular, I fixed the embedded metadata in a bunch of images.
&gt; 
&gt; Second, we now have a directory in Agnes to which the UMD site can be backed up directly. Apparently everything is all set, so it&#x27;s only a matter of creating a new password for the account and then you can use it to back up the UMD site. This isn&#x27;t a priority, but let&#x27;s discuss it next time we talk and we should also add it to the overall 01 Google project plan.


### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/37#issuecomment-218680905) on: **2016-5-12**

I don&#x27;t have any scripts for syncing content into the Fedora system (just for the initial creation), so that will have to be created at some point (perhaps we should mock out how we want the syncing to work at some point soon, so it can be performed without me).  

I can however start to copy things over to the server from FTP. Since I don&#x27;t know which files that have changed the whole thing will essentially have to come over. Currently we have about 100 GB of space on the server so it&#x27;s less than some of those folders have... So we&#x27;re at a bit of an impasse there.

06 is the archival directory which hasn&#x27;t been ingested into Fedora so I&#x27;ve setup that to sync over now (we should have enough space for it).

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/37#issuecomment-218734742) on: **2016-5-12**

Can you clarify what was happening before, then? Did you have a script to sync the data between FTP and the UMD, but that only did that syncing prior to ingest at UMD?

In terms of the new data, I integrated it into the various subdirectories, but the good news is that I also kept a copy outside of those directories, so I can provide you a copy of just the new data so that can be loaded into Fedora. I&#x27;ll organize that soon and create a separate ticket for it.

In terms of 06, note that these are not yet complete so should not yet be zipped/ingested into Fedora. I&#x27;ll still be adding PDF files plus replacing the existing TEI files.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/37#issuecomment-218741102) on: **2016-5-12**

One more question: when is the last time you sync&#x27;d the image directories?

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/37#issuecomment-219195493) on: **2016-5-13**

Adding this info and closing. We can create a more focused ticket when the time comes:

Prior to ingesting them into fedora we could sync them over. We only have ~ 1 TB of disc space, there is &gt; 700 MB of image data, to keep a full copy of that data along with it ingested in Fedora as well would be &gt; 1.4 TB of data (not including the generated JP2&#x27;s or any of the other data on the server). 

So as data was brought over to the server and ingested into Fedora that sync&#x27;d data that was ingested into Fedora was removed to make space. Right now we have only 130 GB total on the disk so it limits what we can copy over. 

