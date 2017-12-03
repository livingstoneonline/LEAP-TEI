# [Geolocation: Popup box](https://github.com/livingstoneonline/livingstoneonline/issues/202)

> state: **closed** opened by: **awisnicki** on: **2017-8-11**

When one clicks on a pin on the geolocation page, the font in the box that pops up is grainy. Is this the same font as use elsewhere on the site?

Also, please make the fields that appear in the box as follows: 

Location (in a slightly bigger font; Livingstone&#x27;s location)
Title (hyperlinked to item)
Creator
Date

In other words, this will be similar to what we&#x27;ve done with the info presented for the timeline although ordering here is different and location is included.

### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/202#issuecomment-336630664) on: **2017-10-14**

Done, and I used the same settings as the timeline page.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/202#issuecomment-336646813) on: **2017-10-14**

OK, all this looks good. Please put &quot;Title:&quot; (not hyperlinked) before the title, and then please feel free to close out this ticket. 

Could you also tell me where the display and text of the items in the popup is edited, so I can do so myself if necessary in the future?
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/202#issuecomment-337423044) on: **2017-10-17**

You mentioned in another ticket that you didn&#x27;t see all the 3000 markers, I thought this was because when zoomed out they were overlaid overtop of one and other until you zoom in, so I&#x27;ve implemented a clustering system.

![screen shot 2017-10-18 at 01 36 29](https://user-images.githubusercontent.com/487373/31695837-ccab5604-b3a4-11e7-89ae-1a8aec2f1f11.png)

The unfortunate bit it is raised another issue in that often there are 50+ markers in 100% the exact same location so we can only select the top most one (this was an issue before as well, just not noticed). I&#x27;m currently looking into what can be done about this.

&gt; OK, all this looks good. Please put &quot;Title:&quot; (not hyperlinked) before the title, and then please feel free to close out this ticket.

Should be sorted.

&gt; Could you also tell me where the display and text of the items in the popup is edited, so I can do so myself if necessary in the future?

Thats a can a worms as configuring Drupal views is a wee bit complicated, there is a couple hundred settings, but the images below show only the setting for setting the title prefix.

![navigate](https://user-images.githubusercontent.com/487373/31695318-d83e4880-b3a1-11e7-99ac-b81dc1a21cd2.png)
&lt;img width&#x3D;&quot;1405&quot; alt&#x3D;&quot;settings&quot; src&#x3D;&quot;https://user-images.githubusercontent.com/487373/31695320-de7c115a-b3a1-11e7-9a3c-9eae492847be.png&quot;&gt;
&lt;img width&#x3D;&quot;926&quot; alt&#x3D;&quot;title&quot; src&#x3D;&quot;https://user-images.githubusercontent.com/487373/31695327-e47e370e-b3a1-11e7-8b55-78f52e8faa9f.png&quot;&gt;

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/202#issuecomment-337450788) on: **2017-10-17**

OK, thanks for answering my question re: where the display/text of items is edited. That tells me what I need to know for now. Also, thanks for editing &quot;Title.&quot; That looks good.

Re: the clustering markers, OK, just let me know what you&#x27;re able to find out. My apologies that this additional issue has arisen.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/202#issuecomment-338064058) on: **2017-10-19**

After some exploration I found and integrated a plugin that allows use to view all the items in a single location unfortunately it doesn&#x27;t work with the cluster plugin so it&#x27;s one or the other, but this is the only way we can view the locations which exist right on top of one another by fanning out and drawing lines to the source. This is now deployed to stage. This is the best we can do, minus spending 20+ hours to implement our own plugin that combines the logic of the two (clustering and fanning). Surprisingly there are not many open source / shared plugins for achieving this.

![screen shot 2017-10-20 at 00 13 35](https://user-images.githubusercontent.com/487373/31798463-c4f6bed4-b52b-11e7-962f-61e8ac86356b.png)

I can push this up to production with the rest likely by Monday evening.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/202#issuecomment-338103286) on: **2017-10-19**

Honestly, I really like this. It&#x27;s kind of quirky and cool, and it does get the job done well, so let&#x27;s go with it. The biggest surprise for me in seeing all the locations mapped is actually how few geocoordinates we use. I thought we had a wider array, but I just checked the original MODS records and see that indeed for 3000+ items we only have 146 locations. 

The location page is a bit slow loading, but I presume it will be faster on prod?

In reviewing this, I notice one small theming issue. When you click on a pin and the box pops, up, I see that the text in the Creator and Date fields is gray. Could we have the words &quot;Creator(s):&quot; and &quot;Date(s):&quot; remain gray, but have the text that follows be black?

Other than that, this ticket is ready to be closed.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/202#issuecomment-338256707) on: **2017-10-20**

Sorry, one other thing. Right now, the default opening view is a close up of Africa:

![screen shot 2017-10-20 at 11 29 01](https://user-images.githubusercontent.com/12518623/31831722-0c2c14da-b58a-11e7-9556-00ddd7a7ecb9.png)

However, I think it would be better to zoom out one notch (which I achieved by just pushing the minus zoom one) as the opening view:

![screen shot 2017-10-20 at 11 29 03](https://user-images.githubusercontent.com/12518623/31831726-0ddb5106-b58a-11e7-803f-a4ebc988b1d9.png)

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/202#issuecomment-340292216) on: **2017-10-29**

The zoom and font color has been handle and it&#x27;s now deployed to production.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/202#issuecomment-340649521) on: **2017-10-30**

Both of these look fixed. Thank you!
