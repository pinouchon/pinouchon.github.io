---
layout: post
title:  "The DRM paradigm: your mind as a bloom filter"
date:   2016-04-07 21:30:00
categories: ai cognition
---

The [Deese–Roediger–McDermott](https://en.wikipedia.org/wiki/Deese%E2%80%93Roediger%E2%80%93McDermott_paradigm) (DRM) paradigm
is fascinating. 

> The procedure typically involves the oral presentation of a list of related words (e.g. bed, rest, awake, tired, 
> dream, wake, snooze, blanket, doze, slumber, snore, nap, peace, yawn, drowsy) and then requires the subject to 
> remember as many words from the list as possible. Typical results show that subjects recall a related but nonpresented 
> word (e.g. sleep), known as a ‘lure’, with the same frequency as other presented words. When subjects are asked 
> about their experience after the test, about half of all participants report that they are sure that they remember 
> hearing the nonpresented word, indicating a false memory – memory for an event that never occurred.

The fact that this creates a false memory is interesting. But even more interesting is how we get to this point.
By presenting a lot of words semantically similar, we can activate a word at the center of the semantic category.

This has to do with the way the brain store concepts.
Jeff Hawkins explains what SDRs are in [this video](https://youtu.be/6ufPpZDmPKA?t=20m54s).

The part about Union membership is at [25m 4s in the video](https://youtu.be/6ufPpZDmPKA?t=25m4s).
 
<div class="image">
  <img src="/images/sdr_union_membership.png" alt="" style="width: 540px"/>
</div>
<br/>

You can create a union of many SDRs `Rs` by creating a representation `U` in which all the bits of all the SDRs are active.
To check if a new SDR `A` is present in the initial set `Rs` forming the union `U`, we can just check if each bit
of `A` is present in `U`. If each bit is present, `A` was part of `Rs`. If we find a bit of `A`
not present in `U`, then `A` was not part of `Rs`.

The only case where this fails is if some bits of `A` belong to one SDR `R0` of `Rs`, and some other bits to another one SDR
`R1` of `Rs`. (there could be more, but there are at least two).
Then, by chance, the union of `R0` and `R1` is enough to cover all the bits of `A`.
In fact, this is exactly what happens in the DRM experiment: by enumerating words all linked to sleep, we increase the
likelihood that all the bits of the "sleep" (A) concept are on. So that when we "OR" the bits of all the words (Rs), all
the bits of "sleep" end up activated. Only a small fraction of the bits of "sleep" might be activated by each word.

Because the list is too long, it doesn't fit into working memory, so the brain has to use this "OR"ing mechanism to see of the
word was in the original list when asked. If the list was shorter, eg 3 words, all words could be independently remembered and
this trick wouldn't work.

This mechanism is also the same principle behind a [bloom filter](https://www.youtube.com/watch?v=-SuTGoFYjZs). The
only difference is that a bloom filter uses arbitrary hash functions. Whereas SDRs (at least the HTM flavor) and the brain
use semantic hashes. If you knew how to collide the arbitrary hashes, you could make the bloom filters fail in much
the same way: lets say you want your bloom filter to hallucinate the set membership of element `L` not present in the set.

 - Hash `L` and get its bits `L_bits`. 
 - Get the first half `L_bits_h1` of them. 
 - Find an element `E` distinct from `L`, such that when hashed, contains
all `L_bits_h1` bits. (*1)
 - Get the last half `L_bits_h2` of `L_bits`
 - Find an element `F` distinct from `L`, such that when hash, contains all `L_bits_h2`
 - Insert `E` into the bloom filter
 - Insert `F` into the bloom filter
 
(*1) You can do that because, as hypothesized, you know how your hash function behave. 

Now your bloom filter thinks that `L` has been inserted. (Or a human that thinks that sleep is in the list).