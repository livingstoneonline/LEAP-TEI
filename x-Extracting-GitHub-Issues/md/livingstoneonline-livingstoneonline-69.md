# [Site set-up documentation](https://github.com/livingstoneonline/livingstoneonline/issues/69)

> state: **closed** opened by: **awisnicki** on: **2016-6-27**

We need a high-level overview (circa 1 paragraph) of the overall configuration and set up of the site (using Docker, etc.) for this page: http://livingstone.lib.umd.edu/behind-scenes/practices-standards-and-arrangements Let&#x27;s discuss just what this paragraph would cover.


### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/69#issuecomment-230863061) on: **2016-7-6**

I imagine we can re-use use much of the documentation from the Git Repo?

https://github.com/livingstoneonline/livingstoneonline#livingstone-online
https://github.com/livingstoneonline/livingstoneonline/tree/master/docs

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/69#issuecomment-230952355) on: **2016-7-6**

Yes, absolutely, we can reuse the documentation and even point to it from the website page I&#x27;ve cited. On the website page itself, however, in keeping with the level of overview that is provided for the different aspects of the project, we need one paragraph to provide the high level description. It&#x27;d be great if you could put this together, since you&#x27;re most conversant in the configuration. I think the paragraph would best appear in the &quot;Hosting and Backup Arrangements&quot; section, would be placed between the &quot;Development Access&quot; and &quot;Site Versions&quot; sections, and might be called &quot;Site setup.&quot; However, feel free to offer recommendations on what it might be called and where it might be placed.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/69#issuecomment-231396253) on: **2016-7-8**

How about this?

# Site Setup

Livingstone Online is built and deployed using a number of different tools. At the heart of the system we use [Docker](https://www.docker.com/) for deployment of code and dependencies, and [Git](https://git-scm.com/) for the storing / managing code and configuration. We have a number of [Github Repositories](https://github.com/livingstoneonline) where we share our code and configuration. These repositories fall into three categories:
1. Docker Related (Builds Docker image(s) that are deployed to the server: prefixed with _docker-_).
2. Code Related (Code used by the site, to implement functionality: prefixed with _livingstone_online__)
3. Unrelated (Not related to site setup)

Docker images are build automatically when changes are made to the repositories identified above. This is performed by the [Docker Hub service](hub.docker.com/r/livingstoneonline). After Docker images are built they are automatically deployed by the [auto-deploy](https://github.com/livingstoneonline/docker-auto-deploy) application running on the sites server.

If you interested you can read more [here](https://github.com/livingstoneonline/livingstoneonline#livingstone-online) 

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/69#issuecomment-231437183) on: **2016-7-8**

Perfect, thanks! Added to the site.

