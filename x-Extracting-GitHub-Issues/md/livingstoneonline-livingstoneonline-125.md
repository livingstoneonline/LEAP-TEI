# [Free Disk Space Running Low](https://github.com/livingstoneonline/livingstoneonline/issues/125)

> state: **closed** opened by: **awisnicki** on: **2017-1-15**

Free disk space on the site appears to be running low. In addition, I&#x27;m just now importing some new content so it&#x27;s going to run even lower. Is there are anything that can be cleared out to give us more space? 

There have been a few times in the past when I try to add things to the site, they failed to update, but I noted that disk space dropped meaning that, I believe, they were download for our server to the site but not added, so I&#x27;m guessing some of those kinds of files could go and give us space.

### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/125#issuecomment-272810768) on: **2017-1-16**

Doesn&#x27;t appear to be anything we can get rid of. The content is what&#x27;s taking up 94% of the 95% of allocated space. That other 1% is necessary for the operation of the site. We shouldn&#x27;t push the box above 95% allocation. Seems like it&#x27;s time to purchase the extra 500 GB of space to bring it up to 2 TB.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/125#issuecomment-273273445) on: **2017-1-17**

OK, I&#x27;ll look into this, but just to confirm here&#x27;s what happened:

1. Over the holidays, I used my Ubuntu 16.04 computer via Filezilla (where I have set the default file type to be Binary, as instructed) to upload a bunch of images to our server.
2. I then tried to transfer them to the UMD site via the normal process. When I started (to make up a figure) we had 130 GB left, but I ran the update and it failed. Then we had 120 GB left. I ran it again, same result, now 110 GB left.
3. Then I reuploaded everything from my PC and this time it worked, but now we dropped down to 100 GB. 

I haven&#x27;t looked into (or raised with you) why it doesn&#x27;t work from my Ubuntu computer because sorting that out isn&#x27;t a priority, but the point is that I only uploaded some small amount of data but because it failed twice it ended up taking much more space then necessary. So I would think that that 20 GB could be recovered. There were probably some similar instances in the past, when we ran into sync failures before.

So that&#x27;s the space I was hoping we could recover somehow.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/125#issuecomment-273302835) on: **2017-1-17**

There wasn&#x27;t any temp files or uploaded files that weren&#x27;t ingested into fedora lying around on the system, but I removed all our logs and some old backups, to give up 20GB just to get us under the warning size of 95%.

So we currently have 108GB left on the /data directory:
&#x60;&#x60;&#x60;bash
df -h
/dev/mapper/vg_livingstone-lv_data  1.5T  1.3T  108G  93% /data
&#x60;&#x60;&#x60;

This is broken out across these folders
&#x60;&#x60;&#x60;bash
du -hd1 /data
24G	/data/docker
4.0K	/data/ftp
26M	/data/drupal-solr
16K	/data/lost+found
268M	/data/solr
8.6G	/data/drupal
1.3T	/data/fedora
6.9G	/data/mysql
1.3T	/data
&#x60;&#x60;&#x60;

We can&#x27;t go any lower than this unfortunately.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/125#issuecomment-273365825) on: **2017-1-17**

Thanks for sorting this out. This creates at least a tad of breathing space, particularly useful as I have a GB or two of images still coming. I&#x27;ll look into getting the additional GB soon, but will go ahead and close this ticket now.
