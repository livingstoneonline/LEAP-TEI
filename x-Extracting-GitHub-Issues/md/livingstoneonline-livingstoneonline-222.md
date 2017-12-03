# [Site Guide Page Links](https://github.com/livingstoneonline/livingstoneonline/issues/222)

> state: **closed** opened by: **awisnicki** on: **2017-9-15**

On the Site Guide page (http://livingstonestage.lib.umd.edu/about-this-site/livingstone-online-site-guide), the following links point to the wrong page:

![screen shot 2017-09-14 at 12 07 45](https://user-images.githubusercontent.com/12518623/30496925-8fc14174-9a16-11e7-9bcd-777551834c5c.png)
![screen shot 2017-09-15 at 12 48 59](https://user-images.githubusercontent.com/12518623/30496935-9aa2ea2a-9a16-11e7-81bf-d8cf3c167645.png)
![screen shot 2017-09-15 at 12 46 50](https://user-images.githubusercontent.com/12518623/30496937-9d807a0a-9a16-11e7-9ef9-58fe87b099c8.png)
![screen shot 2017-09-15 at 12 52 16](https://user-images.githubusercontent.com/12518623/30496938-9eda66c2-9a16-11e7-8cdf-a7116456cc63.png)


Also, the links under the following editions should be indented on the Site Guide page: Livingstone&#x27;s Final Manuscripts, 1871 Field Diary, Letter from Bambarre, 1870 Field Diary. Compare to prod. The indent coding is still there so the fact that these indents disappeared may mean that indents in the site elsewhere also disappeared and that a change to the CSS is necessary.



### Comments

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/222#issuecomment-329857142) on: **2017-9-15**

Also, all instances (throughout the site) of the pointing to the coding manual at http://livingstoneonline.github.io/LEAP-ODD/leap.html should now point to the version of this page embedded in the site that you created.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/222#issuecomment-336630373) on: **2017-10-14**

Should be sorted now.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/222#issuecomment-336644420) on: **2017-10-14**

All of this looks good. Thank you. However, this class is still not being recognized so relevant text on this page (and probably elsewhere on site) is not being indented:

&#x60;class&#x3D;&quot;rteindent1&quot;&#x60;

There may be similar classes on the site that are also not being recognized. Another option is to replace all such instances with the appropriate inline CSS.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/222#issuecomment-336651906) on: **2017-10-14**

It was a change in precedence between the ckeditor and the section pages css, it&#x27;s now been corrected for all of the ckeditor classes:

&#x60;&#x60;&#x60;
   &amp;.rteindent1 {
      margin-left: 40px;
    }
    &amp;.rteindent2 {
      margin-left: 80px;
    }
    &amp;.rteindent3 {
      margin-left: 120px;
    }
    &amp;.rteindent4 {
      margin-left: 160px;
    }
    &amp;.rteleft {
      text-align: left;
    }
    &amp;.rteright {
      text-align: right;
    }
    &amp;.rtecenter {
      text-align: center;
    }
    &amp;.rtejustify {
      text-align: justify;
    }
&#x60;&#x60;&#x60;
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/222#issuecomment-336660373) on: **2017-10-14**

Yes, it looks like it&#x27;s fixed. Thank you!
