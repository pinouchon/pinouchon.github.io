---
layout: post
title:  "Landfill compression"
date:   2016-03-04 22:30:00
categories: compression ai
---

This post is a followup on the post about 
[Champernowne indexing](http://pinouchon.github.io/random/2016/02/29/champernowne-indexing.html).

The basic idea here is that a lot of regularities can be found in the world. (You could call it structure, repetition, 
duplication...). Let's say we have the general goal of representing this repeated data. We could represent 
it as it is: by explicitly storing each bit one after the other, or we could adopt another strategy.

First, we create a "massive landfill" of all kinds of data that we encounter. Anything that we might see again.
Maybe even stuff not yet encountered, just probable.

With this landfill at our disposal, we can now represent that same piece of data using a new strategy:

 - For every chunk of data, do:
   + If the chuck is present in the landfill: put a pointer to that part of the landfill
   + Otherwise: store the chunk as itself (as a string of bits)

Notice that we might not have gained anything. We might even be worse off in terms of storage space and performance.

But consider this: What if everyone (many runs of the same program, many programs, or many different computers) agree
on a "standard landfill". The storage space is paid once and for all, and now everyone can compress his own data
by referring to the "standard landfill". What's more, if a program wants to send a chunk of data over the network, the new representation
can refer heavily to the landfill, knowing that the recipient will be able to decode it (because he has the same
copy of the landfill). In the happy case, data transfers would mostly be passing a set of references to the landfill, with very 
"original data" in between, yielding a huge compression gain.

Now, a good question is how to define such a landfill. And is it possible to define it in a way such that we gain
something when compressing with the landfill strategy ?

Another question would be if a random landfill would be of any use.

Still another question would be if a landfill could be defined not by explicitly spelling it out, but computationally:
by specifying rules for how to compute it (or compute some parts of if, the other being spelled out)

In the same idea, can anything be gained by combining some parts together, or finding complex ways of arranging it
to cover many cases (a bit like an autoencoder).

---

<br/>

A couple of remarks: In this view, the Champernowne constant is just a exhaustive landfill defined entirely computationally.
The computational definition buys us space, at the expense of more computation that we have to do if we want to read
from the landfill.

Learning in general might be seen as a procedure defining and improving a massive landfill. Learning new facts and
new data would be new chunks added to the landfill. Learning new skills or concepts would be changing the connections for how
to access and combine pieces of data.