---
layout: post
title:  "Thick arrows - or why bayes nets are not enough, and the need for probabilistic programs"
date:   2016-05-20 21:40:00
categories: ai
---

Josh Tenenbaum and Noah Goodman have this concept that the arrows in a bayes net (or graphical* model) need
to be infinitely thick, and that's a big motivation behind probabilistic programs.

*graphical model in the sense of "graph" here. Not "graphics".

 - Josh Tenenbaum talks about thick arrows here: [Engineering & reverse-engineering human common sense](https://www.youtube.com/watch?v=hfoeRiZU5YQ&feature=youtu.be&t=48m34s)
 - Noah Goodman talks about thick arrows here: [Probabilistic Programs: A New Language for AI](https://youtu.be/fclvsoaUI-U?t=1h24m7s)

Quoting Josh Tenenbaum:

> But the basic idea [about probabilistic programs] is to say: "define these world models". 
> You could look at this and you could say: "well these look like directed graphs, why is that
> different from bayes nets", and is some sense that might be right. If you know the directed graph
> formulation of a hidden markov model, the picture I'm showing down here kind of looks like that. But the
> key is that if you were to represent this as a traditional bayes net or graphical model, you'd have
> nodes and arrows that are infinitely thick. The world state isn't just a fixed finite-dimensional 
> random variable, but it's something like a whole CAD description of a scene (we don't really know
> how to describe this yet) but it's a description of a whole bunch of physical objects in a three 
> dimensional representation, with their physical properties like masses and stiffnesses and so on.
> And this arrow isn't just a transition matrix in an HMM, but rather it's a physics simulator. So
> we think if you really want to capture intuitive physics, vision, intuitive psychology, you need
> these "thick arrows" that we really can only capture with programs, the same way in many other
> areas of science where that's the main way we capture our knowledge.
> 

<div class="image">
  <img src="/images/thick-arrows.png" alt="" style="width: 540px"/>
</div>
<br/>

Bonus: related

 - [Computational cognitive science: Generative models, probabilistic programs, and common sense](https://youtu.be/C1p-NDaM3Xc?t=1m19s)
 - [probmods.org](probmods.org)