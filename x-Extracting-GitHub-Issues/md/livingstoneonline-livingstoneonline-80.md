# [Search Widget](https://github.com/livingstoneonline/livingstoneonline/issues/80)

> state: **closed** opened by: **awisnicki** on: **2016-8-26**

Here are the options that I suggest for the widget:

Search web pages
Search digital catalogue
Search transcriptions

So take out the &quot;only.&quot; Replace the circle &amp; dot with a box &amp; checkmark. When you first click in the search bar, the dropdown appears and all three options are checked by default. If users want to narrow their search, they can then uncheck one or more of the boxes, etc.

In terms of theming, a ) I&#x27;d like the the dropdown from the Browse Collection button to match the search widget and b) I&#x27;d like to make a few changes to the Search Widget.
## Browse Collection dropdown theming

1) border-radius: 8px;
2) border: 1px solid rgb(208, 208, 208);
3) anything else needed to get it to look like the search widget dropdown (it&#x27;s possible nothing else is needed)

Search Widget dropdown theming
1) Put a little space to the right of the check boxes, so there&#x27;s a little space between the check boxes and the text to the right
2) margin-top: 32px;  [so that the dropdown appears right below the search box]
3) font-size: 0.85em;  [so that the text sizes matches that in the Browse Collection dropdown]
4) padding left: 1.5em [so that the text is slightly more centered in the dropdown]


### Comments

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/80#issuecomment-244064897) on: **2016-9-1**

Used a different padding, as the margin added to the checkboxes affected alignment, now the text should align with the text in the search box when empty.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/80#issuecomment-244125628) on: **2016-9-1**

This looks fantastic! Thank you. Just one quick small issue. The font inside of the search widget looks different from that inside of the Browse Collection dropdown. 1) Looks like different fonts and 2) Browse collection font is gray (or slightly muted black). 

I prefer what&#x27;s on the Browse Collection button re: font. Could you make sure the search widget matches that?

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/80#issuecomment-244202049) on: **2016-9-1**

Should be the same color and size, now deployed to both stage and prod.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/80#issuecomment-244232704) on: **2016-9-1**

Looks good, but appears not to be present on any of the level 3 pages. Also not working well in the manuscript viewer.

Only levels 1 (home page) and 2 (tiles pages) look OK.

---
> from: [**nigelgbanks**](https://github.com/livingstoneonline/livingstoneonline/issues/80#issuecomment-244593559) on: **2016-9-4**

It&#x27;s deployed to stage / prod now.

---
> from: [**awisnicki**](https://github.com/livingstoneonline/livingstoneonline/issues/80#issuecomment-244614655) on: **2016-9-4**

Resolved. Thank you very much.

