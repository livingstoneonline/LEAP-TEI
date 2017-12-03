# [Add another table to the fedora import page to list the number of pages, etc that are missing derivatives ](https://github.com/livingstoneonline/livingstoneonline/issues/123)

> state: **closed** opened by: **nigelgbanks** on: **2016-12-22**

An issue when generating derivatives for ingested objects occurred during the migration ran on Dec 12. There is nothing in the logs as to why they failed. I’ve generated the JP2’s now using the “same“ code. So my best guess is that it was a timeout issue (PHP has a max run time per process of 60 seconds). Seems like it would be prudent to add a an additional table to the import page to list all the objects missing derived JP2’s so we’ll be aware of it if it happens again, along with the ability to manually trigger the regeneration of any images listed there.

### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/123#issuecomment-306583004) on: **2017-6-6**

Now displayed below the other tables:
![screen shot 2017-06-06 at 19 53 36](https://user-images.githubusercontent.com/487373/26846558-ee6e82c8-4af1-11e7-839a-919cb24fc4ad.png)

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/123#issuecomment-306936340) on: **2017-6-7**

As noted in #115, I can&#x27;t see how to access importing content from remote FTP, so I can double-check this once I can. Leaving open for now as a reminder.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/123#issuecomment-307189635) on: **2017-6-8**

I&#x27;ve corrected the permissions issue so you should be able to view it, everything is under the &quot;Livingstone&quot; admin section of the site.

![screen shot 2017-06-08 at 19 33 09](https://user-images.githubusercontent.com/487373/26944703-5ff06cb4-4c81-11e7-8b7b-a5d14ca78593.png)

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/123#issuecomment-307235691) on: **2017-6-8**

Looks good. Thank you!
