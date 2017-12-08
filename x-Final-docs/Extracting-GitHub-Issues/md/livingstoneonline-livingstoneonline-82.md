# [Browse by Catalogue: Full Record](https://github.com/livingstoneonline/livingstoneonline/issues/82)

> state: **closed** opened by: **awisnicki** on: **2016-9-3**

I&#x27;ve discovered that from the desktop version of the site, it&#x27;s not possible to move left and right in the catalogue when Full Record is checked without using the arrow keys. We may implement the Ext JS table down the road, so this could be resolved, but that&#x27;s some time away. So in the meantime could you please do the following:
1. Make the words &quot;Full Record&quot; on the left side look like a hyperlink.
2. Once clicked, please make it so that a tooltip appears, exactly like the one you just added for the viewer. The tooltip should say:

On desktop computers, use the &lt;- left and right -&gt; arrows keys (or the slider at the bottom of the table) to scroll right and left in the table.


### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/82#issuecomment-244561721) on: **2016-9-3**

Alternately, just above the table, on the same line and in the same font as the line that says:

&#x60;&#x60;&#x60;
1 2 3 4 5 … next › last » 
&#x60;&#x60;&#x60;

we could put on the left side

&lt;- Left arrow key to scroll left

and on the right side

Right arrow key to scroll right -&gt;

We&#x27;d just have to work out that these two moved to their own line once the table began to narrow for mobile.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/82#issuecomment-244593518) on: **2016-9-4**

I&#x27;ve been thinking about the table layout and I think it might be best if we make each row appear as a table, see the example below:

This:
![css-screen-1](https://cloud.githubusercontent.com/assets/487373/18230259/5e9790be-728d-11e6-9b42-97010e3bc2fa.png)

Becomes:
![css-mobile-1](https://cloud.githubusercontent.com/assets/487373/18230263/69e246d0-728d-11e6-987c-6409bee6db19.png)

This way we wouldn&#x27;t need any side scrolling, and it has the nice benefit of showing more data from a single row at a time. As I think people reading the site will be more interested in viewing the content of a single row rather than comparing values between two or more rows. Adopting this method would also save us the hastle of rebuilding the table to work with extjs.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/82#issuecomment-244620377) on: **2016-9-4**

**Desktop Large:**
![screen shot 2016-09-04 at 19 11 49](https://cloud.githubusercontent.com/assets/487373/18233018/948e279a-72d4-11e6-9294-e87f6faa66f3.png)

**Desktop Small:**
![screen shot 2016-09-04 at 19 18 53](https://cloud.githubusercontent.com/assets/487373/18233019/96b9d3a2-72d4-11e6-9d5b-ce0340823f3e.png)

**Mobile:**
![screen shot 2016-09-04 at 19 20 52](https://cloud.githubusercontent.com/assets/487373/18233026/c89ebd24-72d4-11e6-9121-b7315e0d37d0.png)

The tool tip is a bit problematic in that the Full Record is togglable, and users can be linked to the page with it enabled so they wouldn&#x27;t see the tooltip on first visit.

Does the screen shots look acceptable? Alternatively we could also just place the descriptive text below the Full Record option?

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/82#issuecomment-244621963) on: **2016-9-4**

This should be OK. For now, just put in on stage and I can check it out there. I would like to have some right padding for the text on the left and, alternately, left padding for the text on the right so that it&#x27;s a) not so bunched next to the numbers on desktop and b) has a bit of space between the two sides it goes to smaller sizes and goes on its own line. Also note that this can probably disappear on the phone versions of the site, no? It&#x27;s mainly needed for laptop and desktop computers.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/82#issuecomment-244991731) on: **2016-9-6**

It&#x27;s deployed to stage, for review.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/82#issuecomment-245095027) on: **2016-9-6**

Overall this looks good, but please make the following modifications:
1. Change the text as follows (note the dashes added next to the arrows):

‹-- scroll in table: left arrow key

scroll in table: right arrow key --›
1. When the text goes to its own line above the numbers, bring the two sides in so they are centered (rather than float left and right), but put a little padding between them so that users can tell these are two separate things

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/82#issuecomment-245095463) on: **2016-9-6**

Also, when the scroll text goes to its own line, can we put it below the numbers line rather than above?

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/82#issuecomment-246612752) on: **2016-9-13**

Deployed to stage and ready for review.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/82#issuecomment-246653734) on: **2016-9-13**

This looks great. Please make two small changes in the wording as follows:

Replace &quot;scroll&quot; in both cases with &quot;click&quot;
Replace the colon with a comma

So....

← click in table, left arrow key

click in table, right arrow key →

Also, question: would it be possible to hide this text until 1) someone checks the full record or 2) the width of the screen narrows to the point where part of the table starts to be hidden?

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/82#issuecomment-246968085) on: **2016-9-14**

K it&#x27;s deployed to stage, now it will only display the text if the table can&#x27;t fit into the display, except of course when it&#x27;s lower resolution like mobile in which case it doesn&#x27;t display.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/82#issuecomment-247038832) on: **2016-9-14**

Works perfectly! Thank you! Please push to prod ASAP!

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/82#issuecomment-247047030) on: **2016-9-14**

K, Deployed to prod.

