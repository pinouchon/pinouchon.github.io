---
layout: post
title:  "The unreasonable effectiveness of Generative Adversarial Networks"
date:   2017-02-12 22:00:00
categories: deep-learning GAN
---

Andrej Karpathy has this landmark post about the 
[Unreasonable effectiveness of RNNs](http://karpathy.github.io/2015/05/21/rnn-effectiveness/).

I want to make a similar post about Generative Adversarial Networks, on GANs for short. 
This technique feels gimmicky: we create a generator and a discriminator
network, and then we have them fool one another... And yet, the results are so great, they are hard
to believe.

I want to mention 3 great examples (but there are many others, and still many more to come...)

 - the [InfoGAN that I covered in a previous post](http://pinouchon.github.io/deep-learning/mutual-information/representation-learning/2017/02/09/infogan-unsupervised-learning-of-disantangled-representations.html)
 - the [3dGAN](http://3dgan.csail.mit.edu/). [paper here](http://3dgan.csail.mit.edu/papers/3dgan_nips.pdf)
 - the [StackGAN](https://arxiv.org/pdf/1612.03242.pdf)
 
Both 3dGAN and stackGAN have been covered by
[two Minute Papers](https://www.youtube.com/user/keeroyz):

 - [video for 3dGAN](https://www.youtube.com/watch?v=HO1LYJb818Q)
 - [video for StackGAN](https://www.youtube.com/watch?v=rAbhypxs1qQ)

More about GANs: [original paper](https://arxiv.org/pdf/1406.2661.pdf), [tutorial](https://arxiv.org/pdf/1701.00160.pdf)