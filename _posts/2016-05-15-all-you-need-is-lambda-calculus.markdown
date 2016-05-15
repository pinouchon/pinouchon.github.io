---
layout: post
title:  "All you need is lambda calculus"
date:   2016-05-15 21:30:00
categories: ai programming probabilistic-programs
---

In this video: [AGI 2011 - Probabilistic Programs: A New Language for AI](https://www.youtube.com/watch?v=fclvsoaUI-U&t=40m44s),
Noah Goodman says at 42:39:

> [Lambda calculus] is all we need.

As the basis for creating a probabilistic programming language (Church in this case).

### A couple of points about the video:

This is a great intro to probabilistic programming languages, and why we need them.

Two limitations I can think of are (about probabilistic programs in general): 

 - The program induction seems to work, but I wonder how it extends to
more complex cases with more complex programs. The programs he induces (the tree-building procedure) are
really toy examples. I think that this program induction is a hard problem, and is key to learning 
and forming concepts.

 - These programs seem to have no introspection capabilities. I wonder if this is necessary. To take the
 tug-of-war example: any human can re-use their tug-of-war knowledge by "shallow" introspection of the
 tug-of-war related concepts, and not actually running simulations and doing MCMC. For example, you can ask: what
 games have the same dynamics as tug-of-war, what is the minimum/maximum number of players, what would 
 categorize cheating in this game... I have a hard time seeing how a probabilistic program could answer
 such open ended questions. And more importantly: does the program have any use besides executing it. Can
 it be useful in some other way such as static analysis? And is it a good approach to answer the more
 open-ended questions such as the ones above?
 
Another unrelated note: 
Inference and reasoning is usually fast in humans. It poses a very hard constraint on the number of sequential
steps a "neurally plausible" model can make. This doesn't invalidate the usefulness or theoretical plausibility
of probabilistic programs, but it's interesting to keep in mind how the brain does it.