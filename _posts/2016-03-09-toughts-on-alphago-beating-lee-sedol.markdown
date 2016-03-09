---
layout: post
title:  "Toughts on alphago beating Lee Sedol"
date:   2016-03-09 22:40:00
categories: ai deepmind go
---

This morning, DeepMind [made history](https://twitter.com/mustafasuleymn/status/707469083458068480)
by beating Go world champion [Lee Sedol](https://en.wikipedia.org/wiki/Lee_Sedol).

(4 more matches will be played in the coming days).

On this [HN thread](https://news.ycombinator.com/item?id=11251463), clickok made some great comments:

> 1. AlphaGo underwent a substantial amount of improvement since October, apparently. The idea that 
it could go from mid-level professional to world class in a matter of months is kinda shocking. Once you 
find an approach that works, progress is fairly rapid.
> 2. I don't play Go, and so it was perhaps unsurprising that I didn't really appreciate the intricacies 
of the match, but even being familiar with deep reinforcement learning didn't help either. You can write 
a program that will crush humans at chess with tree-search + position evaluation in a weekend, and maybe 
build some intuition for how your agent "thinks" from that, plus maybe playing a few games. Can you get 
that same level of insight into how AlphaGo makes its decisions? Even evaluating the forward prop of the 
value network for a single move is likely to require a substantial amount of time if you did it by hand.
> 3. These sorts of results are amazing, but expect more of the same, more often, over the coming years. 
More people are getting into machine learning, better algorithms are being developed, and now that 
"deep learning research" constitutes a market segment for GPU manufacturers, the complexity of the 
networks we can implement and the datasets we can tackle will expand significantly.
> 4. It's still early in the series, but I can imagine it's an amazing feeling for David Silver of DeepMind. 
I read Hamid Maei's thesis from 2009 a while back, and some of the results presented mentioned Silver's 
implementation of the algorithms for use in [Go](https://webdocs.cs.ualberta.ca/~sutton/papers/maei-thesis-2011.pdf). Seven years between trying some things and seeing how 
well they work and beating one of the best human Go players. Surreal stuff.

> ...

> Since I'm linking papers, why not peruse [the one in Nature that describes AlphaGo](http://www.nature.com/nature/journal/v529/n7587/full/nature16961.html)? 

I totally agree with point 1. Going from professional to world-class in five months is hard to believe. This is a jump of
about 500 to 600 Elo points. 

What we learned today is that the AI train is moving really fast. 
Now, we can be confident that [once at Humanville station, it *will* swoosh right by](https://www.ted.com/talks/nick_bostrom_what_happens_when_our_computers_get_smarter_than_we_are?language=en). 

To learn more about what Deep Mind plans next, I recommend this video:
[Demis Hassabis: The Future of Artificial Intelligence](https://www.youtube.com/watch?v=4fjmnOQuqao)