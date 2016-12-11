---
layout: post
title:  "Gentle with the gradient"
date:   2016-12-11 22:00:00
categories: deep-learning back-propagation sgd
---

Andrej Karpathy reviews some convnet architectures in this lecture:
[CS231n Winter 2016 Lecture 7 Convolutional Neural Networks](https://www.youtube.com/watch?v=sHyIqu_S5Ks)

 - At 45:51, he starts reviewing different types of convnets: 
   - 45:59 LeNet-5
   - 46:58 AlexNet
   - 54:20 ZFNet
   - 57:17 VGGNet
   - 1:01:58 GoogLeNet
   - 1:05:09 ResNet. This is the one architecture that is gradient-flow friendly.

In a following lecture, he explains LSTMs: 
[CS231n Winter 2016 Lecture 10 Recurrent Neural Networks, Image Captioning, LSTM](https://www.youtube.com/watch?v=R1rXkuJ5w20)

 - The LSTM explanation starts at 43m32s.
 - From 53m52s to 57m51s, he explains why LSTM improves the gradient flow, as well as the parallel with ResNets

The general idea is that because these networks are trained with backpropagation, having an architecture that
helps gradient flow is a big win. This effect is so important that LSTMs have completely replaced vanilla RNNs,
and switching from convnets to ResNets gives a jump from 6.7 to 3.57 on imagenet (see first video at 1:05:43).

Note: Some alternatives of LSTM have been explored, such as GRU, and more recently
[uRNNs](https://arxiv.org/pdf/1511.06464v4.pdf).

Also see [this article for ResNets details and variants](http://torch.ch/blog/2016/02/04/resnets.html).