---
layout: post
title:  "Yudkowsky commentary of Alphago"
date:   2016-03-14 22:30:00
categories: ai deepmind alphago 
---

Eliezer Yudkowsky made a [nice commentary](https://www.facebook.com/yudkowsky/posts/10154018209759228)
 about Alphago, after the 2nd game has been played. (also posted on [this HN thread](https://news.ycombinator.com/item?id=11271816))
 
I'll go over some of those points because I think they are accurate and sometimes provoking.

> - Edge instantiation. [https://arbital.com/p/edge_instantiation/](https://arbital.com/p/edge_instantiation/)
>
> Extremely optimized strategies often look to us like 'weird' edges of the possibility space, and may throw away 
> what we think of as 'typical' features of a solution. In many different kinds of optimization problem, the maximizing 
> solution will lie at a vertex of the possibility space (a corner, an edge-case).
> In the case of AlphaGo, an extremely optimized strategy seems to have thrown away the 'typical' production of a 
> visible point lead that characterizes human play. Maximizing win-probability in Go, at this level of play against a 
> human 9p, is not strongly correlated with what a human can see as visible extra territory - so that gets thrown out 
> even though it was previously associated with 'trying to win' in human play.

> - Unforeseen maximum. [https://arbital.com/p/unforeseen_maximum/](https://arbital.com/p/unforeseen_maximum/)
>
> Humans thought that a strong opponent would have more visible territory earlier - building up a lead seemed like an obvious way to ensure a win. But 'gain more territory' wasn't explicitly encoded into AlphaGo's utility function, and turned out not to be a feature of the maximum of AlphaGo's actual utility function of 'win the game', contrary to human expectations of where that maximum would lie.

This was discussed at some point by the commentators during the [second game](https://www.youtube.com/watch?v=l-GsfyVCBu0).
Basically, the idea was that Alphago never tries to maximize the territory he has, just its probability to win. For
the program, winning by just one extra point is similar of winning by a lot of points. So a +1% probability of winning by one
point is optimized for, whereas winning with 2 extra points instead of one extra point (for a given constant
 win probability) is not even considered.
 
> - Instrumental efficiency. [https://arbital.com/p/efficient_agent/](https://arbital.com/p/efficient_agent/)
>
> The human pros thought AlphaGo was making mistakes. Ha ha.
>
> AlphaGo doesn't actually play God's Hand. Similarly, liquid stock prices sometimes make big moves. But human pros can't detect AlphaGo's departures from God's Hand, and you can't personally predict the net direction of stock price moves.
>
> If you think the best move is X and AlphaGo plays Y, we conclude that X had lower expected winningness than you thought, or that Y had higher expected winningness than you thought. We don't conclude that AlphaGo made an inferior move.

I don't think its fair to say that every move made by Alphago were good.
Some moves regarded as "slow" surely were better than the commentators thought. And some "mistakes" probably weren't
mistakes. But Alphago did some
real mistakes, as the weird move at the bottom in game 4 (which is very confusing and hard to explain, btw).

> - Strong cognitive uncontainability. https://arbital.com/p/strong_uncontainability/
>
> Even after the human pros saw AlphaGo's exact moves, the humans couldn't see those moves as powerful strategies, not in advance and sometimes not even after the fact, because the humans lacked the knowledge to forecast the move's consequences.
>
> [...]
>
> For an example of an ultra-complicated poorly understood domain where we should reasonably expect that a smarter intelligence can deploy 'magic' in this sense, consider, say, the brain of a human gatekeeper trying to keep an AI in a box. Brains are very complicated, and we don't understand them very well. So superhuman moves on that gameboard will look to us like magic to a much greater extent than AlphaGo's superhuman Go moves.

Yes.

---

<br/>

[Full post here](https://www.facebook.com/yudkowsky/posts/10154018209759228).