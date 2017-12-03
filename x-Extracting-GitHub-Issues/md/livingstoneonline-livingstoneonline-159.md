# [Migration to Production.](https://github.com/livingstoneonline/livingstoneonline/issues/159)

> state: **closed** opened by: **nigelgbanks** on: **2017-6-27**

Check that all non-top level Section pages don&#x27;t have the Grid / Carousel images populated.

### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/159#issuecomment-311457794) on: **2017-6-27**

Check that the Empty section pages like &#x27;Address&#x27; don&#x27;t have any content in their body field.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/159#issuecomment-320024729) on: **2017-8-3**

From https://github.com/livingstoneonline/livingstoneonline/issues/106
&gt; Links in dropdown (p.5) also looks good, although note that you&#x27;ve not brought down some of the specific configurations for links from prod -- some links are configured to open in a new window (on prod), but that formatting has been lost on stage. See, for instance, &quot;Images &amp; Transcriptions of the 1870 Field Diary&quot; in the 1870 FD dropdown. I just changed this to target&#x3D;&quot;_blank&quot; to match prod, but it wasn&#x27;t carried over automatically. In any case, this is minor and I can easily reimplement when the time comes, but just wanted to make you aware of this issue.

Need to dbl check links when do this manual aspect of the migration.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/159#issuecomment-320533610) on: **2017-8-6**

When doing the migration, remove the &#x27;place holder&#x27; images from the nodes content for critical edition subpages.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/159#issuecomment-321519874) on: **2017-8-10**

I&#x27;m going to close #196 and will note that we need to resolve the table max-width issue on section pages. You mentioned that you&#x27;d take care of this, so this note is just a placeholder for that.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/159#issuecomment-329755154) on: **2017-9-15**

There are a number of different things cited in this thread. Can you clarify what it is that I should be reviewing and confirming here?
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/159#issuecomment-336631182) on: **2017-10-14**

Nothing really for you to review they were just notes to myself to not forget certain things
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/159#issuecomment-336642303) on: **2017-10-14**

OK, then I&#x27;ll leave this open for now. When we migrate to prod, please feel free to close this when ready.
