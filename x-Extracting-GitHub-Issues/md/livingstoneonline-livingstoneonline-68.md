# [Pushing XSLT](https://github.com/livingstoneonline/livingstoneonline/issues/68)

> state: **closed** opened by: **awisnicki** on: **2016-6-25**

I&#x27;ve successfully pushed updated versions of transcription.xsl to dev, stage, and prod, but despite a number of attempts on my part prod is not using the new file. I&#x27;m not sure what I&#x27;ve done wrong as I&#x27;ve followed exactly the same procedure for stage and there the file is being recognized and is working just fine.


### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/68#issuecomment-230763141) on: **2016-7-6**

It was my mistake the passcode for automated deployment I was using for stage and production was different (a copy paste error). Automated deployment for production should now be working. I&#x27;m currently testing to make sure and will close the ticket after the build completes and deploys.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/68#issuecomment-230804548) on: **2016-7-6**

Looks like all is well now.

