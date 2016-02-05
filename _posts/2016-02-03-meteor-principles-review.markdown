---
layout: post
title:  "Meteor principles review"
date:   2016-02-03 22:40:00
categories: meteor web programming
---

Meteor started out with 7 principles (strangely, is does not show up anymore in [the docs](http://docs.meteor.com/), but anyway).
Let's go through the list:

> ### 1) Data on the Wire

The idea is that unlike in ajax, pjax, or turbolinks, your server will not return HTML that you display directly.
In the case of Meteor, the data is exchanged through a custom protocol, DDP, and the client has to interpret it in
order to update the view.

This principle forces Meteor to be a SPA (single-page-app) framework, as opposed to a more traditional website with
many pages. It introduces some problems, such as a performance hit on first page load, server side rendering, crawling...
But overall, it allows to make a more efficient and better structured app. I agree with this principle.

> ### 2) One Language: JavaScript

The haskell folks have a great analysis of [The Javascript Problem](https://wiki.haskell.org/The_JavaScript_Problem):

> 1) JavaScript, the language

Read: Javascript sucks

> 2) We need JavaScript

Javascript is everywhere.

You could 
[look](http://www.typescriptlang.org/) 
[for](http://coffeescript.org/)
[the](http://livescript.net/)
[ideal](http://www.purescript.org/)
[solution](https://github.com/clojure/clojurescript)
and paint yourself into a corner. Or you could just accept to use javascript and be done with it. The thing is,
with all the right linters, tooling and the new ES6 syntax, Javascript is not that horrible.

Going as far as using Javascript also on the server is not going too far. And it has the nice
benefit that you will get serious about Javascript. As a result, improved code style and tooling with will benefit both the client and server sides
of your app. 

Paying too much attention to your perfect, better-than-javascript server-side language, and allowing
jquery-spaghetti-style code to slowly to creep up everywhere is a much worse scenario.

So all in all, this principle makes sense.

> ### 3) Database Everywhere

> Use the same transparent API to access your database from the client or the server.

The idea is that your clients have access to a subset to the database, and **query it with the same api**. Including
insert/update queries. The updates are then synchronized and merged with the main server database. (As a bonus, that's a way to
get optimistic-ui for free).

This is a very uncommon way to structure an app. To integrate any new database system, you have to implement a
mini-version to recreate the api you have on the server.

Despite the harder integration, I think this is a fantastic idea.

> ### 4) Latency Compensation

Yes

> ### 5) Full Stack Reactivity

I think this is going too far. The price in added complexity and added magic behind the scenes is too much.

> ### 6) Embrace the Ecosystem

Yes

> ### 7) Simplicity Equals Productivity

Yes, obviously.

We have a conflict with principle numbers 7 and 5. Full stack reactivity introduces a lot of complexity, explicit
or hidden, in a lot of places. It is really about making a trade-off: magical reactivity vs simplicity. And
in the case of software development, sacrificing simplicity is almost always a bad choice.

# A few notes:

 - I think that Atmosphere was a mistake. It is in direct conflict with principle 6, and they are now moving
away from atmosphere. Big waste of everyone's time.

 - I still don't get why SQL support is not higher priority. It has been the most requested feature, and a dealbreaker
for many potential adopters.