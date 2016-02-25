---
layout: post
title:  "Flexible representations"
date:   2016-02-24 22:30:00
categories: ai
---

*Warning: The ideas discussed here are half-baked, and I do not understand them fully*

In this post, I want to elaborate on the view that the brain builds a model of the world. Not a [sensory-motor](https://www.youtube.com/watch?v=6ufPpZDmPKA)
model, even tough senses and motor commands are definitely part of the model; but a model of the structure of the world.
And probably [isomorphic](http://pinouchon.github.io/ia/mind/intelligence/2016/02/10/the-mind-as-an-isomorphism-machine.html) to it.

Next, I want to emphasize that [structure is important, not labels](http://lesswrong.com/lw/la/truly_part_of_you/).
Concepts that you truly understand, you can regenerate. Naming things is just a matter of linking the concept
to a label (the linking is similar to the fine-tuning described [here](https://www.cs.toronto.edu/~hinton/absps/fastnc.pdf)).

To take a concrete example: consider this expression: "Painting yourself in a corner". For a long time, I thought of it 
as "painting a self-portrait on the wall, near a corner of the room". That doesn't make too much sense, but it didn't
bother me, I just [cached](http://lesswrong.com/lw/k5/cached_thoughts/) the meaning and went along with it.

It turns out, viewing the expression as "spraying paint everywhere on the wall while standing in a corner" makes a lot more
sense. But to see why, you need knowledge about

 - Rooms
 - 2d space
 - room geometry:
   - what is a corner
   - how a room has walls and you cannot go through them    
 - paint physics:
   - fresh paint
   - how paint takes a while to dry
   - how you cannot walk on fresh paint (or at least bad things will happen if you do)
 - painting logic:
   - how when you paint you usually spray the whole surface
 - body topology
   - how when you paint you have a limited reach

With all that in mind, you can view how the correct representation may be computable (ie, how an algorithm or 
computational agent could assemble it). With the correct representation, the "essence" of the expression: 
"getting yourself stuck", appears somewhat magically.
 
I think a good question to ask now is this: what kind of knowledge representation would allow you to so with so much ease:

 - Switch from one representation to the other (auto-portrait versus spraying the floor)
 - Pick just the right list of relevant facts to extract the "essence"
 - Scan possible "parses" of "interpretations" and evaluate them (spraying the floor being much better than auto-portrait)
 
(Another related question is : is that the right order of the steps? Can the "essence extraction" of being stuck
happen before finding the right representation of spraying the floor? I do not think so, but it seems somewhat plausible.)

And to make things worse: finding the "right representation" is based on a lot of physics and logical knowledge.
It is not just an association of concepts, but a complicated clockwork with moving parts: if you could fly, if there is
a door behind you, if you had no problem standing here a few days, or if you painted in strips, then the expression
would lose its meaning. What's more, we can easily see what parameters make the situation better or worse: the larger
the surface painted, the slower the paint dries, or the more expensive your shoes are; the worse the situation gets.

What kind of data structure of algorithm has any chance of achieving that ? Currently, I see none.

But let's try a wild guess.

Let's say we have a slow and conscious reasoning process, with a very limited working memory (say, 10s of bits).
The slow reasoning process then queries
a few [generative black boxes](http://pinouchon.github.io/ai/helmholtz-machines/analysis-by-synthesis/2016/02/07/generative-black-boxes.html),
and their [reversed versions](https://www.youtube.com/watch?v=NTnbnw01HHY).
Generative black boxes may be a physics engine, a psychological engine, or a graphics engine. A query may be: what
picture do I get if I initialize this scene in my graphics engine with two lights instead of one, with supplied parameters ? Or a much dimmer light ? And the query to
the inverse might be: where is the source of light in this image ?

The querying ideas come from this paper: [On Learning to Think: Algorithmic Information Theory for Novel Combinations of Reinforcement Learning Controllers and Recurrent Neural World Models](http://arxiv.org/pdf/1511.09249v1.pdf)

In this view:

 - Reasoning is a sequence of queries to the many black boxes and their inverses. Progress is made by inspecting
 the result of each query, drawing conclusions, and querying further.
 - Understanding is finding a representation: a set of parameters to fit in a given model. (spraying the floor or auto-portrait)
 - An analogy is the common part between two representations
 
About the details of how the querying is done, how structure is represented, how information is shared between the 
reasoning process and the models; I have no idea.