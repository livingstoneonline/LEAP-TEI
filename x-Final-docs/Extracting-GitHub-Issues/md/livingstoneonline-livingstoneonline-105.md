# [Server: Setting Backup Location](https://github.com/livingstoneonline/livingstoneonline/issues/105)

> state: **closed** opened by: **awisnicki** on: **2016-11-14**

Currently when the Drupal database is backed up to our server it goes to: /Production-Site-Backup

However, I&#x27;d like it to go to a subfolder there: /Production-Site-Backup/database

I tried to configure backups to that location myself, but it doesn&#x27;t work. Can you double-check the configuration when you have a moment.

### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/105#issuecomment-286099095) on: **2017-3-13**

Seems it&#x27;s working in that the new backups are beings placed in files that are still in /Production-Site-Backup/database. 

I think we can delete all the backups in /Production-Site-Backup, and lots of the ones in /Production-Site-Backup/database as we probably only need to keep 1-2 months worth of backups.

From searching it would seem that likely the backups that were continuously added to the old location (/Production-Site-Backup) were probably coming from the staging server, as it looks like it was setup with backups as well.

So if you like I&#x27;ll:

- Have only production generate backups on Agnes
- Remove old backups
- Change backup system to keep a rolling 30 day backup rather than keeping every backup indefinitely.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/105#issuecomment-286300941) on: **2017-3-13**

Excellent, good to know on the above points. Here&#x27;s what I&#x27;d like based on what you&#x27;ve written:
1. Have only production generate backups on Agnes
2. Remove old backups
3. Change backup system to keep a rolling 90 day backup rather than keeping every backup indefinitely.
In the future, I&#x27;ll probably want to change how far the backups go, but for now since we&#x27;re still fairly heavily developing the site, I&#x27;d like to have more backups.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/105#issuecomment-310360659) on: **2017-6-22**

This is setup in a &quot;Drupal Feature&quot;, but is currently awaiting on deployment to production.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/105#issuecomment-310397915) on: **2017-6-22**

OK, thanks for letting me know. We can close this once we go to prod.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/105#issuecomment-342015682) on: **2017-11-5**

I believe this is set up and we can close this ticket. Before we do, could you tell me how I trigger a manual backup?
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/105#issuecomment-342071327) on: **2017-11-6**

Log in as the administrator and go to the page:

http://livingstoneonline.org/admin/config/system/backup_migrate

![screen shot 2017-11-06 at 07 50 49](https://user-images.githubusercontent.com/487373/32430482-617bc5e4-c2c7-11e7-80a2-eda6e1d61a17.png)

There you can trigger backups, I wouldn&#x27;t recommend triggering the file back up all too often as theres 11GB of file data on the server so that&#x27;s not really practical to download. Either way the backups run every day. Also to note there are two destinations &quot;Agnes&quot; and &quot;Agnes Files&quot; the first is the location of the database, the second is the location of the files directory please select the appropriate one for the type of backup you wish to perform.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/105#issuecomment-342141673) on: **2017-11-6**

OK, perfect. Thank you!
