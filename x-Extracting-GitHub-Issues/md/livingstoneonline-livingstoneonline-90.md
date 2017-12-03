# [Add LEAP-XSLT to deployment form](https://github.com/livingstoneonline/livingstoneonline/issues/90)

> state: **closed** opened by: **nigelgbanks** on: **2016-11-1**

Alter:
https://github.com/livingstoneonline/LEAP-XSLT

To have three branches (dev,stage,prod) and add it&#x27;s deployment to the deployment form in the admin section of the site.

### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/90#issuecomment-257956480) on: **2016-11-2**

Should be sorted now, branches added and deployment setup.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/90#issuecomment-257957392) on: **2016-11-2**

Great thank you. Does this mean that the way I tried to update them yesterday on the site by using http://livingstonestage.lib.umd.edu/admin/config/development/livingstone (which didn&#x27;t work, ) will now work?

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/90#issuecomment-257967910) on: **2016-11-2**

Yup

On Wed, Nov 2, 2016 at 6:30 PM, awisnicki notifications@github.com wrote:

&gt; Great thank you. Does this mean that the way I tried to update them
&gt; yesterday on the site by using http://livingstonestage.lib.
&gt; umd.edu/admin/config/development/livingstone (which didn&#x27;t work, ) will
&gt; now work?
&gt; 
&gt; —
&gt; You are receiving this because you modified the open/close state.
&gt; Reply to this email directly, view it on GitHub
&gt; https://github.com/livingstoneonline/livingstoneonline/issues/90#issuecomment-257957392,
&gt; or mute the thread
&gt; https://github.com/notifications/unsubscribe-auth/AAdvzWfOXGNBSPPw-AVZEzVjb8x-L8qDks5q6NbJgaJpZM4Kmm-e
&gt; .

## 

Nigel Banks
nigel.g.banks@gmail.com

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/90#issuecomment-257981043) on: **2016-11-2**

OK, so two quick question as there are now six branchs to this repo. First, it looks like gh-pages are now in sync with dev/stage/prod. Is that correct? Second, henceforth we are only using dev/stage/prod, so I should ignore gh-pages. Is that correct?

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/90#issuecomment-258092040) on: **2016-11-3**

We should always make &#x60;gh-pages&#x60; match &#x60;prod&#x60;, as the downloaded TEI documents themselves will point to the &#x60;gh-pages&#x60; branch.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/90#issuecomment-258092152) on: **2016-11-3**

&#x60;gh-pages&#x60; is a special branch provided by github for hosting webpages.

