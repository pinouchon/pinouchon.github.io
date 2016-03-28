---
layout: post
title:  "Contrastive Divergence: the underdog of learning algorithms"
date:   2016-03-28 21:40:00
categories: machine-learning rbm 
---

Geoffrey Hinton explains CD (Contrastive Divergence) and RBMs (Restricted Boltzmann Machines) 
in this paper with a bit of historical context: [Where do features come from?](http://www.cs.toronto.edu/~hinton/absps/cogsci14.pdf).
He also relates it to backpropagation and other kind of networks (directed/undirected graphical models, deep beliefs nets, stacking RBMs).

This has stayed open in my chrome tabs for a few months, competing with 18 others for my attention. Tonight I chose this one, and 
I'm glad I did.

If Hinton were James Cameron, I'm sure he would have written great intrigues.

> [After talking about backpropagation and why it went out of fashion]
>
> The other exciting new learning algorithm in the mid 1980s was quite
> different in nature. It didn’t work in practice, but theoretically it was much more
> interesting. From the outset, it was designed to learn binary distributed representations
> that captured the statistical structure implicit in a set of binary vectors, so it
> did not need labeled data. A more insightful way to say this is that it treated each
> training case as a vector of desired outputs of a stochastic generative model, so
> the training data consisted entirely of high-dimensional labels and what was missing
> was the inputs.

I'll include the next paragraph in case you haven't guessed it already (I didn't, even after 
reading the highly suggestive abstract):

> The network, called a Boltzmann machine, contained a set of
> binary stochastic visible units which could be clamped to a training vector and a
> set of binary stochastic hidden units which learned to represent higher-order features
> of the data, typically ones that occurred more often than would be expected
> by chance. Any unit could be connected to any other unit and all of the connections
> were symmetric. In the vision and statistics literatures this is now known
> as a partially observed, inhomogeneous, Markov Random Field or an undirected
> graphical model. Boltzmann machines can also be used to learn the distribution
> of the outputs given an input vector. This conditional form of the Boltzmann machine
> allows it to perform the same tasks as a feedforward neural network trained
> with backpropagation, but with the added advantage that it can model correlations
> between the outputs.

Having "established" that CD is better than backprop, Hinton explains that it can do 3 computations:

 - Perceptual inference
 
> After the weights on the connections have been learned, a Boltzmann machine
> can be made to perform perceptual inference by clamping a datavector on the
> visible units and then repeatedly updating the hidden units, one at a time, by
> turning on each binary hidden unit with a probability that is a logistic function
> of the total input it receives from all the other visible and hidden units (plus its
> own bias).

 - Hallucination
 
> Another computation that a trained Boltzmann machine can perform is to generate
> visible vectors with a probability that equals the probability that the model
> assigns to those vectors. This is done by using exactly the same process as is
> used for perceptual inference, but with the visible units also being updated.

 - Learning (!!!)
  
> The third and most interesting computation that a Boltzmann machine can perform
> is to update the weights on the connections in such a way that it is probably
> slightly more likely to generate all of the datavectors in the training set. Although
> this is a slow process, it is mathematically very simple and only uses information
> that is locally available.
>
> [...]
>
> The most attractive aspect
> of Boltzmann machines is that everything a connection needs to know about
> the weights on other connections is contained in the difference of its expected activity
> products during inference and generation. Instead of requiring a backward
> pass which explicitly propagates information about gradients, the Boltzmann machine
> only requires the same computation to be performed twice, once with the
> visible units clamped to data and once without clamping. It does not require the
> neurons to communicate two quite different types of information.
 
 
---

<br/>

CD is one of the techniques used to pre-train Deep Neural Networks, and it played some (how much ?) role in their revival.

Outside of academia, we never hear about contrastive divergence. In my opinion, it hasn't received the attention
it deserves.