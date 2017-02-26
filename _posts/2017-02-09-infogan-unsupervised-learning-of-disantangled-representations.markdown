---
layout: post
title:  "InfoGAN: Unsupervised learning of disentangled representations"
date:   2017-02-09 22:00:00
categories: deep-learning mutual-information representation-learning
---

In this great post: [What sort of thing a brain is](http://mindingourway.com/what-sort-of-thing-a-brain-is/),
Nate Soares makes a case for the need for human rationality, but I think that his view about the brain as a
mutual-information machine is even more profound:


> A brain is a specialty device that, when slammed against its surroundings in a particular way, 
> changes so that its insides reflect its outsides. A brain is a precise, complex machine that 
> continually hits nearby things just so, so that some of its inner bits start to correlate with 
> the outside world.

> A brain is a machine that builds up mutual information between its internals and its externals.

Is it turns out, this principle of mutual information will help us to automatically
learn [disentangled representations](http://pinouchon.github.io/ai/dl/representation-learning/2016/08/14/Disentangled-representations.html)

Lo and behold, InfoGAN does exactly that, by building upon the framework of Generative Adversarial Nets:
[InfoGAN: Interpretable Representation Learning by Information Maximizing Generative Adversarial Nets](https://arxiv.org/pdf/1606.03657v1.pdf)

> This paper describes InfoGAN, an information-theoretic extension to the Generative
> Adversarial Network that is able to learn disentangled representations in a
> completely unsupervised manner. InfoGAN is a generative adversarial network
> that also maximizes the mutual information between a small subset of the latent
> variables and the observation. We derive a lower bound of the mutual information
> objective that can be optimized efficiently. Specifically, InfoGAN successfully
> disentangles writing styles from digit shapes on the MNIST dataset, pose from
> lighting of 3D rendered images, and background digits from the central digit on
> the SVHN dataset. It also discovers visual concepts that include hair styles, presence/absence
> of eyeglasses, and emotions on the CelebA face dataset. Experiments
> show that InfoGAN learns interpretable representations that are competitive with
> representations learned by existing supervised methods.

> [...]

> In this paper, we present a simple modification to the generative adversarial network objective that
> encourages it to learn interpretable and meaningful representations. We do so by maximizing the
> mutual information between a fixed small subset of the GAN’s noise variables and the observations,
> which turns out to be relatively straightforward.

> [...]

> These results suggest that generative modelling augmented with
> a mutual information cost could be a fruitful approach for learning disentangled representations.

It has many desirable properties:

 - It does Representation Learning
 - In an unsupervised way
 - Its representations are interpretable
 - And disentangled
 - And the principle to push it to do that is conceptually elegant (based on maximising mutual information)

Note that a previous good attempt to build interpretable and disentangled representations is this one:
[Deep Convolutional Inverse Graphics Network](https://arxiv.org/pdf/1503.03167.pdf), although the learning
of the representations is done in a supervised fashion.