# [Mobile: Critical edition sub-pages](https://github.com/livingstoneonline/livingstoneonline/issues/156)

> state: **closed** opened by: **awisnicki** on: **2017-6-26**

Critical edition subpages should not get a level 2/grid image on at the top. Only the main critical edition page should have this.
![img_6502](https://user-images.githubusercontent.com/12518623/27544393-9d914dc0-5a52-11e7-8e5f-a510ad294e1c.PNG)


### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/156#issuecomment-311457395) on: **2017-6-27**

This is due to the content having a &#x27;fake&#x27; image for both it&#x27;s Carousel and Grid image, rather than no image at all. If one removes the image(s) like so:

![screen shot 2017-06-27 at 20 15 40](https://user-images.githubusercontent.com/487373/27605725-7444246e-5b75-11e7-863a-70a12c4d7941.png)

Then nothing is displayed, I&#x27;ll add a reminder to remove all cases of this when we do the final migration.


---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/156#issuecomment-311476778) on: **2017-6-27**

Sounds good. Right now prod is config&#x27;d in such a way that each page must have these images, hence me adding the gray boxes.
