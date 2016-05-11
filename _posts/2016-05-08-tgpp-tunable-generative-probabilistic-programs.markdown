---
layout: post
title:  "Tunable generative probabilistic programs"
date:   2016-05-08 21:30:00
categories: ai machine-learning
---

I want to throw yet another random idea. I'll develop it more in future posts, but here is the gist of it:

You can think of CNNs, Boltzman machines or deep Boltzman machines as learning a set of features, and representing
a particular input vector as a linear combination of those features. 

In the same way, you could instead represent an input vector by composing a bunch of causal processes that gave rise to it.
Instead of a linear combination of features, we have a combination of the execution of programs.
This is my working theory of what is "understanding". You can try many ways of representing/recognizing 
handwritten digits, but once you have the key insight: they are generated with a pencil on paper and they are made
of many stokes, then suddenly everything becomes easy. With the right model in mind, you stop viewing handwritten
digits as a combination of bars and loops, and you instead see strokes.

How this would work in theory is the following: you take an Helmholtz machine and you replace the generative model
by a "Tunable Generative Probabilistic Program" (TGPP). This is a funny name for a simple idea: we want the Helmholtz machine
to be able to discover and experiment with new kinds of generative programs that reflect causal processes. Then the
bottom up network of the Helmholtz machine (say, a CNN) will instantiate high level features into the TGPP so that
it can run.

In this view, a "Heuristic" is just a mapping found by the CNN from the data (or a feature of a piece of data) to
which program to run.

One big problem this opens up is the need to explore the space of probabilistic programs, and to find the mapping
between data and which programs cause it. But the hope is that when you find the right program, inference and 
prediction suddenly become much simpler. 