---
layout: post
title:  "Special characters layout"
date:   2016-03-17 22:30:00
categories: keyboard productivity 
---

[Alternative keyboard layouts](http://pinouchon.github.io/keyboard/layouts/2016/03/07/layouts-review-dvorak-vs-colemak-vs-carpalx-vs-workman.html)
are relatively easy to find.

But finding a special characters layout is much harder. A special characters layout is the arrangement of special
characters such as `=`, `+`, `)`, `#`... The idea is to map them on top of the normal layout, and access them with
a [custom modifier key](https://pqrs.org/osx/karabiner/xml.html.en#modifier).
 
If there are better letter layouts than other (colemak vs qwerty), there must be better special characters layouts
than others. So the hunt for the best special characters layout is on.
 
It turns out, this idea has not been discussed much. The only place I could find is this thread:
[Use of special characters layout?](http://forum.colemak.com/viewtopic.php?id=524) on the colemak forums.

The tomlu layout seems well thought out, so I'll steal it, make some tweaks and integrate that into
[keybest](http://github.com/pinouchon/keybest).

To guide my tweaks, a list of most used special characters would be handy.
[This also turned out to be a hard find](http://mdickens.me/typing/letter_frequency.html).

Once I have this layout nailed down, the remaining two layouts to design and set up will be: a movements layout,
and an app-jumping/window-resizing layout. (Those will be relatively small, ad-hoc, non-optimizable and straightforward
to do). Probably done with [mjolnir](https://github.com/sdegutis/mjolnir),
[hammerspoon](http://www.hammerspoon.org/) and/or [ShiftIt](https://github.com/fikovnik/ShiftIt).