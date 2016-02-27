---
layout: post
title:  "Is meteor about to get relevant?"
date:   2016-02-27 22:30:00
categories: programming javascript
---

A little while ago, Sasha Greif wrote about [what went wrong with meteor](https://www.discovermeteor.com/blog/the-state-of-meteor-part-1-what-went-wrong/).
And on top of that, [MDG](https://www.meteor.com/people) still hasn't solved two long standing problems: 
better support for NPM packages, and support for other data sources (and in particular SQL).

1.3 is [about to land](https://forums.meteor.com/t/meteor-1-3-early-beta-now-available/14723) soon, 
and [fixes the NPM packages support, and adds module support](https://github.com/meteor/meteor/blob/release-1.3/packages/modules/README.md).
More details about 1.3 in the [transmission episode 6](https://www.youtube.com/watch?v=bLv2_A-hF8A)

Once that is out of the way, the top priority seem to be Reactive GraphQL, or Apollo, and it 
[looks awesome](https://voice.kadira.io/meteor-s-reactive-graphql-is-just-awesome-b21074231528#.8gtexgl1t)

For more info about Apollo: <!--   
-->[Technical details](https://github.com/apollostack/apollo/blob/master/design/high-level-reactivity.md), 
[Transmission episode 7](https://www.youtube.com/watch?v=VQOsDlEnN4U) 

If successful, the Apollo project will allow Meteor to increase its adoption in two big ways:

 - The project being standalone, it can be used independently of Meteor. This allows developers to start using
 parts of the meteor stack incrementally. Note that MDG is also splitting up the main repo by pulling out
 blaze, accounts, email, and then other packages into separate repositories.
 - SQL support (made possible once the Apollo itself, and the Apollo SQL drivers are written) is going to attack a lot more developers. 
 This has been one of the top requested feature for a long while.
 
With those two major barriers out of the way, I can't wait to see how Meteor adoption is going to grow.