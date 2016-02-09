---
layout: post
title:  "Towards a better keyboard"
date:   2016-02-08 22:30:00
categories: keyboard
---

[Qwerty and querty-like keyboard layouts sucks](http://mkweb.bcgsc.ca/carpalx/?popular_alternatives).
 
So ths first thing to do if we want a better keyboard is to let go of this atrocious layout. What to choose then ?
This website has [rated a lot of alternatives](http://mkweb.bcgsc.ca/carpalx/?popular_alternatives), and
also has [full-optimization Q*MLW* layouts](http://mkweb.bcgsc.ca/carpalx/?full_optimization).

Quick confession: I discovered the QGMLWY layout today, having spent a fair amount of time learning dvorak.

Once we have found a good layout, it is time to customize it with [Karabiner](https://github.com/tekezo/Karabiner) (mac only).

Some of the goodies I'm currently plying with:

 - New modifier keys:
   - ALPHA, where caps currently is
   - BETA, where tab currenty is. Tab is being moved to `@`. And `@`/`#` are being moved elsewhere.
   - GAMMA and EPSILON, just above the right shift key
   
 Note: I use ALPHA for movement-related hotkeys. And BETA for numeric-related ones. Having ALPHA next to left shift is
 not convenient, I'm searching for a better place to move it.
 
 - Pairs of parens. On one key press: write a pair of parens with the cursor in the middle. Same for `([("'|` that you
  usually want in pairs. Original single parens keys are kept for when you really need a single paren.
 - Useful keys, sucks as arrow keys, home, end, and backspace are remapped to more convenient places
 - Better key mapping for word deletion
 - Simultaneous keypress to have instant repetition
 - Experiment more with simultaneous keypresses
 - Experiment more with physics-based custom-scripted key repetition (I've started toying with this, with ok results)

Usefull links:
 
 - [Are alternative keyboard layouts like Dvorak, Colemak, etc. better than QWERTY?](http://stackoverflow.com/questions/23078626/are-alternative-keyboard-layouts-like-dvorak-colemak-etc-better-than-qwerty)
 - [An Ideal Keyboard Layout for Programming](http://stackoverflow.com/questions/2306423/an-ideal-keyboard-layout-for-programming)
 - [Work more efficiently on your Mac](https://msol.io/blog/tech/work-more-efficiently-on-your-mac-for-developers/)
 - [A Modern Space Cadet](http://stevelosh.com/blog/2012/10/a-modern-space-cadet/)

My custom karabiner mapping (in progress)

 - [Keybest](https://github.com/pinouchon/keybest)

Sample Karabiner configs. I'm sad that these are so hard to find, and so few people go through the trouble of sharing them.

 - [vim-like karabiner config](https://github.com/gregstallings/karabiner-config/tree/master/karabiner)
 - [space-cadet karabiner config](https://bitbucket.org/sjl/dotfiles/src/71633575375d06fb6ccc04c8986ed74edf0dde49/keyremap4macbook/private.xml?at=default&fileviewer=file-view-default)

Next steps are: Stop learning Dvorak and learn QGMLWY instead. Find a better clipboard manager, and window manager.
I'm currently using [flycut](https://itunes.apple.com/us/app/flycut-clipboard-manager/id442160987?mt=12) as the
keyboard manager, but it is a bit too simple for what I want, so I'll search for something more complete.

For the window manager, looks like [hammerspoon](http://www.hammerspoon.org/go/) is the way to go.