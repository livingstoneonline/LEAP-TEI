# [Item Details ](https://github.com/livingstoneonline/livingstoneonline/issues/50)

> state: **closed** opened by: **nigelgbanks** on: **2016-6-1**

&gt; Separately, I&#x27;ll just throw this small bit in here rather than creating a new ticket, but I noticed when reviewing this that in the viewer, in the Item Details section, when there are two creators, they are separated by a comma rather than semi-colon. Please make it semi-colon. Example:
&gt; http://livingstonestage.lib.umd.edu/islandora/search?full_record&#x3D;1&amp;sort&#x3D;desc&amp;order&#x3D;Title&amp;view_pid&#x3D;liv%3A000214&amp;view_page&#x3D;0


### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/50#issuecomment-223137680) on: **2016-6-1**

Looks good. Thank you!

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/50#issuecomment-223140133) on: **2016-6-1**

Sorry, I have to reopen this ticket. Take a look at this item:
http://livingstonestage.lib.umd.edu/islandora/search?f[]&#x3D;repository_ms%3A%22National+Library+of+Scotland%22&amp;f[]&#x3D;genre_ms%3A%22color+slides%22&amp;view_pid&#x3D;liv%3A014073&amp;view_page&#x3D;0

And others like it, here: 
http://livingstonestage.lib.umd.edu/islandora/search?f[]&#x3D;repository_ms%3A%22National+Library+of+Scotland%22&amp;f[]&#x3D;genre_ms%3A%22color+slides%22

Item details should include John Murray _and_ Unknown Creator but the Unknown Creator is missing.

(Also, I don&#x27;t know if this is just a temporary glitch, but the first two items available the Browse link above are not coming up in the viewer).

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/50#issuecomment-223142040) on: **2016-6-1**

Should be sorted now.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/50#issuecomment-223153043) on: **2016-6-1**

OK, looks good re: Unknown Creator, so I&#x27;m closing this. The first two items are still not coming up, however: 

http://livingstonestage.lib.umd.edu/islandora/search?f[]&#x3D;repository_ms%3A%22National+Library+of+Scotland%22&amp;f[]&#x3D;genre_ms%3A%22color+slides%22&amp;view_pid&#x3D;liv%3A014071&amp;view_page&#x3D;0

http://livingstonestage.lib.umd.edu/islandora/search?f[]&#x3D;repository_ms%3A%22National+Library+of+Scotland%22&amp;f[]&#x3D;genre_ms%3A%22color+slides%22&amp;view_pid&#x3D;liv%3A014069&amp;view_page&#x3D;0

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/50#issuecomment-223251981) on: **2016-6-2**

Fixed a small mathy issue with openseadragon (only affected really large images) they both should appear at all zoom levels now.

