# [Error when trying to sync dev via github desktop](https://github.com/livingstoneonline/livingstoneonline/issues/3)

> state: **closed** opened by: **kappaluppa** on: **2016-3-2**

Submodule Not Removed Completely
The submodule at &quot;docker-livingstone&quot; was removed from .gitmodules, but the folder still exists in the repository. Delete the folder, commit the change, then try again.


### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/3#issuecomment-193318651) on: **2016-3-7**

Looks like you added a sub-module in this commit:

https://github.com/livingstoneonline/livingstoneonline/commit/4e39ec2a0ba6434a560e7985ccb0d38720145fb4

Along with all of your generated credentials and some other things, I think you must have used the Github Desktop application to clone the existing repository (https://github.com/livingstoneonline/docker-livingstone) into the same folder you had this repository checked out from. 

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/3#issuecomment-193337226) on: **2016-3-7**

I removed all the bad commits from the three branches and sent out an email for everyone on how to revert back to the working setup.

