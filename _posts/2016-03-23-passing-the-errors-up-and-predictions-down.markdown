---
layout: post
title:  "Passing the errors up and predictions down"
date:   2016-03-23 22:30:00
categories: ai neocortical-theory 
---

An interesting hypothesis of neocortical function is explained here: 
[Predictive coding in the visual cortex:
 a functional interpretation of some
 extra-classical receptive-field effects](http://homes.cs.washington.edu/~rao/nn.pdf)
 
> We describe a model of visual processing in which feedback connections from a higher- to a lowerorder
> visual cortical area carry predictions of lower-level neural activities, whereas the feedforward
> connections carry the residual errors between the predictions and the actual lower-level activities.

This is in line with those two papers:

 - [LEARNING UNAMBIGUOUS REDUCED SEQUENCE DESCRIPTIONS](ftp://ftp.idsia.ch/pub/juergen/nipschunker.pdf)
 - [LEARNING COMPLEX, EXTENDED SEQUENCES USING THE PRINCIPLE OF HISTORY COMPRESSION](ftp://ftp.idsia.ch/pub/juergen/chunker.pdf) 

And this is somewhat in line with this:

 - [HIERARCHICAL TEMPORAL MEMORY](http://numenta.org/resources/HTM_CorticalLearningAlgorithms.pdf)
 

> HTM cells have three output states, active from feed-forward input, active from
> lateral input (which represents a prediction), and inactive. The first output state
> corresponds to a short burst of action potentials in a neuron. The second output
> state corresponds to a slower, steady rate of action potentials in a neuron

