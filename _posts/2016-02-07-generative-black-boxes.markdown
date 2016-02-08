---
layout: post
title:  "Generative black boxes"
date:   2016-02-07 22:30:00
categories: ai helmholtz-machines analysis-by-synthesis
---

In this post, I want to explore the idea of querying a generative black box as a way to get infinite
labelled training data.

A generative black box is any program `P` that can generate a data vector `x` given a description vector (or code vector) `y`.
It could be for example a 3d graphics engine. In that case, `y` would be a scene description: lights, objects in the scene,
position of the camera; and `x` would be the generated image.

We could consider `P` (in our example, the graphics program) as an input to a learning procedure.

This type of setup is similar to a Helmholtz Machine (HM) and Analysis By Synthesis (ABS).
For a good introduction, I recommend:
 
  - [this paper about varieties of HMs](/assets/varieties-of-helmholtz-machines.pdf)
  - the [section of Hinton's homepage about HMs](http://www.cs.utoronto.ca/~hinton/helmholtz.html)
  - [this paper about ABS](http://www.cs.toronto.edu/~hinton/absps/vinodicann.pdf)

`P` can be turned into an infinite labelled training set by taking any valid `y(i)`, feeding it into `P` and getting `x(i)`,
thus creating labelled set of (`y`s, `x`s).

One obvious immediate question is how to get valid, (and more importantly: plausible and meaningful) `y`s. Not all scene descriptions
are equally plausible. Some might be physically impossible, or nonsensical. 
The [breeder learning algorithm](http://www.cs.toronto.edu/~hinton/absps/vinodicann.pdf)
takes the following approach: We need an extra set `X` of n data vectors `{x1, x2, ... xn}`. We also have a recognition
network `Rw` (eg: a feedforward neural network). The idea is to recognize the extra `x`s with `Rw` to get sensible `y`s. Then
we can play around the those `y`s. In the paper, "playing around" consists of: 
perturbing the `y`s to get `y'i`, regenerating from them to get `x'i`, re-recognizing to get
`y''`, and learning with the couple (`x'`, `y'`).

This approach assumes that a unlabelled data-set `X` is available. What could we do without such a data-set ? Is is possible
to learn a model of `P` in an exploratory manner. Probably. I think we can turn to Schmidhuber 
[format theory of fun and creativity](http://people.idsia.ch/~juergen/creativity.html) for that.