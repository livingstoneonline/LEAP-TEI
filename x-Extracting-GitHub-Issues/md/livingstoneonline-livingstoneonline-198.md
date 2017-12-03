# [Geolocation: height of window](https://github.com/livingstoneonline/livingstoneonline/issues/198)

> state: **closed** opened by: **awisnicki** on: **2017-8-11**

Please make the height of the window map the same size as the panes in the multitext viewer and the iFrame for the coding manual

### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/198#issuecomment-336630871) on: **2017-10-14**

Sorted.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/198#issuecomment-336647229) on: **2017-10-14**

Yes, this looks great. Thank you.

Can you tell me where this height is controlled (and also those of the multitext viewer and coding manual) in case I&#x27;d like to edit in the future?
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/198#issuecomment-337345537) on: **2017-10-17**


**Google Map settings**
Configured via settings:
![google_map_settings](https://user-images.githubusercontent.com/487373/31685173-fe45d4da-b379-11e7-98c1-d1e2d69e4183.png)

![google_map_height](https://user-images.githubusercontent.com/487373/31685176-013461de-b37a-11e7-9d86-5519aea525ec.png)

**Multi-text viewer**
Hard coded in this [less file](https://github.com/livingstoneonline/livingstone_online_module/blob/dev/modules/transcript/less/livingstone-transcript.less). This file needs to be processed by [lessc](http://lesscss.org/) to generate the [css file](https://github.com/livingstoneonline/livingstone_online_module/blob/dev/modules/transcript/css/livingstone-transcript.css).

**Coding Manual**
Hard coded:
[livingstone_online_theme/templates/node/node--section-page-encoding-guidelines.tpl.php](
https://github.com/livingstoneonline/livingstone_online_theme/blob/dev/templates/node/node--section-page-encoding-guidelines.tpl.php#L113)
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/198#issuecomment-337365064) on: **2017-10-17**

All looks good. Thanks for addressing these questions. 
