# [Browse by Catalogue: Date Sorting](https://github.com/livingstoneonline/livingstoneonline/issues/7)

> state: **closed** opened by: **awisnicki** on: **2016-4-28**

Sorting by the date column should always sort by year, month, day (in that order). If the date for an item is actually a range, it should sort by the beginning date.

Note: the dates at the end of the table, on the last few pages, are not being sorted at all.

The dates at the end are date ranges i.e.:
&lt;mods:dateCreated encoding&#x3D;&quot;iso8601&quot;&gt;1856/1857/mods:dateCreated

Nigel: These are currently not indexed (hence why they aren’t sorted), as the system has not yet been built to support date ranges. It’s built on TrieDateField rather than DateRangeField https://cwiki.apache.org/confluence/display/solr/Working+with+Dates. On further inspection DateRangeField was only added to solr in version 5.0 https://lucidworks.com/blog/2016/02/13/solrs-daterangefield-perform, which currently isn’t supported by GSearch and therefore islandora (only up to 4.x is supported at this time). https://issues.apache.org/jira/browse/SOLR-6103.

Extracting the start date in such cases now, ranged queries within the date range but after the start date will not come back in search results but there isn’t anything we can do about that.

**Deployed to stage**, but raises new issue, currently only a single date is displayed even if there is multiple


### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/7#issuecomment-215532240) on: **2016-4-28**

As discussed, we&#x27;ll want to use year ranges. (1860, 1861, 1862, etc.). When will we plan on instituting this?

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/7#issuecomment-217037411) on: **2016-5-4**

This is currently deployed, but can be a bit odd when viewing due to the date data. For example many objects have a date of &quot;Date Unknown&quot; but they also set the ISO 86401 value to a date range like 1800/2000. So in these cases the object will appear in order according to their start date (1800 in this case), which can be a bit confusing as there are dates earlier than this so we see something like this.

&lt;img width&#x3D;&quot;720&quot; alt&#x3D;&quot;dates&quot; src&#x3D;&quot;https://cloud.githubusercontent.com/assets/487373/15032352/d53e093c-1257-11e6-804a-e55741a37c8a.png&quot;&gt;

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/7#issuecomment-217058073) on: **2016-5-4**

The specific issue cited here is resolved. Thank you! I take your last point, however, and have addressed it separately in this issue: https://github.com/livingstoneonline/livingstoneonline/issues/4

So I am closing this one.

