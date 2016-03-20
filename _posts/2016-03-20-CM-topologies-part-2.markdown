---
layout: post
title:  "CM Topologies - Part 2"
date:   2016-03-20 22:30:00
categories: ai ait cm 
---

This is part 2 of the CM Topologies series. [Part 1 is here](http://pinouchon.github.io/ai/ait/cm/2016/03/19/CM-topologies-part-1.html)

So you've read the [CM paper](http://arxiv.org/pdf/1511.09249v1.pdf) and are ready for some RNN wiring. Great!

First off, quick recap of the algorithm for training C and M:

> #### Algorithm 1: Train C and M in Alternating Fashion
> 
> 1. Initialize C and M and their weights.
> 2. Freeze M’s weights such that they cannot change while C learns.
> 3. Execute a new trial by generating a finite action sequence that prolongs the history of actions
> and observations. Actions may be due to C which may exploit M in various ways (see Sec. 5).
> Train C’s weights on the prolonged (and recorded) history to generate action sequences with higher
> expected reward, using methods of Sec. 5.
> 4. Unfreeze M’s weights, and re-train M in a “sleep phase” to better predict/compress the prolonged
> history; see Sec. 4.
> 5. If no stopping criterion is met, goto 2

So C is using M somehow. But how exactly ? Let's review the different ways M and C can be connected together.

 - Black box:
 
A simple way would be to just consider M as a separate black box, send activations to M, and read off the results.
This is rather limited because C does not have access to the internals of M.

 - Connected as normal units. (this is the approach described in the paper)
 
 > Consider an RNN C (with typically rather small feasible search space) as in Sec. 5.2. We add
 > standard and/or multiplicative learnable connections (Sec. 3.1) from some of the units of C to some
 > of the units of the typically huge unsupervised M, and from some of the units of M to some of the
 > units of C. The new connections are said to belong to C. C and M now collectively form a new RNN
 > called CM, with standard activation spreading as in Sec. 3.1. The activations of M are initialized to
 > default values at the beginning of each trial. Now CM is trained on RL tasks in line with step 3 of
 > algorithm 1, using search methods such as those of Sec. 5.2 (compare Sec. 1). The (typically many)
 > connections of M, however, do not change—only the (typically relatively few) connections of C do.
 
We connect C and M together and consider the whole as a new RNN. We expect the weights of C to change, and 
the many weights of M to remain stable.

> What does that mean? It means that now C’s relatively small candidate programs are given time
> to “think” by feeding sequences of activations into M, and reading activations out of M, before and
> while interacting with the environment. Since C and M are general computers, C’s programs may
> query, edit or invoke subprograms of M in arbitrary, computable ways through the new connections.
> Given some RL problem, according to the AIT argument (Sec. 2.1), this can greatly accelerate C’s
> search for a problem-solving weight vector `w`, provided the (time-bounded [147]) mutual algorithmic
> information between `w` and M’s program is high, as is to be expected in many cases since M’s
> environment-modeling program should reflect many regularities useful not only for prediction and
> coding, but also for decision making.

C can reuse the concepts encoded in M, and thus plan and act in a higher level of abstraction. (as high as M
permits)

> This simple but novel approach is much more general than previous computable, but restricted,
> ways of letting a feedforward C use a model M (Sec. 1.3.1)[301, 273][245, Sec. 6.1], by simulating
> entire possible futures step by step, then propagating error signals or temporal difference errors
> backwards (see Section 1.3.1). Instead, we give C’s program search an opportunity to discover sophisticated
> computable ways of exploiting M’s code, such as abstract hierarchical planning and analogy based
> reasoning. For example, to represent previous observations, an M implemented as an LSTM
> network (Sec. 1.2) will develop high-level, abstract, spatio-temporal feature detectors that may be active
> for thousands of time steps, as long as those memories are useful to predict (and thus compress)
> future observations [62, 61, 189, 79]. However, C may learn to directly invoke the corresponding
> “abstract” units in M by inserting appropriate pattern sequences into M. C might then short-cut from
> there to typical subsequent abstract representations, ignoring the long input sequences normally required
> to invoke them in M, thus quickly anticipating a few possible positive outcomes to be pursued
> (plus computable ways of achieving them), or negative outcomes to be avoided.

C has access to the whole repertoire of concepts of M, and can directly activate them where necessary. This might
be the mechanism at work while planning, imagining or reasoning.

---

<br/>

#### Some remarks/questions:

 - What would happen if C makes a connection to a unit of M, and that unit changes or dies ?
 - Where should C makes its connection to M ? In the input, output or hidden layer ? Or all of these ? Can the learning
 algorithm figure out where C should connect ?
 - Why C and M should be trained in an alternating fashion ? What are the sources of instabilities if M and C are
 trained at the same time ?