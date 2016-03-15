---
layout: post
title:  "Relay, Falcor, Om next, Apollo: The same good idea discovered many times"
date:   2016-03-15 22:30:00
categories: web programming 
---

The basic idea is being able to decouple the structure of the data in the UI from the structure of the data
in the database. The solution is a query language used in the UI (graphql or a datomic-datascript-like syntax).
Each UI component can declare its data requirements in this language, and then we can aggregate all those requirements
in a big single query to be executed against the database.

Why decoupling the structure of the data in the UI from the database structure? Well, the big insight is that:

 - it's best to store the data in a normalized format in the database (fact of life)
 - the UI usually needs a semi-denormalized graph (explained below)
 
This second bullet is best explained [here](http://blog.circleci.com/why-we-use-om-and-why-were-excited-for-om-next/):

> In Om Next, each component gets to declare exactly what data it needs. It declares a query, using a syntax similar
> to [Datomic’s pull query syntax](http://docs.datomic.com/pull.html). Unlike a simple path through a tree, a query 
> like this can navigate a graph. (In fact, 
> Om Next’s queries are analogous to, and partly inspired by, Facebook’s [GraphQL](https://facebook.github.io/graphql/).)

> For instance, perhaps some component needs to display **the start times of the builds previous to the builds that 
> were recently initiated by the current user**. You’d never store that information in a tree under the path 
> `[:current-user :initiated-builds 0 :previous :start-at]`. You wouldn’t nest your actual build records inside 
> other builds’ `:previous` references like that:

{% highlight clojure %}
{:current-user
 {:initiated-builds 
  [{:id 146
    :repo-name "circleci/frontend"
    :start-at #inst "2015-12-17T17:13:59.167-00:00"
    :previous {:id 144
               :repo-name "circleci/frontend"
               :start-at #inst "2015-12-17T17:05:58.144-00:00"
               :previous {:id 141
                          :repo-name "circleci/frontend"
                          :start-at #inst "2015-12-17T17:05:13.512-00:00"
                          :previous ; and so on...
                          }}}
   {:id 145
    :repo-name "circleci/docker"
    :start-at #inst "2015-12-17T17:09:25.961-00:00"
    :previous {:id 143
               :repo-name "circleci/docker"
               :start-at #inst "2015-12-17T17:05:36.797-00:00"
               :previous {:id 138
                          :repo-name "circleci/docker"
                          :start-at #inst "2015-12-17T17:04:51.124-00:00"
                          :previous ; and so on...
                          }}}]}}
{% endhighlight %}

> That would be silly. You’d store it in some list of builds; say, `[:builds 145 :start-at]`. 
> Your data would look something like this:

{% highlight clojure %}
{:current-user {:initiated-builds [[:build/by-id 146]
                                   [:build/by-id 145]]}
 :build/by-id {146 {:id 146
                    :repo-name "circleci/frontend"
                    :start-at #inst "2015-12-17T17:13:59.167-00:00"
                    :previous [:build/by-id 144]}
               145 {:id 145
                    :repo-name "circleci/docker"
                    :start-at #inst "2015-12-17T17:09:25.961-00:00"
                    :previous [:build/by-id 143]}
               144 {:id 144
                    :repo-name "circleci/frontend"
                    :start-at #inst "2015-12-17T17:05:58.144-00:00"
                    :previous [:build/by-id 141]}
               143 {:id 143
                    :repo-name "circleci/docker"
                    :start-at #inst "2015-12-17T17:05:36.797-00:00"
                    :previous [:build/by-id 138]}
               ;; and so on...
               }}
{% endhighlight %}

> You can’t navigate that with a cursor. Once you narrow in on `:current-user` and its `:initiated-builds`, 
> you can’t get to build `#146`: it’s in a different branch of the tree. And once you narrow in on build `#146`, 
> you can’t back out to find its previous build, `#145`. It turns out your data isn’t really a tree, it’s a graph.

---

<br/>

I'll quote the following because it explains nicely how Om Next solves this problem:

> Queries let you navigate the graph of your date in all sorts of directions. The way Om Next does this is pretty 
> clever: it takes something like the structure above and denormalizes the data you need into the places you expect it. 
> Your original data is a graph, but what your UI sees is a tree, a tree that matches the structure of your UI perfectly.
> In Om Next, your query might be something like:

{% highlight clojure %}
[{:current-user [{:initiated-builds [{:previous [:start-at]}]}]}]
{% endhighlight %}

> And, depending on how you set things up (Om Next is exceptionally flexible), you might end up with a tree like:


{% highlight clojure %}
{:current-user
 {:initiated-builds
  [{:previous {:start-at #inst "2015-12-17T17:05:58.144-00:00"}}
   {:previous {:start-at #inst "2015-12-17T17:05:36.797-00:00"}}]}}
{% endhighlight %}

> Notice that, in the original data, each build references a previous build, but in this response we don’t 
> have infinitely deep recursion. Why? Because **we’re only getting what we asked for in the query**. We asked to 
> go one level deep, and that’s what we got.

> In Om Now, you stored your app state in a tree which had to match the shape of your UI. In Om Next, you 
> store your app state in any shape that makes sense, and let Om (with some help from you) convert that data 
> into a tree that matches your UI **on the fly**. When the shape of your UI changes, the shape of the query changes
> with it, so the shape of the data it receives changes automatically. **Your UI does not drive the shape of your 
> data**. That’s a huge win.

---

<br/>

Definitely keep an eye on [Om Next](https://github.com/omcljs/om/wiki), [Relay](https://facebook.github.io/relay/),
[Falcor](https://github.com/Netflix/falcor) and [the Apollo stack](https://github.com/apollostack/apollo).