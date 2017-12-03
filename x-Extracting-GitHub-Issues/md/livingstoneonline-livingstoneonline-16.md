# [Browse by Catalogue: Sorting by Hidden Field](https://github.com/livingstoneonline/livingstoneonline/issues/16)

> state: **closed** opened by: **awisnicki** on: **2016-5-4**

Sorting by the header of a hidden field closes the table when it shouldn&#x27;t.


### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/16#issuecomment-217878894) on: **2016-5-9**

I can&#x27;t seem to reproduce the behaviour. The table doesn&#x27;t close for me, but does re-render, when it re-renders the user will have to scroll horizontally back to the original position, since the layout can change when this happens I can&#x27;t reliable auto-scroll the user to a particular horizontal position. This is a consequence of hiding the table and making it horizontally scrollable. 

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/16#issuecomment-217900784) on: **2016-5-9**

I just tested and it appears that the issue I describe is limited to Mozilla: the table both closes and rerenders. 

In Safari and Chrome, it just rerenders as you describe, which is fine.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/16#issuecomment-217972091) on: **2016-5-9**

Fix has been deployed to stage.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/16#issuecomment-218000286) on: **2016-5-9**

Looks good. Thank you.

