---
layout: post
title:  "Introducing DIAL"
date:   2016-04-18 21:30:00
categories: tools productivity
---

I wrote previously about my attempt to design, learn and use a better keyboard.

 - [Towards a better keyboard](http://pinouchon.github.io/keyboard/2016/02/08/towards-a-better-keyboard.html)
 - [Screw it, I'm learning QGMLWY](http://pinouchon.github.io/keyboard/layouts/2016/02/14/screw-it-i-m-learning-qgmlwy.html)
 - [Layouts review: Dvorak vs Colemak vs Carpalx vs Workman](http://pinouchon.github.io/keyboard/layouts/2016/03/07/layouts-review-dvorak-vs-colemak-vs-carpalx-vs-workman.html)
 - [Special characters layout](http://pinouchon.github.io/keyboard/productivity/2016/03/17/special-characters-layout.html)

All those ideas are getting incorporated into the [keybest repository](https://github.com/pinouchon/keybest). The design
is mostly complete, I still need to learn the special characters layout as well as some macros.

### The next step is Dial.

Keybest is about a better typing method. It is about being able to type efficiently.


Dial is about a better input method. It is about being able manipulate data (text mostly) in and out of programs efficiently.

### What does it mean?

Dial Is A LSTM. (I plan to implement it as a LSTM.)

I like the name because it is descriptive (it really says what the thing is). It is recursive. LSTM being a type of 
recurrent neural nets justifies the recursion. And also because it is about dialing stuff.

### What does it do?

The basic idea is having one text box to rule them all.

It will be an Emacs buffer + clipboard manager + LSTM. You can also view it as an AI typing assistant.

With Dial, most text input is typed into this box and then copy/pasted around. A key requirement is that it should play nice
with a clipboard manager. And because they are no good clipboard managers around, I think Dial will double as a clipboard
manager. (I'll do a more extensive search, but so far, [Flycut](https://github.com/TermiT/Flycut) seems the only
one. I'm using it and it is nice, but it is way to limited).

List of features:

 - Text editor (probably an emacs buffer running in a terminal. Will see for the details)
 - History
 - Search
 - Buffer management (merge buffer, new buffer, delete buffer, export buffer to clipboard, import buffer from
 clipboard). The active buffer probably *will* be the clipboard content, with merging macros.
 - Deep integration with clipboard manager 
 - Source code highlighting (including markup languages, markdown, and programming languages)
 - Source code completion
 - Spell checking
 - LSTM Completion (killer feature imo): completes based on every personal input so far, as well as a big index computed 
 from internet content
 
Nice to have:

 - Instant launch (should be really fast to open up. Ideally less than 70-100ms) 
 - Automatic detection of language (french, english, html, markdown, css, c, ruby, erb, whatever)
 - Support for other formats than text (files, images and video).
 - Image edition would be nice (although monosnap already does this, and it is a lot of work) 
 - Internet completion (stackoverflow/google/wikipedia?). I'll have to experiment with this. Probably useful with an
 explicit command to trigger this kind of external completion