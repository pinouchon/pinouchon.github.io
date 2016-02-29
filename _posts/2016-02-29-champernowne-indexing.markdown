---
layout: post
title:  "Champernowne indexing"
date:   2016-02-29 22:30:00
categories: random
---

Let's consider the general problem of representing data in a compact way.
 
A naive strategy would be to represent an arbitrary sequence of bits as itself. And if there are some regularities,
maybe we could find the repetition and compress it: by representing the compressed bits as themselves, and
a way to specify how the repetition occurs, where, how many times, etc.

By taking advantage of the structure of the data, more complex compression schemes could be devised. But let's take
a completely different approach.

The basic idea is to have three pieces:

 - A lexicon
 - A pointer about where to look in the lexicon
 - A size 
 
A very nice example is in this video: ["Kolmogorov music" by Christopher Ford](https://youtu.be/Qg3XOfioapI?t=26m28s),
where he uses the [Champernowne constant](https://en.wikipedia.org/wiki/Champernowne_constant) as the lexicon, and
an big integer as the pointer (btw: how did he find it? I'm curious).

But taking a step back, this is actually a very compact way to represent information: the specification of the full
Blurred Lines song (albeit simplified to 3 voices) required only about 50 lines of code. But most importantly:
 the representation does not scale with the way you encode it: a specification of the lexicon (constant
size), a pointer (somewhat constant), and a size (also constant).

And if the size of the pointer itself is problematic, then just to the same again: define a meta-pointer that is a
pointer-to-the-pointer in some lexicon (which could be the same). To retrieve the data in the new scheme:
 
 - do a first lookup with the first meta-pointer to find the bigger-pointer, eg: 
 
 `pointer = metaLexicon[metaPointer][0..metaLength]`
 
 - do a second lookup using the bigger-pointer to retrieve the piece of data, eg: 
 
 `data = lexicon[pointer][0..length]`

I wonder how practical this is.

One big problem is the size of the lexicon, and how to compute it. For big lexicons, strategies to skip-ahead
without calculating everything could come in handy.

One other problem is how to interpret the lexicon in the domain of interest. For example in music: how do you
represent music based on a sequence of integers ?

To remedy the first problem, a good strategy would be to have a non-comprehensive lexicon, and limit it to
sensible sequences. Or arranging it in a way that more probable sequences come first.
  


