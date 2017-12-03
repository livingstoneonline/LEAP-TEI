# [Geolocation: Display configuration](https://github.com/livingstoneonline/livingstoneonline/issues/199)

> state: **closed** opened by: **awisnicki** on: **2017-8-11**

Originally, the idea had been to display the whole digital collection on the map at one go, but I understand that this turned out to be too slow or somehow otherwise not functional. I don&#x27;t think that having the numbered pages at the bottom works well, so we need another, more obvious way to divide up the content so only chunks of it are shown at one time.

So I suggest divisions by date. Would the following be feasible:

Before 1840
1840-1849
1850-1859
1860-1869
After 1870

These would then be offered as a series of radial button options below the search boxes. See screen shot. The numbered pages of additional would not appear below the map because we wouldn&#x27;t ever have &quot;additional&quot; pages.

![screen shot 2017-08-11 at 18 38 36](https://user-images.githubusercontent.com/12518623/29234564-d99b9dba-7ec5-11e7-8b0e-2a9ecee1d371.png)


### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/199#issuecomment-321940193) on: **2017-8-11**

Also, note that it would actually be most logical to divide by specific dates so, for instance, something like 6 June 1852 - 11 March 1856, so that&#x27;s another option. This way we could link to specific phases of Livingstone&#x27;s career.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/199#issuecomment-321989758) on: **2017-8-12**

One more point: What I was getting at in the last point is that the most logical way to do this would be by periods of DL&#x27;s life, so on the page the range option might look something like this:

Origins (-1841)
Early years in Africa (1841-52)
Transcontinental expedition (1852-56)
First return to UK (1856-58)
Zambezi expedition (1858-64)
Second return to UK (1864-65)
Final expedition (1865-73)
Afterlife (1873-)

However, the underlying divisions for each of these would be based on specific dates rather than a kind of 1 Jan - 31 Dec schema for each year. Would that be feasible. This kind of division would be ideal and, moreover, the amount of items for any given period would not be that large and so possible to display all at once.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/199#issuecomment-336630860) on: **2017-10-14**

There really isn&#x27;t support via the Google Maps Views module to do these things without significant work (essentially building the display our selves and discarding the contrib module, it&#x27;s at least several days work).

Though since ticket #200 mentioned removing the search boxes that allowed me to implement caching for the display so now we can have reasonable performance, and display all 3000+ records simultaneously. 
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/199#issuecomment-336647116) on: **2017-10-14**

Yes, I think this is fine. We can always come back to this on a new project and do more work, but I think it works well the way you&#x27;ve set it up now. Thank you again.
