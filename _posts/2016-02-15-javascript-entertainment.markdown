---
layout: post
title:  "Javascript entertainment"
date:   2016-02-15 22:30:00
categories: programming javascript
---

From this talk by Derek Slager: [ClojureScript for Skeptics](https://youtu.be/gsffg5xxFQI?t=31m43s), there is a nice
section about the "Shaky Foundation" of javascript:

> If you ever want to be entertained, if your're bored, go to stackoverflow, click the 
> [javacript tag](http://stackoverflow.com/questions/tagged/javascript?sort=votes&pageSize=15)
> and find the most popular stuff. And you will find examples after examples of 
> [this](http://stackoverflow.com/questions/1531093/how-to-get-current-date-in-javascript)

And then he goes to explain that in clojurescript, you have access to the 
[google closure library](https://developers.google.com/closure/library/) [1].
So most of the stackoverflow  questions that he goes through are trivial in clojurescript.

[This one about for-in](http://stackoverflow.com/questions/9329446/for-each-over-an-array-in-javascript)
deserves a special mention because of the length required to go through all the details. And the gist of it being:
"Don't use it, it will hurt you"

All in all, this is a really great talk. 
And I do agree that, provided you don't write javascript for a living, browsing the javascript tag on stackoverflow is somewhat funny.

Taking a step back, it is amazing that javascript developers are willing to
put up with so much crap. Everyone is upvotting, and noone is saying "I'm done with this". Javascript is nuts. 

<br/>

---
[1] Why isn't that library isn't more
    popular? *This* is what google uses for most of their apps including search, maps, gmail, docs... not angular
