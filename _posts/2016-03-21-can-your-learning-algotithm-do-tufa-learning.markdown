---
layout: post
title:  "Can your machine learning algorithm do Tufa-learning ?"
date:   2016-03-21 22:30:00
categories: ai machine-learning 
---

"Tufa" is a name for a new word Josh Tenenbaum gives when [talking about the idea of learning with few examples](http://videolectures.net/aaai2012_tenenbaum_grow_mind/).
The idea is the re-create the situation where you are a child,
you encounter a new word along with just 3 examples, and yet you are able to grasp its meaning.
 
<img src="/images/tufa.png" style="width: 500px"/>
 
> Where are the other tufas ? Easy. (as long are you are not trying to get a machine to do it) 

Quick tangent: the idea of [Algorithmic Information Theory](http://arxiv.org/pdf/1511.09249v1.pdf) may be a good stab
 at this problem.

The take-home message I want to convey here is that we should not forget that when humans learn, you do not need to feed
thousands of training examples, you just feed 3, or even 1, and you have a new concept or category. This is in
stark contrast with what we typically see in machine learning, where most learning procedures need to repeat 
lots of steps on lots of training cases (and minibatches). 

Should any such algorithm be
discredited because it fails at the Tufa-test ? I think so. We should use Tufa-learning as a criteria
about which approaches to pursue.

---

<br/>

Quick self-criticism: in this experiment, we are in fact merely assigning a name to an existing concept. For example,
when a grownup points to a horse and says "horse", the child already has a concept hose. The child is just linking
"existing horse concept", eg: `#<Object:0x007fbaa5db05d0>` with the label "horse", eg `:horse`. So that's easy, because the hard work
of forming the concept (through backprop or your favorite ML method) has already been done.

But has it ?

Tufa is a weird concept. There is a plethora of such concepts you could come up with. And each one would have made a 
valid Tufa-test. So it is not clear how this near-infinity of would-be tufas is already learned, each would-be tufa 
waiting to be assigned a name.

It's more plausible that upon hearing "Tufa" and seeing the tufas, we assemble on the spot a tufa-concept that we can
describe and use to recognize new tufas. Now, how do we do the intuitive, totally made up, computationally inexpensive,
 on-the-spot assembling of the tufa-concept ? I'd love to know.