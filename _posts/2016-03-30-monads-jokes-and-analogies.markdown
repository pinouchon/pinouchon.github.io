---
layout: post
title:  "Monads, Jokes and Analogies: what do they tell us about perception ?"
date:   2016-03-30 21:30:00
categories: perception cognition ai 
---

Lets take those three things and analyse them one by one. Then together. And see
what we find.

 - Monads ([better understood in pictures](http://adit.io/posts/2013-04-17-functors,_applicatives,_and_monads_in_pictures.html))


They are values wrapped inside contexts. And we can define operations and say what should happen given the context, eg:

{% highlight haskell %}
instance Functor Maybe where
    fmap func (Just val) = Just (func val)
    fmap func Nothing = Nothing
{% endhighlight %}

Approximate English translation: We define Maybe: when presented with a value inside a context, apply the function
to the value and rewrap the result; when presented with no value inside the context, do nothing and return a context
with no value inside.

> Here’s what is happening behind the scenes when we write fmap (+3) (Just 2):

<div class="image">
  <img src="/images/monad.png" alt=""/>
</div>

 - Jokes

They are unexpected context switches. The newly switched version, or "bad interpretation" is usually not 
socially acceptable or hurting somebody or a group, causing the fun. The "bad interpretation", if hurting, has to 
escape [common knowledge](https://www.youtube.com/watch?v=Q-B_ONJIEcE). That's why we don't usually explain jokes.

But the funny business about how the bad interpretation should be inferred by everyone ("inferring the bad 
interpretation" is the same "getting the joke") is merely a details about how jokes work. What is at interest here
is the mechanic about sudden context switching.

Some examples:

> How do you make holy water? You boil the hell out of it.

Context 1: regular boiling of water<br/>
Context 2: you remove "hell" from the water<br/>
The play on word makes the two contexts cohabit. Religious people are somewhat hurt<br/>

> Why did the blonde get excited after finishing her puzzle in 6 months? -- The box said 2-4 years!

Context 1: (in blonde's mind) Finishing a puzzle meant to be solved in 2 to 4 years in only 6 months<br/>
Context 2: Finishing a puzzle meant for 2 to 4 years kids in 6 longs months<br/>
Context switch possible because of blonde's misinterpretation of "2-4 years" notice. Blondes are hurt.<br/>
 
> If con is the opposite of pro, it must mean Congress is the opposite of progress?

Context 1: progress and congress are two very different entities<br/>
Context 2: they must be opposite<br/>
Context switch forced by hypothesis. Congress is hurt.<br/>

> I wondered why the frisbee was getting bigger, and then it hit me.

Context 1: Guy finally understands why frisbee was getting bigger<br/>
Context 2: Guy is hit by frisbee<br/>
Context switch hinges on play on word "it hit me". Guy is somewhat hurt<br/>

> Today a man knocked on my door and asked for a small donation towards the local swimming pool. I gave him a glass of water.

Context 1: (pov of guy asking) Expecting a small money donation<br/>
Context 2: (pov of guy responding) Giving him water directly<br/>
Context switch is in the difference of what first guy expects and second guys does.<br/>
 
> Apparently I snore so loudly that it scares everyone in the car I'm driving.

Context 1: Guy snores in night at bed<br/>
Context 2: Guy sleeps while driving<br/>
Context switch is made when one is representing the scene and happens mid-sentence.<br/>

To recap, in each of these, we first establish a context. For longer jokes, this is usually the bulk of the joke.
Then comes the punchline that forces the context to be rethought. The punchline can be just a few words, as in "in the car I'm driving".

Schematically, we have:<br/>
- Establish situation 1 with context 1<br/>
- punchline forces context 2<br/>
(Laugh ensues because context 2 causes situation 1, which does not changes, to be awkward for somebody. Awkwardness
escapes common knowledge because everyone infers the joke independently). 

Quick detour about funny situations:
Understanding a problem/situation with incorrect context can lead to [very interesting failure modes](https://www.youtube.com/watch?v=4D1d8ipjblE).

 - Analogies
 
I've [talked about them before](http://pinouchon.github.io/ia/mind/intelligence/2016/02/10/the-mind-as-an-isomorphism-machine.html), so I'll
just give a quick overview: they are an identity of structure between two things/concepts.

---

<br/>

So we have: 

 - monads: putting things in/out of context to apply certains operations
 - jokes: waiting until the very last moment to rethink the context that renders the situation funny
 - analogies: two things being similar ?
 
If we want analogies to fit in, we can simply view them differently: instead of being two different things with
the same structure, we can say: rather, it is about stripping two things of their respective contexts so they become the
same. This makes us think differently about analogies: instead of being a mapping operation, they are an equality operation.
And because we need to lift (or substract) the context in the process, maybe a diff operation.