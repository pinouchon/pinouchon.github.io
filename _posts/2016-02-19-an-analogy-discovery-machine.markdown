---
layout: post
title:  "An analogy-discovery machine"
date:   2016-02-19 22:30:00
categories: ia analogy
---

We humans are capable of elaborate, high-level analogies. Douglas Hofstadter gives a good example 
[in this video](https://youtu.be/n8m7lFQ3njk?t=20m46s).

In this post, I want to propose a simple way a machine could do the same.

First, we need to remember that an analogy is just a 
[partial equality of structure](http://pinouchon.github.io/ia/mind/intelligence/2016/02/10/the-mind-as-an-isomorphism-machine.html)
between two mental representations.

For example, if we have two representations:

 - representation A is 001010111011
 - representation B is 100100011011
 
We could say that they are analogous because the share the same last 5 bits.
 
Second, getting inspiration from the idea of [semantic hashing](http://www.cs.toronto.edu/~fritz/absps/sh.pdf) [1] popularized
by [Hinton](http://www.cs.toronto.edu/~hinton/), we could imagine a similar device that would perform not semantic hashing,
but structural hashing. 

Here is a brief explanation of "structural hashing": 

We first need a way to meaningfully encode or extract the structure in a sensory input.
We can then take the code vector representing the structure and hash it. Having hashed the structural content of many
sensory inputs, we can then take a new one, compute its code vector by hashing it and then "look around": we flip a few bis in the
code to find analogous ones. 

Depending on the representation and hashing schemes, it is likely that even a loose match
between two code vectors (that is, they only share a tiny part in common) would yield an analogy. 


Obviously, one major problem with this analogy-making-machine is that it hinges on a critical part:
 
> We first need a way to meaningfully encode or extract the structure in a sensory input 

Which *is* the hardest problem. I'll come back to it in another post.

---
[1] Also known as supermaket search. Hinton explains it [this video](https://youtu.be/AyzOUbkUf3M?t=35m51s).