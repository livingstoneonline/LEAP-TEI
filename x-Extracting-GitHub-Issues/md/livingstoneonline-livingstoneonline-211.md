# [Repository page issue](https://github.com/livingstoneonline/livingstoneonline/issues/211)

> state: **closed** opened by: **awisnicki** on: **2017-9-14**

The font on the repository page appears to be a larger size than the font on most other pages:

http://livingstonestage.lib.umd.edu/in-his-own-words/repository

Compare it to a regular content page.

### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/211#issuecomment-329851781) on: **2017-9-15**

They are both set to:
The text in the table? It seems to be the same as the section page content.

&#x60;&#x60;&#x60;css
    font-family: &#x27;Source Sans Pro&#x27;, sans-serif;
    font-size: 16px;
&#x60;&#x60;&#x60;

Which text in particular?
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/211#issuecomment-329869467) on: **2017-9-15**

I figured out the issue. The text in the table on prod (http://livingstoneonline.org/his-own-words/repository) is 14px. Please set it to that same size here. Or, alternately, make the text in the repository table the same size as the text in the Browse by Catalogue table (which is smaller than what Repsitory is now on stage).
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/211#issuecomment-330054830) on: **2017-9-17**

I&#x27;ve set it to 14px.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/211#issuecomment-330268691) on: **2017-9-18**

Looks good. Thank you!
