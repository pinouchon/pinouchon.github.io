---
layout: post
title:  "The appeal for probabilistic models"
date:   2016-08-08 21:00:00
categories: ai dl
---
 
[Probabilitsic models of cognition is a truly great idea](https://probmods.org/). It is the kind we need in AI in order to make
tangible progress. Side note: because the content is not easily accessible,
few people can appreciate how great the content is, and this is a bit sad. 

Anyhow, these ideas are really great (If you haven't read it: trust me. If you don't want to, read it and convince
 yourselves).
And I want to consider the question: how did we get down this path to begin with, 
and why is it a good path to go down to ?

In [Theory-based Bayesian models of inductive learning and reasoning](https://www.semanticscholar.org/paper/Theory-based-Bayesian-models-of-inductive-learning-Tenenbaum-Griffiths/5d8d5a767704d69ab81b26ce97c2f3065cd139bb/pdf),
Joshua B. Tenenbaum, Thomas L. Griffiths, and Charles Kemp explain:

> Human cognition rests on a unique talent for extracting
> generalizable knowledge from a few specific examples.
> Consider how a child might first grasp the meaning of a
> common word, such as ‘horse’

They consider the general problem that Tenenbaum often refers to as 
`How does the mind get so much from so little`. A special case would be "one-shot learning" that they
mention, but the problem goes beyond just that: we want to explain not just the one-shot learning cases,
but all the machinery that makes it possible. How do you even get in a state where one-shot learning is 
possible ?

> Most previous accounts of inductive generalization
> represent one of two approaches. The first focuses
> on relatively domain-general, knowledge-independent
> statistical mechanisms of inference, based on similarity,
> association, correlation or other statistical metrics [1,4–
> 13]. This approach has led to successful mathematical
> models of human generalization in laboratory tasks, but
> fails to account for many important phenomena of
> learning and reasoning in complex, real-world domains,
> such as intuitive biology, intuitive physics or intuitive
> psychology. The second approach aims to capture more of
> the richness of human inference, by appealing to
> sophisticated domain-specific knowledge representations,
> or intuitive theories [14–20]. An intuitive theory may be
> thought of as a system of related concepts, together with a
> set of causal laws, structural constraints, or other
> explanatory principles, that guide inductive inference in
> a particular domain. However, theory-based approaches to
> induction have been notoriously difficult to formalize,
> particularly in terms that make quantitative predictions
> about behavior or can be understood in terms of rational
> statistical inference.

So we have two approaches, both traditionally viewed as opposites:

 - statistical: knowledge-independent, based on similarity, association, correlation.
 - intuitive theories: a system of related concepts, together with a set of causal laws.
 
They propose a kind of merger:

> We will argue for an alternative approach, where
> structured knowledge and statistical inference cooperate
> rather than compete, allowing us to build on the insights
> of both traditions. We cast induction as a form of Bayesian
> statistical inference over structured probabilistic models
> of the world.

And this is great. Learning becomes some kind of probabilistic program induction, and inference a search
in program input (and/or execution) space.

> These models can be seen as probabilistic
> versions of intuitive theories [14,18,20] or schemas
> [21,22], capturing the knowledge about a domain that
> enables inductive generalization from sparse data

And this is why you should read [Probabilitsic models of cognition is a truly great idea](https://probmods.org/). In it,
Noah D. Goodman and Joshua B. Tenenbaum go into very concrete details (execute-directly-into-your-browser concrete) 
about how those probabilistic models work.