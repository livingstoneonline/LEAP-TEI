# [Setting up local FileBrowser](https://github.com/livingstoneonline/livingstoneonline/issues/234)

> state: **closed** opened by: **awisnicki** on: **2017-11-2**

Please provide basic instructions on setting up FileBrowser on my local machine, so that I can edit site files that way rather than going through the site. I&#x27;ve been unable to find online information for this.

### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/234#issuecomment-341983282) on: **2017-11-5**

I was to provide you with a script to allow you to sync the files down to a folder and then push them up, I can still do this, but in thinking about it I don&#x27;t think it&#x27;s a great idea because using such a script could allow you to quite easily erase all the those files on the server, it&#x27;s probably safer for you to stick with the using the file browser on the site to upload content.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/234#issuecomment-342015097) on: **2017-11-5**

Sticking with FileBrowser on the site is no problem, and I agree with you that I&#x27;d rather not delete everything accidentally! 

However, in using FileBrowser this last week, I&#x27;ve come upon a few small issues which are an impediment:

1. I can only upload one file at a time. 
2. There&#x27;s no way to download files. To get files, I have to go through our server. In other words, to recreate on my computer what&#x27;s in Drupal (which I was hoping to do as it would make things easier in the future to maintain everything), I would have to manually get the files from the server then recreate the File Browser directory structure on my computer.
3. I don&#x27;t see a way to move directories and/or files. Rather I have to delete and reupload. There&#x27;s nothing like dragging from A to B.
4. I&#x27;ve run into an issue with swapping out files for grid and carousel. I&#x27;ve done this through the section page form for the given page. In some cases, it overwrites the existing file. In other cases, it adds a zero or one to my existing file name and keeps the original file. It also does this when I just try to upload the file directly to File Browser so as to overwrite the original file. When I go to delete the original file via File Browser, it tells me that the file is still in use, but it can&#x27;t be because both grid and carousel are showing my new file.

Numbers 2 and 3, I can work around (and you can ignore them, unless you know an easy solution), but for numbers 1 and 4 it would be much better if they could be resolved. 

For 4, see the screen shot below for an example of the issue. IMG_5192-carousel_0.jpg (which I just added) is being used in the site in grid and carousel. The zero was added because it didn&#x27;t delete the original file (IMG_5192-carousel.jpg) when I uploaded the new one, although I expected it to. I tried to delete that original file *after* I uploaded my new file, but now I&#x27;m being told that the original file is still being used in the site. However, on the site I&#x27;m seeing my new file, so I&#x27;m not sure where the original file is being used.

![screen shot 2017-11-05 at 17 22 30](https://user-images.githubusercontent.com/12518623/32420383-0aa4cc52-c24f-11e7-8bee-e13fd61ef5f0.png)

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/234#issuecomment-343799770) on: **2017-11-12**

One more small snag with FileBrowser: I&#x27;ve just been uploading a few images for one of the section pages and see that it resizes them to 1200 on longest edge. I&#x27;d prefer that it not set a size, as I set the size before uploading.
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/234#issuecomment-346544432) on: **2017-11-23**

The page doesn&#x27;t render any images larger than 1200px wide as that&#x27;s the full width of the page on the largest monitor possible, so anything larger than that wastes the users bandwidth with no visual improvement to them, I would not recommend uploading any images larger than that. That being said I&#x27;ve removed the scaling.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/234#issuecomment-346941345) on: **2017-11-25**

OK, image size. I didn&#x27;t know that. I think in the future I&#x27;m going to have to redo the images. Right now, for an illustrative image, we have the option of clicking on it and that image in turn can be magnified, so that&#x27;s where the larger size comes in. In other words, what we need, really, are two instance of each image, one for the page, the other for magnification. I&#x27;ll take this issue from here.

That said, note that there is the longer set of comments above that begins &quot;Sticking with FileBrowser....&quot;
---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/234#issuecomment-350096715) on: **2017-12-7**

&gt; I can only upload one file at a time.

I&#x27;ve added an extension that allows you to upload multiple files to a single location.

&gt; There&#x27;s no way to download files. To get files, I have to go through our server. In other words, to recreate on my computer what&#x27;s in Drupal (which I was hoping to do as it would make things easier in the future to maintain everything), I would have to manually get the files from the server then recreate the File Browser directory structure on my computer.

If you double click on a file it will open a new tab that allows your to download that file. There is no batch download feature.

&gt; I don&#x27;t see a way to move directories and/or files. Rather I have to delete and reupload. There&#x27;s nothing like dragging from A to B.

There isn&#x27;t and it&#x27;s not a supported feature of the module. Likely because moving files will break links to them in the content of pages, so no one ever implemented that functionality.

&gt; I&#x27;ve run into an issue with swapping out files for grid and carousel. I&#x27;ve done this through the section page form for the given page. In some cases, it overwrites the existing file. In other cases, it adds a zero or one to my existing file name and keeps the original file. It also does this when I just try to upload the file directly to File Browser so as to overwrite the original file. When I go to delete the original file via File Browser, it tells me that the file is still in use, but it can&#x27;t be because both grid and carousel are showing my new file.

Drupal can hold on to files for all sorts of weird reasons, though likely in this case something got messed up internally since changes were made not going through Drupal fields. Drupal assumes it has full control over the content and nothing else will make changes to it. There&#x27;s not much to be done for this aside from going into the database and modifying it in each case which is a bit dangerous and error prone. I would recommend not changing or even looking at files in the folders managed by Drupal, just leave it be. Don&#x27;t fuss over a number appended to the file, humans aren&#x27;t really supposed to be looking at those file names.

&gt; Numbers 2 and 3, I can work around (and you can ignore them, unless you know an easy solution), but for numbers 1 and 4 it would be much better if they could be resolved.

&gt; For 4, see the screen shot below for an example of the issue. IMG_5192-carousel_0.jpg (which I just added) is being used in the site in grid and carousel. The zero was added because it didn&#x27;t delete the original file (IMG_5192-carousel.jpg) when I uploaded the new one, although I expected it to. I tried to delete that original file after I uploaded my new file, but now I&#x27;m being told that the original file is still being used in the site. However, on the site I&#x27;m seeing my new file, so I&#x27;m not sure where the original file is being used.

Just add files through the section page and don&#x27;t even bother looking at the filename or in these folders just let Drupal manage it.
---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/234#issuecomment-350119878) on: **2017-12-7**

Thanks very much. All this sounds good &amp; I think FileBrowser is now setup to give me all the features I need to take things forward.
