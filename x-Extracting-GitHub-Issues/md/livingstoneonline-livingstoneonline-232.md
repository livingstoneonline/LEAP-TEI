# [Minor bugs found in full site review](https://github.com/livingstoneonline/livingstoneonline/issues/232)

> state: **closed** opened by: **awisnicki** on: **2017-10-14**

I&#x27;ve finished my full review of the stage site against prod and only found a few minor issues, as follows:

1) A handful of pages are not rendering in-text images. See attached zip. You can use the breadcrumbs in the screenshots to identify the pages.

[Pages-with-missing-images.zip](https://github.com/livingstoneonline/livingstoneonline/files/1384963/Pages-with-missing-images.zip)

Here&#x27;s an example: 

![screen shot 2017-10-14 at 14 41 22](https://user-images.githubusercontent.com/12518623/31579125-d5c62988-b0f4-11e7-88ce-5af0621cd6f8.png)

2) The following pages are rendering H4 tags incorrectly (this might be an issue on other pages, but I only noticed these):
http://livingstonestage.lib.umd.edu/spectral-imaging/1871-edition-guide
http://livingstonestage.lib.umd.edu/spectral-imaging/tei-p5-encoding-guidelines

Here&#x27;s an example:

![screen shot 2017-10-14 at 14 08 50](https://user-images.githubusercontent.com/12518623/31579126-e43a7776-b0f4-11e7-8a40-00a227f1fb90.png)

3) The line spacing on the captions on the following page is double what it should be. I looked in the coding and don&#x27;t see the issue (this might be an issue on other pages, but I only noticed these):
http://livingstonestage.lib.umd.edu/spectral-imaging/livingstones-1871-field-diary

Here&#x27;s an example:

![screen shot 2017-10-14 at 13 56 08](https://user-images.githubusercontent.com/12518623/31579128-ec52da66-b0f4-11e7-87e3-fd5b1fdb8bc1.png)

4) The table on this page is not quite rendering properly (compare against prod):
http://livingstonestage.lib.umd.edu/spectral-imaging/terminology-and-acronyms

5) I noticed one small theming issue. In the overview text, when there is no table of contents, the spacing between the overview text and gray line beneath is too large:

![screen shot 2017-10-14 at 13 28 10](https://user-images.githubusercontent.com/12518623/31579130-ffd0ef6a-b0f4-11e7-969e-21b04cb8d015.png)


### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/232#issuecomment-336674511) on: **2017-10-14**

P.S. If there&#x27;s anything I can take care of from the issues above, just let me know. For instance, I haven&#x27;t examined, but I suspect no. 1 is just to do with copies of those images not being in the relevant section page folders.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/232#issuecomment-337393644) on: **2017-10-17**

All the above issues should now be sorted.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/232#issuecomment-337448470) on: **2017-10-17**

Yes, everything looks fixed. Thank you very much!
