---
layout: post
title:  "Agar Strategy Guide"
date:   2016-01-31 17:33:00
categories: agar
---

In this post, I will briefly introduce the game agar.io in 
[Game mechanics part 1](#game-mechanics-part-1---the-basics) 
[and 2](#game-mechanics-part-2---viruses-and-eject-mass) 
and then reveal some pro-tips
in the [strategy section](#strategy-section).
Examples will be illustrated with short clips wherever possible.
The main goal being to show how rich strategy tactics can emerge from seemingly simple game mechanics. 

## The agar.io game

[Agar.io](http://agar.io) is a fun in-browser game.

<div class="image">
  <img src="/images/agar/main_screen.png" alt=""/>
  <p>Welcome screen. Pick a username and play.</p>
</div>

With lots of players.

<div class="image">
  <img src="/images/agar/player_counts.png" alt="" style="height: 200px"/>
  <p>Those are active users, playing the game right now. By any standards, this is a lot of players.</p>
</div>

<br/>

## Game mechanics part 1 - the basics

You are a cell. You start off by eating food.

<div class="video" style="float:left">
  <video loop>
      <source src="/images/agar/start_off.webm" />
  </video>
  <p>Enter a nickname, click play, and off you go (and yes, I do have an ad-blocker)</p>
</div>
<div>
  <em>
    ← This actually is a video.
    To play it, mouse over it
  </em>
</div>
<div style="clear:both"></div>

Your purpose is to eat food and other players. If you are bigger than another player and go over him,
you will eat him and gain his mass.

<div class="video">
  <video loop>
      <source src="/images/agar/eat.webm" />
  </video>
  <p>Note that the player just stops moving because he gets disconnected. Normal players will try to avoid you !</p>
</div>

You can press `space` to split in two and eject a cell to try to catch other players. In this manner other players
will try to eat you.

<div class="video">
  <video loop>
      <source src="/images/agar/avoid.webm" />
  </video>
  <p>Those bastards are trying to eat us !</p>
</div>

But when done correctly, it looks like this :
<div class="video">
  <video loop>
      <source src="/images/agar/eat2.webm" />
  </video>
  <p>Feels good man</p>
</div>

After a while, your cells will recombine, as you see at the begining of the last clip.

Before diving into the strategy discussion, there are two more things we need to cover: `viruses` and `eject mass`.

<br/>

## Game mechanics part 2 - viruses and eject mass

### Viruses
 
You might wonder what are the green cells that appear not to be moving and not serving any purpose. These are viruses. 
They are PNJ cells with the following properties:

 - They are not controlled by anybody 
 - They do not move 
 - You do not get eaten by it if you go underneath it
 - If you happen to eat a virus, **you** will explode in a thousand pieces !
 - You can shoot into it to eject a new virus

<div class="video">
  <video loop>
      <source src="/images/agar/explode1.webm" />
  </video>
  <p>Notice the pink guy exploding. How beautiful !</p>
</div>

This guy tries to split over a virus. Didn't turn out great for him.

<div class="video">
  <video loop>
      <source src="/images/agar/explode2.webm" />
  </video>
  <p>Looks like you should not split onto viruses</p>
</div>

At this point you might agree that virus eating is a stupid idea. But like everything you shouldn't do, there are
some specific situations where it actually **is** a good idea. Under the strategy section, we will see what those situations are.

### Eject mass 

If you press the key `W`, your cell will eject a little bit of mass:

<div class="video">
  <video loop>
      <source src="/images/agar/mass_ejection1.webm" />
  </video>
  <p>If only getting rid of your fat was that simple in real life...</p>
</div>

Quite surprisingly, `eject mass` has many usages. One of them is that if you eject mass in a virus, it will make it
grow bigger, and past a certain size (about 5-7 bullets), it will eject a virus in the same direction of the last ejected
bit of mass.

<div class="video">
  <video loop>
      <source src="/images/agar/mass_ejection2.webm" />
  </video>
  <p>Shoot in the virus, eject a virus. Simple</p>
</div>

With that said, you are free to eject mass whenever you want, wherever you want:

<div class="video">
  <video loop>
      <source src="/images/agar/mass_ejection3.webm" />
  </video>
  <p>Instructions unclear. Pressed W too many times</p>
</div>

<div class="video">
  <video loop>
      <source src="/images/agar/mass_ejection4.webm" />
  </video>
  <p>Not sure what the goal was here. The guy probably just shitted his pants</p>
</div>

Fear not, we will see more skillful uses of `eject mass` in the strategy section below.

But before the long awaited strategy section, one last thing. Why the name `List of fags:` ?
 
Well, because of this:

<div class="image">
  <img src="/images/agar/ladder.png" alt="" style="height: 200px"/>
  <p>Other players will notice the joke and will not like it, and as a result will be more aggressive towards you. This will make
     for a more fun and action packed agar session. (jokes aside, your name is the only way to communicate verbally with
     other players, and does affect their behavior)     
  </p>
</div>



<hr/>

<br/>

## Strategy section

#### Generalities

When on top of another, a cell needs to be about 110% to 120% the size of the other in order to eat it. 
(Two cells of the exact same size will
just pass through one another). And because splitting divides your cell in two, you need a cell about 3 times bigger
than another to be able to reliably eat it by splitting onto it.

Because smaller cells are faster, splitting-to-eat is the main way to eat another cell (because if you run towards a
smaller cell, it will just escape by running away)

This creates a dynamic where you tend to move towards cells that about 1/5th to 1/3rd of your size, and you avoid cells three to
five times bigger. The reason that you are not attracted to smaller size cells is that splitting is expensive (because
of the wait needed to recombine), so splitting onto smaller cells is not very efficient.

*Note: When considering cell size, I am talking about average cell size (the cell might be split into many), and not total mass.
This means that split cells are more attractive because easier to eat.*

A corollary to the dynamic just mentioned is that when pursued by a predator P (say 4 times your mass), you can
seek protection by approaching a still bigger cell Q (say 10 times your mass) because P will be scared by Q. And Q will
most likely not split on you because you are a fraction of his size.

<hr/>

<br/>

<em class='grey'>
Below is a list of specific strategies, ordered roughly by personal preference, #1 being the best. Each are given an
applicability and effectiveness score from 1 to 10. Applicability is how easy and how often can you apply the strategy.
Effectiveness is how big a gain it provides.
</em>

### #10: Cornering <span class='grey small'>[aspects: positioning, applicability: 3, effectiveness: 9]</span>


A very important aspect of the game is that the map is a 2d bounded plane. Cells cannot go past the edges and corners.
Because smaller cells usually escape by being faster, pushing them against an edge or into a corner is a great way to
eat them.

Because there is no minimap, it is therefore important to mentally keep track of where the edges and corners are.
 
Viruses are a great way to escape a cell that is cornering you, because the smaller cell can just go around the virus.
Also, the smaller cell is more likely to pass through hole if there are many viruses, or viruses near edges.

### Friendship and teams

### Strategies related to splitting

----


friendship/teaming

### #0 counter-feeding

### #0 bait

### #0 taunt by merge control

### #0 defensive splitting

### #0 splitting evasion

### #0 gavage

### #0 Tugboat <span class='grey small'>[aspects: positioning, applicability: 3, effectiveness: 3</span> 2:01
 
### #0 Signaling friendship <span class='grey small'>aspects: teaming, applicability: 2, effectiveness: 5</span> 2:22

### #0 Evading virus ejection<span class='grey small'>aspects: viruses, mass-ejection, applicability: 2, effectiveness: 5</span> 2:29, 14:20

### #0 Script <span class='grey small'>aspects: mass-ejection, applicability: 5, effectiveness: 2</span> 2:33
 
### #0 <span class='grey small'>aspects: mass-ejection, applicability: 4, effectiveness: 5</span> 2:40, 6:54, 10:40, 14:26 directed virus ejection (7:02 failed)

### #0 Merge control<span class='grey small'>aspects: positioning, applicability: 5, effectiveness: 4</span> 6:00, 3:35, 9:14

### #0 Cornering (with map) <span class='grey small'>aspects: positioning, applicability: 4, effectiveness: 5</span> 11:33, 12:37

### #0 Cornering (with viruses) <span class='grey small'>aspects: positioning, applicability: 3, effectiveness: 5</span> 3:55, 8:18
 
### #0 Cell relative-mass control <span class='grey small'>aspects: mass-ejection, applicability: 4, effectiveness: 4</span> 4:12, 8:44, 9:14
 
### #0 Aggressive mass control <span class='grey small'>aspects: mass-ejection, applicability: 3, effectiveness: 5</span> 7:57, 11:41, 12:00
 
### #0 Feed <span class='grey small'>aspects: mass-ejection, applicability: 4, effectiveness: 4</span> 4:29, 14:46
 
### #0 Good aiming <span class='grey small'>aspects: splitting, applicability: 1, effectiveness: 5</span> 6:10
 
### #0 Moonwalk <span class='grey small'>aspects: positioning, viruses, applicability: 4, effectiveness: 3</span> 6:17, 6:44, 6:52, 8:05
 
### #0 Balzy split <span class='grey small'>aspects: splitting, applicability: 1, effectiveness: 4</span> 6:25
 
### #0 Virus evasion <span class='grey small'>aspects: positioning, applicability: 1, effectiveness: 5</span> 6:37
 
### #0 Counter virus ejection <span class='grey small'>aspects: mass-ejection, viruses, applicability: 2, effectiveness: 5</span> 7:01
 
### #0 Double split <span class='grey small'>aspects: splitting, applicability: 2, effectiveness: 4</span> 9:44, 11:20
 
### #0 Defensive virus ejection <span class='grey small'>aspects: mass-ejection, viruses, applicability: 3, effectiveness: 3</span> 10:11
 
### #0 Satellite <span class='grey small'>aspects: viruses, applicability: 1, effectiveness: 5</span> 12:05
 
### #0 Man-in-the-middle <span class='grey small'>aspects: positioning, applicability: 1, effectiveness: 5</span> 12:17
 
### #0 Virus eating <span class='grey small'>aspects: viruses, applicability: 2, effectiveness: 4</span> 12:23, 13:03


