# [Timeline Image Size](https://github.com/livingstoneonline/livingstoneonline/issues/83)

> state: **closed** opened by: **awisnicki** on: **2016-9-10**

The images in the timeline are now indeed 100px on longest edge (so updated), but they&#x27;re still showing up on the page as 80px on longest edge, so it looks like this length is hard coded into the page. I&#x27;ve tried to figure out where this is set myself, but haven&#x27;t had any luck. Could you please either set it to 100px or simply turn it off so it&#x27;s determined by the size of the images themselves.


### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/83#issuecomment-246613174) on: **2016-9-13**

I took a look into this a bit on Friday and wasn&#x27;t able to sort out where where the dimensions were being forcefully set. It&#x27;s not occurring in the theme or the timeline module. Altering the settings for the image display in the view or system doesn&#x27;t seem to have an affect either. This  is going to take some more digging. 

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/83#issuecomment-306580406) on: **2017-6-6**

Ready for review.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/83#issuecomment-306923551) on: **2017-6-7**

Looks good. Can you confirm that this is determined by the size of the images? If so, you can close this ticket.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/83#issuecomment-307827232) on: **2017-6-12**

It was a combination of factors, but now is up to a max of 100px on the longest side for the images.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/83#issuecomment-307885149) on: **2017-6-12**

Sorry, what I was trying to suggest is that I&#x27;d prefer that it be determined by the size of the image rather than set at a specific size. Is that possible? Right now the images are all 100px on the longest edge, but I may find I want to increase this size in the future. Feel free to reopen this if necessary.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/83#issuecomment-307887849) on: **2017-6-12**

Oh ok, I&#x27;ll change it to work like that.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/83#issuecomment-308128078) on: **2017-6-13**

K it now apply&#x27;s no changes to the images displayed.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/83#issuecomment-308132364) on: **2017-6-13**

Great, thank you! Let&#x27;s chat about what you think might be the optimal image size when next we meet. It&#x27;s very easy to regenerate the thumbnails
