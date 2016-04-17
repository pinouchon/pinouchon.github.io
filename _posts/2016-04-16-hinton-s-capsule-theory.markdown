---
layout: post
title:  "Hinton's capsule theory"
date:   2016-04-16 21:30:00
categories: ai
---

Right in the middle of [this AMA of Geoff Hinton](https://www.reddit.com/r/MachineLearning/comments/2lmo0l/ama_geoffrey_hinton/),
 there is this question:

> Hi Professor Hinton, Since you joined Google lately, will your research there be proprietary? I'm just worried that the research done by one of the most important researchers in the field is being closed to a specific company.

And Hinton replies:

> Actually, Google encourages us to publish. The main thing I have been working on is my capsules theory and I haven't published because I haven't got it to work to my satisfaction yet.

At this point, not googling "capsules theory" is a complete impossibility.

Lo and behold, it is a real thing. And Hinton has even made a mnist-proof-of-concept of it.

The [original link](http://techtv.mit.edu/collections/bcs/videos/30698-what-s-wrong-with-convolutional-nets)
 to the talk is dead, but hopefully someone [asked for it](https://www.reddit.com/r/MachineLearning/comments/3wsxv7/whats_wrong_with_convolution_neural_nets_video/),
 so [here it is](https://web.archive.org/web/20150929075327/http://d1baxxa0joomi3.cloudfront.net/69bf620e48d60761118dc4328f5d6e9c/basic.mp4).
 
I don't want to overhype the capsule learning, but so far, it is the only learning algorithm (that I know of)
that can do [tufa learning](http://pinouchon.github.io/ai/machine-learning/2016/03/21/can-your-learning-algotithm-do-tufa-learning.html).

At the end of the talk, Tenenbaum seems to have some nice objections, although Hinton doesn't repeat them. (His
complaint probably has "probabilistic", "bayesian" or "probabilistic programming" in it)