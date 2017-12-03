# [Browse by Catalgoue: Viewing restricted items as admin](https://github.com/livingstoneonline/livingstoneonline/issues/67)

> state: **closed** opened by: **awisnicki** on: **2016-6-23**

It turns out that, contrary to what was supposed to be implemented, when logged in as an admin I cannot view restricted items. The camera icon appears (rather than the crossed out red circle) but when I click on the given item, rather than images, I get an error page. See screen shot attached.
![screen shot 2016-06-24 at 0 05 06](https://cloud.githubusercontent.com/assets/12518623/16327630/ebed9696-3996-11e6-843e-df6b4120a9ee.png)


### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/67#issuecomment-230811768) on: **2016-7-6**

This has been sorted, and fixes have been applied to stage and production. 

There is a side note though, due to the way that the Fedora Drupal Filter (handles authentication), if a users password is changed they will get this notice (**ONLY ON STAGE**). This is because _stage_ is accessing the _production_ Fedora (which doesn&#x27;t share the same authentication system across servers; each has it&#x27;s own). In the case of the user **admin** whose password is reset on startup, users logged in as **admin** on stage will see this warning. Other users such as _awisnicki_ or _kappaluppa_ will not (that is unless you change your password).

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/67#issuecomment-230951381) on: **2016-7-6**

This is fixed (thank you!), and I&#x27;m closing this ticket. However, I&#x27;m not certain if I understand your side note completely. Could you explain this in a different way?

