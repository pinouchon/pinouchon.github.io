---
layout: post
title:  "AGI : What is missing ?"
date:   2016-02-01 22:40:00
categories: ai
---

It's been a while since we heard great promises from AI proponents. Back in 1965, I.J. Good writes

> Let an ultraintelligent machine be defined as a machine that can far surpass all the intellectual activities 
> of any man however clever. Since the design of machines is one of these intellectual activities, an ultraintelligent 
> machine could design even better machines; there would then unquestionably be an ‘intelligence explosion,’ and the 
> intelligence of man would be left far behind. Thus the first ultraintelligent machine is the last invention that man 
> need ever make, provided that the machine is docile enough to tell us how to keep it under control.

Since then many have started to actually question the unquestionable, and many others have tried to get us there. But
getting *just* to human level - or AGI - remains a challenge. On the positive side, Nick Bostrom 
[argues](http://www.nickbostrom.com/superintelligence.html) that once AGI-level is reached, it won't be long before
superintellignce. So let's just consider AGI as the main challenge.

The field was founded in 1956 by 
[John McCarthy](https://en.wikipedia.org/wiki/John_McCarthy_(computer_scientist)), 
[Marvin Minsky](https://en.wikipedia.org/wiki/Marvin_Minsky), 
[Allen Newell](https://en.wikipedia.org/wiki/Allen_Newell), 
[Arthur Samuel](https://en.wikipedia.org/wiki/Arthur_Samuel), and 
[Herbert Simon](https://en.wikipedia.org/wiki/Herbert_A._Simon). It is such a long time ago that all of them are now
dead (Marvin Minsky passed away very recently, on January of 2016)

The many waves of expectations and disappointments triggered two AI winters. In the meantime, the field has come a
long way. Today, the winters seem long gone and AI is trending again. But still, 60 years of head-banging have not
been enough to crack open the AI nut, with no shortage of bright minds
keeping at it. So what's missing ?

## Some dead ends (or are they really dead ends ?)

I'll start with a very short, non-exhaustive list of ideas I've explored that seem promising, but fail short upon closer
inspection

### On Intelligence - The idea that Intelligence is defined by prediction 

> The mathematician Paul Erdös believed that the simplest mathematical proofs already
> exist in some ethereal book and a mathematician's job was to find them, to "read
> the book." In the same way, I felt that the explanation of intelligence was "out
> there." I could taste it. I wanted to read the book.
> For the past twenty-five years, I have had a vision of that small, straightforward
> book on the brain. It was like a carrot keeping me motivated during those years.
> This vision has shaped the book you are holding in your hands right now. I have
> never liked complexity, in either science or technology. You can see that reflected
> in the products I have designed, which are often noted for their ease of use. The
> most powerful things are simple. Thus this book proposes a simple and
> straightforward theory of intelligence.

While [On Intelligence](http://www.amazon.com/On-Intelligence-Jeff-Hawkins/dp/0805078533) is a great book, it is not
*the* book, and I disagree with the main premise, that intelligence is defined by prediction. This is a subject for
another post, but basically, I think that while prediction *is* a very important property of intelligence (or an intelligent
agent), it is not what *defines* it.
 
 
First, (and this is pointed out in the book), you can be intelligent just sitting around, doing nothing, silently 
theorycrafting.
 
 
And second, if intelligence *were* defined by prediction, creating a powerful AI would be straightforward. Collect the
moves of a chess game for example. Replay the game, but next to it open a window containing the history of the moves, with the right move corresponding to each turn. The program now correctly predicts 
every move ! Yet it is not intelligent, it is just playing back some pre-recorded history. This is a bit of an oversimplification,
but to get at the core of intelligence, I believe we have to dig deeper. 

To his credit, Jeff Hawkins makes a lot of great points in the book about why we should study the neocortex, why there is
reason to believe in a simple unifying cortical algorithm, and his [HTM theory](http://numenta.org/) is quite solid. 
He also gave a ted talk that started it all for me. He may not have written *the* book, but he definitely has made 
[*the* talk]([that talk](http://www.ted.com/talks/jeff_hawkins_on_how_brain_science_will_change_computing)).

### The Pattern Recognition Theory of Mind (PTRM)

Explained in his book [How To Create A Mind](http://www.amazon.com/How-Create-Mind-Thought-Revealed/dp/1491518839),
Raw Kurzweil tries to rebrand the HTM-theory into his own, saying that the brain is just a big hierarchy of
pattern recognizers.

Douglas Hofstadter's review of the book cracks me up:

> if you read Ray Kurzweil’s books … what I find is that it’s a very bizarre mixture of ideas that are solid and good with ideas that are crazy. It’s as if you took a lot of very good food and some dog excrement and blended it all up so that you can’t possibly figure out what’s good or bad.

My main issue of the book is that while some his ideas are good (many of which can be found in one of his previous
books, [The Singularity Is Near](http://www.amazon.com/The-Singularity-Is-Near-Transcend/dp/0143037889)), I find no
deep insights about the topic of interest (AGI, not LOAR)

### Analogy as the Core of Cognition

This video sums up the idea nicely [https://www.youtube.com/watch?v=n8m7lFQ3njk](https://www.youtube.com/watch?v=n8m7lFQ3njk).
For more, I would suggest 
[Fluid Concepts and Creative Analogies](http://www.amazon.com/Fluid-Concepts-Creative-Analogies-Fundamental/dp/0465024750)
and [GEB](http://www.amazon.com/G%C3%B6del-Escher-Bach-Eternal-Golden/dp/0465026567), both of which I find very good.

This is an appealing idea. My stance on it is that it needs further exploration, but I would consider analogy as an
emergent and important property of intelligence, not as the core. (I may come back to that in the future).

### Deep learning

Deep learning is in great part due to the work of [Geoffrey E. Hinton](http://www.cs.toronto.edu/~hinton/). He seems to
have no shortage of brilliant ideas. (Some of my favorites:
[Analysis-by-Synthesis](http://www.cs.toronto.edu/~fritz/absps/vinodicann.pdf),
[Semantic Hashing](http://www.cs.toronto.edu/~hinton/absps/sh.pdf),
[Generative models](http://www.cs.toronto.edu/~hinton/absps/ranzato_cvpr2011.pdf),
though almost every paper I read adds to my list of favorites)

For more on deep learning, I would suggest the [coursera course of Hinton about neural nets](https://www.coursera.org/course/neuralnets).

Deep learning is of immense practical value: it has redefined the fields computer vision and speech.

But in the end, deep learning is just perception (the good news being that some units have the same properties as
cells found in V1 in the visual neocortex). You feed in some sensory input, and you get a nice high-level description
of what's there, as a hidden layer activation pattern.

I think that deep learning techniques at least get us somewhere, I would go so far as to say that it solves perception.
All we have to do now is fit that into a bigger framework of what intelligence is.
 
#### Little deep-learning tangent
As an aside, a nice analysis/critique of deep learning can be found here: 
[http://thinkingmachines.mit.edu/blog/unreasonable-reputation-neural-networks](http://thinkingmachines.mit.edu/blog/unreasonable-reputation-neural-networks).
A commenter asks a very good question:

> Great assesment, and a well written analysis.
I tend to agree with your conclusion that while deep learning is a useful tool and a big step towards AGI, 
it is not the be-all-end-all of an intelligent system. There are other missing parts. I'm curious - you mentioned one-shot leaning
 
(For an example of this, see [this video](http://videolectures.net/aaai2012_tenenbaum_grow_mind/) at 6:10 where Josh
Tenenbaum shows his "Tufa" example.

> and unsupervised learning as potential next-steps. Do you think there is a clear road map to develop deep learning 
frameworks capable of those, or will it require A) "breakthroughs" or B) much more computational power?

The author gives a two-part response:

> The learning paradigm. Even if some clever use of temporal continuity would give them a window 
through which to watch the movement and interactions of objects, they would surely be incredibly 
handicapped by their lack to agency in the world they observe. For a child encountering a first 
banana, the 'unsupervised' learning problem is made vastly easier by their ability to pick it up, 
rotate it, squeeze it, twist it, peel it, break it, etc as they choose. 

This is closely related to two recently published Deep Mind papers: [Neural Turing machines](http://arxiv.org/pdf/1410.5401v2.pdf) and 
[Q-Learning](https://www.cs.toronto.edu/~vmnih/docs/dqn.pdf)

And the second part (spoiler alert: this might contain some deep insight)

> Priors. Each humans may not have ever encountered anywhere near the amount of perceptual data available on 
the internet, but their evolutionary ancestors certainly have, and have passed down some very powerful priors. 
In some cases maybe these are analogous to the specific weights of a network (say, the fact that even newborn 
babies [prefer to look at smiling faces](http://scan.oxfordjournals.org/content/early/2007/06/11/scan.nsm025.short)) but more generally they might look something like modelling constraints. 
One thing absolutely necessary to make neural network work was the use of domain specific constraints such as 
convolutions - by my calculation, [AlexNet](http://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks.pdf) without convolutions would have had over 1000 times more parameters 
(bringing it to 80 billion). This kind of prior-imposing architecture was very natural to [come up with in 1989](http://www.mitpressjournals.org/doi/pdfplus/10.1162/neco.1989.1.4.541) 
for something like 2D structure in 2D images, but is far less so for something like the structure and properties 
of 3D objects (let alone for reasoning about other people's thoughts, desires, beliefs, etc.).

I think this hits the nail on the head, and it duct-tapes very nicely with the following point.

### The game engine in your head

Josh Tenenbaum [expresses this idea very nicely](https://www.youtube.com/watch?v=NTnbnw01HHY).
Also the [lectures](http://videolectures.net/joshua_b_tenenbaum/) he gave are interesting. 

The "Physics engine" or "Psychology engine" that Tenenbaum is talking about may well be the source of "priors" that
[Luke Hewitt](http://thinkingmachines.mit.edu/blog) mentioned above.

Indeed, in the abstract of the [Analysis-by-Synthesis paper](http://www.cs.toronto.edu/~fritz/absps/vinodicann.pdf), Hinton says:
 
> For learning meaningful representations of data, a rich source
  of prior knowledge may come in the form of a generative black box, e.g.
  a graphics program that generates realistic facial images.
  
Hinton (in the same paper):

> We consider the problem of learning the inverse of a given generative model from data.

Tenenbaum (in his ["Picture" paper](https://mrkulk.github.io/www_cvpr15/1999.pdf)) 

> We see probabilistic programming as key to realizing the promise of “vision as inverse graphics”

They both realize that a graphics engine may be used as a source of prior knowledge (tough they use it in slightly diffeent ways). 

Also see [Efficient analysis-by-synthesis in vision](http://www.mit.edu/~ilkery/papers/yildirimetal_cogsci15.pdf) for how
to combine a CNN with MCMC to inverse a face-rendering engine.

### Algorithmic Information Theory and transfer learning

On the topic of hwo to combine a perception machine in a bigger intelligence framework, [this paper](http://arxiv.org/pdf/1511.09249v1.pdf)
by Jurgen Schmidhuber provides useful insight. A bit long, but well worth the read.

I'll quote the basic AIT (Algorithmic Information Theory) argument:

> According to AIT, given some universal computer, U, whose programs are encoded as bit strings,
  the mutual information between two programs p and q is expressed as K(q | p), the length of the
  shortest program w¯ that computes q, given p, ignoring an additive constant of O(1) depending on U
  (in practical applications the computation will be time-bounded). That is, if p is a solution to
  problem P, and q is a fast (say, linear time) solution to problem Q, and if K(q | p) is small, and w¯
  is both fast and much shorter than q, then asymptotically optimal universal search for a
  solution to Q, given p, will generally find w¯ first (to compute q and solve Q), and thus solve Q much
  faster than search for q from scratch.

Schmidhuber goes on to explain what C and M are. Basically, they are both RNNs, M is a model, C a controller.
 
> For example, suppose that M has learned to represent (e.g., through predictive coding )
 videos of people placing toys in boxes, or to summarize such videos through textual outputs. Now
 suppose C’s task is to learn to control a robot that places toys in boxes. Although the robot’s actuators
 may be quite different from human arms and hands, and although videos and video-describing texts
 are quite different from desirable trajectories of robot movements, M is expected to convey algorithmic
 information about C’s task, perhaps in form of connected high-level spatio-temporal feature
 detectors representing typical movements of hands and elbows independent of arm size. Learning a
 wC that addresses and extracts this information from M and partially reuses it to solve the robot’s
 task may be much faster than learning to solve the task from scratch without access to M.

Very close to transfer learning.

When tackling AGI, the hard part seems to be the G in the middle. The design of the MC system shown above could
be a way for an intelligent system to reuse parts of his knowledge to novel tasks or domains.
 
# Closing toughts

Upon reflection, I've not said what's missing, I've just listed a few ideas that might (or might not) move us forward.
The listing of those ideas took a bit longer than expected, so I'll  elaborate about *my* stab on the subject in a future post.