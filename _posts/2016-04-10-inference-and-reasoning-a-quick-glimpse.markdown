---
layout: post
title:  "Inference and reasoning: a quick glimpse"
date:   2016-04-10 21:30:00
categories: ai artificial-reasoning
---

My current guess about the state of AI is that perception/inference is mostly nailed down, and a big remaining
challenge is reasoning.

I've explored the topic of artificial reasoning a bit in CM topologies 
[part1](http://pinouchon.github.io/ai/ait/cm/2016/03/19/CM-topologies-part-1.html) and 
[part2](http://pinouchon.github.io/ai/ait/cm/2016/03/20/CM-topologies-part-2.html).

In this post, I'll take a higher level view by reviewing an old Hinton paper: [Mapping Part-Whole Hierarchies into
Connectionist Networks](http://www.cs.toronto.edu/~hinton/absps/AIJmapping.pdf).

> Given a parallel network, some inferences can be performed very efficiently by
> simply allowing the network to settle down into a stable state. The states
> or external inputs of a subset of the units are fixed to represent the premises, 
> and when the network has settled down, the conclusion is represented by the
> states of some other subset of the units. A large amount of knowledge about
> the domain can influence the settling process, provided the knowledge is in the
> form of connection strengths. This method of performing inference by a single
> settling of a network will be called "intuitive inference." More complex
> inferences require a more serial approach in which parts of the network are
> used for performing several different intuitive inferences in sequence. This will
> be called "rational inference." 

The "settling down" process is akin to a forward pass in a neural network (NN). It is also called "inference" or
"recognition". We are sure that the "intuitive inference" step doesn't involve lots of computation because of the
"one hundred-step rule". It goes as follows (quoting from On Intelligence):

> A typical neuron can do this and reset itself in about five
> milliseconds (5 ms), or around two hundred times per second.
> [...]
> It is called the "one hundred–step rule." A human can perform significant
> tasks in much less time than a second. For example, I could show you a
> photograph and ask you to determine if there is cat in the image. Your job would
> be to push a button if there is a cat, but not if you see a bear or a warthog or a
> turnip. This task is difficult or impossible for a computer to perform today, yet a
> human can do it reliably in half a second or less. But neurons are slow, so in that
> half a second, the information entering your brain can only traverse a chain one
> hundred neurons long. That is, the brain "computes" solutions to problems like this
> in one hundred steps or fewer, regardless of how many total neurons might be
> involved. From the time light enters your eye to the time you press the button, a
> chain no longer than one hundred neurons could be involved.

"intuitive inference" is this "computation" involving less than a hundred neurons.
"rational inference" is something else, and I have no idea what it is.
Back to the Hinton article:

> The distinction between these two kinds of
> inference is not simply a serial versus parallel distinction. A network that is
> settling to a single stable state typically requires a series of iterations. Also, it
> may exhibit another emergent type of seriality during a single settling because
> easily drawn conclusions may emerge early in the settling. So even within one
> settling a network can exhibit something that looks like sequential inference. 
> This interesting phenomenon makes it clear that the crucial criterion for
> distinguishing rational from intuitive inference is not seriality. The defining
> characteristic of rational inference is that the way in which entities in the
> domain are mapped into the hardware changes during the course of the
> inference.
 
Note: An entity-mapping-change between the domain and the hardware is what happens during 
[the punchline of a joke](http://pinouchon.github.io/perception/cognition/ai/2016/03/30/monads-jokes-and-analogies.html).
Also related [to this post](http://pinouchon.github.io/ai/2016/02/24/flexible-representations.html).

> The distinction between these two types of inference applies quite well to a
> conventional computer. Intuitive inferences correspond, roughly, to single
> machine instructions and rational inferences correspond to sequences of machine
> instructions that typically involve changes in the way in which parts of the
> task are mapped into the CPU. Moreover, the very same inference can
> sometimes be performed in different ways. The task of multiplying two
> integers, for example, can be performed in a single instruction by dedicated
> hardware, or it can be performed by a sequential program. In the first case the
> inference is very fast but is limited in flexibility. It may work well for 32 bit
> numbers but not for 33 bit numbers.
> [...]
> One big difference between computers and people is in the amount of
> computation that can be done in an intuitive inference. A computer typically
> breaks up a computation into very many, very small machine instructions that
> are executed in sequence. For the computations that people can do well, they
> typically use a few sequential steps each of which involves a computationally
> intensive intuitive inference. So we can think of people as "huge instruction set
> computers."
> [...]


> A further difference between people and computers is that a computer does
> not change its instruction set as it runs, whereas people seem to be capable of
> taking frequently repeated sequences and eliminating the sequential steps so
> that an inference that was once rational becomes intuitive.

This is similar to this idea of pushing representations down the cortical hierarchy (in HTM theory).
Another side node: [this is what happens](https://www.youtube.com/watch?v=4D1d8ipjblE) when you use the wrong
instruction set.

