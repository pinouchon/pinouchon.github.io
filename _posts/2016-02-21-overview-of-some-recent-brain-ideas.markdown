---
layout: post
title:  "Overview of some recent brain ideas"
date:   2016-02-21 22:30:00
categories: ai
---

In a similar fashion of the post [AGI: what is missing ?](http://pinouchon.github.io/ai/2016/02/01/AGI-what-is-missing.html),
I want to give a brief overview of some recent ideas about ai/intelligence.

The selection criteria for each idea is that they seem good on a subjective level, and that they crossed my mind
at the moment I made the list.

# #1 [Driven by compression progress](http://people.idsia.ch/~juergen/driven2009.pdf)
Or : Compression progress as the main intrinsic motivation of an intelligent agent.
 
> I argue that data becomes temporarily interesting by itself to some self-improving,
> but computationally limited, subjective observer once he learns to predict or
> compress the data in a better way, thus making it subjectively simpler and more
> beautiful. Curiosity is the desire to create or discover more non-random, nonarbitrary,
> regular data that is novel and surprising not in the traditional sense of
> Boltzmann and Shannon but in the sense that it allows for compression progress
> because its regularity was not yet known. This drive maximizes interestingness, the
> first derivative of subjective beauty or compressibility, that is, the steepness of the
> learning curve. It motivates exploring infants, pure mathematicians, composers,
> artists, dancers, comedians, yourself, and (since 1990) artificial systems.

(related to *Driven by compression progress*:)

# #2 [The principle of history compression](ftp://ftp.idsia.ch/pub/juergen/chunker.pdf)
Closeky related to [Learning unambiguous reduced sequences descriptions](http://papers.nips.cc/paper/523-learning-unambiguous-reduced-sequence-descriptions.pdf)

> Do you want your neural net algorithm to learn sequences? Do not limit
> yourself to conventional gradient descent (or approximations thereof).
> Instead, use your sequence learning algorithm (any will do) to implement
> the following method for history compression. No matter what your final
> goals are, train a network to predict its next input from the previous
> ones. Since only unpredictable inputs convey new information, ignore all
> predictable inputs but let all unexpected inputs (plus information about
> the time step at which they occurred) become inputs to a higher-level
> network of the same kind (working on a slower, self-adjusting time scale).
> Go on building a hierarchy of such networks. This principle reduces the
> descriptions of event sequences without loss of information, thus easing
> supervised or reinforcement learning tasks. Alternatively, you may use
> two recurrent networks to collapse a multi-level predictor hierarchy into a
> single recurrent net. Experiments show that systems based on these principles
> can require less computation per time step and many fewer training
> sequences than conventional training algorithms for recurrent nets. Finally
> you can modify the above method such that predictability is not defined
> in a yes-or-no fashion but in a continuous fashion. 

(related to *The principle of history compression*):

# #3 [Intelligence as defined by prediction](http://www.amazon.com/On-Intelligence-Jeff-Hawkins/dp/0805078533) and [HTM principles](https://www.youtube.com/watch?v=6ufPpZDmPKA) 

One on the main ideas of HTM is that it is a hierarchy of components, each doing the same thing: trying to predict
the output of the component lower in the hierarchy, and passing to the component higher up the name of the currently
recognized sequence. (the "name of the sequence" being just a way to identify a sequence without each its individual
details)

# #4 [Analysis by synthesis](http://www.cs.toronto.edu/~hinton/absps/vinodicann.pdf)

> For learning meaningful representations of data, a rich source
> of prior knowledge may come in the form of a generative black box, e.g.
> a graphics program that generates realistic facial images. We consider
> the problem of learning the inverse of a given generative model from
> data. The problem is non-trivial because it is difficult to create labelled
> training cases by hand, and the generative mapping is a black box in the
> sense that there is no analytic expression for its gradient. We describe a
> way of training a feedforward neural network that starts with just one
> labelled training example and uses the generative black box to “breed”
> more training data. As learning proceeds, the training set evolves and the
> labels that the network assigns to unlabelled training data converge to
> their correct values. We demonstrate our approach by learning to invert
> a generative model of eyes and an active appearance model of faces.

A good problem for analysis-by-synthesis is how can it fit into a bigger learning framework (RL or not). The choice
of the generative black box and its parameters seems very ad-hoc. I may come back to that.

# #5 [The analogy-discovery-machine](http://pinouchon.github.io/ia/analogy/2016/02/19/an-analogy-discovery-machine.html)

---

<br/>

All these ideas seem good on their own, but I have a hard time relating them one another (at least the last ones).
Which is weird.