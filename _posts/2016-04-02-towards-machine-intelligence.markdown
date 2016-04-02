---
layout: post
title:  "Towards machine intelligence"
date:   2016-04-02 21:30:00
categories: ai intelligence theory
---

This paper is a great summary of some ideas about AI: 
[Towards Machine Intelligence](http://arxiv.org/pdf/1603.08262v1.pdf).

> **Abstract.** There exists a theory of a single general-purpose learning algorithm
> which could explain the principles of its operation. This theory
> assumes that the brain has some initial rough architecture, a small library
> of simple innate circuits which are prewired at birth and proposes
> that all significant mental algorithms can be learned. Given current understanding
> and observations, this paper reviews and lists the ingredients
> of such an algorithm from both architectural and functional perspectives.

It's heavily influenced by the ideas of Jeff Hankins (and his book [On Intelligence](http://www.amazon.com/On-Intelligence-Jeff-Hawkins/dp/0805078533)) 

Also he cites Schmidhuber, Hinton, Bengio as well as a lot of good references.

One point of disagreement that I have is that prediction equals understanding. I think it's safe to say
that humans do a lot of prediction through understanding. But predicting alone is not understanding.
If you somehow had an oracle that told the future, it would work by dark magic, it would not understand
the facts it is predicting. If you have a good chess playing program that would correctly guess most of the
moves of a grandmaster, the chess playing program would predict the moves without understanding the game.

I think that understanding is having a good model of the world. This model is then used to predict. Modeling
and predicting are different.

Another aspect that I think is worthy of discussion is the fact that so much neurons and synapses are dedicated
to perception. I wonder how reflection works and how it is linked to perception. There are two plausible ways to explain
it: 

 - they would be the same thing
 - reflection could work by having a central unit querying a perception module, as in the [CM paper](http://arxiv.org/abs/1511.09249)
 
In the 2nd hypothesis, the perception module would be the neocortex, the central processing unit would be the hippocampus
(or the thalamus), and the hippocampus would hold the working memory. In this model, it's surprising that most
of the processing power is used by the perception.