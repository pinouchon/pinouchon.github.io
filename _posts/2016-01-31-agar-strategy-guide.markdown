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
    ← This is a video.
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
applicability and effectiveness score from 1 to 5. Applicability is how easy and how often can you apply the strategy.
Effectiveness is how big a gain it provides.
</em>

 
### #1 directed virus ejection <span class='grey small'>applicability: 4, effectiveness: 5</span>
This technique applies in the situation where you have multiple cells and you want to eject a virus. If you aim with
your mouse the virus directly, all cells will shoot the virus, and the direction in which the virus will be ejected
will be somewhat random (it will be determined by the bit of mass ejected by the last cell that makes the virus pop). To
have control over the direction of the ejection, simply make it so only one of your many cells shoots into the virus.
Usually, this will mean shooting mass into the enemy cell, but this slight cost is often worth it.

<div class="video">
  <video loop>
      <source src="/images/agar/directed_virus_ejection2.webm" />
  </video>
  <p></p>
</div>
<div class="video">
  <video loop>
      <source src="/images/agar/directed_virus_ejection3.webm" />
  </video>
  <p></p>
</div>
<div class="video">
  <video loop>
      <source src="/images/agar/directed_virus_ejection4.webm" />
  </video>
  <p></p>
</div>
<div class="video">
  <video loop>
      <source src="/images/agar/directed_virus_ejection1.webm" />
  </video>
  <p>In this case, the ejection fails because the cell stops moving</p>
</div>

<!--6:00, 3:35, 9:14-->

### #2 Merge control <span class='grey small'>applicability: 5, effectiveness: 4</span>
When your cells are about to merge, move them in a direction so that they do not merge for a long time. By doing so,
you can choose to merge them on top of an enemy cell. This is also a good way to bait enemy cell and merge on them
at the last moment.
<div class="video">
  <video loop>
      <source src="/images/agar/merge_control2.webm" />
  </video>
  <p></p>
</div>
<div class="video">
  <video loop>
      <source src="/images/agar/merge_control1.webm" />
  </video>
  <p></p>
</div>
<div class="video">
  <video loop>
      <source src="/images/agar/merge_control3.webm" />
  </video>
  <p></p>
</div>

<!--11:33, 12:37-->

### #3 Cornering (with map) <span class='grey small'>applicability: 4, effectiveness: 5</span>
Trap an enemy cell against a border or corner so that he cannot escape.
<div class="video">
  <video loop>
      <source src="/images/agar/cornering1.webm" />
  </video>
  <p></p>
</div>

<!--3:55, 8:18-->

### #3-bis Cornering (with viruses) <span class='grey small'>applicability: 3, effectiveness: 5</span>
Trap an enemy cell against a border, corner and/or virus so that he cannot escape.
<div class="video">
  <video loop>
      <source src="/images/agar/cornering2.webm" />
  </video>
  <p></p>
</div>
<div class="video">
  <video loop>
      <source src="/images/agar/cornering3.webm" />
  </video>
  <p></p>
</div>


<!--7:57, 11:41, 12:00-->

### #4 Aggressive mass control <span class='grey small'>applicability: 3, effectiveness: 5</span> 
Eject mass between your cells to change their relative mass. This way, you can surprise an enemy cell and eat it.
<div class="video">
  <video loop>
      <source src="/images/agar/aggressive_mass_control1.webm" />
  </video>
  <p></p>
</div>
<div class="video">
  <video loop>
      <source src="/images/agar/aggressive_mass_control2.webm" />
  </video>
  <p></p>
</div>
<div class="video">
  <video loop>
      <source src="/images/agar/aggressive_mass_control3.webm" />
  </video>
  <p></p>
</div>

<!--4:12, 8:44-->

### #4-bis Cell relative-mass control <span class='grey small'>applicability: 4, effectiveness: 4</span>
Same trick as above, but to have a few big cells instead of many small cells.
<div class="video">
  <video loop>
      <source src="/images/agar/cell_mass_control1.webm" />
  </video>
  <p></p>
</div>
<div class="video">
  <video loop>
      <source src="/images/agar/cell_mass_control2.webm" />
  </video>
  <p></p>
</div>

<!--6:17, 6:44, 6:52, 8:05-->

### #5 Moonwalk <span class='grey small'>applicability: 4, effectiveness: 3</span>
If you have two or more cells, you can pass on top of viruses. Handy to out-maneuver your opponents. 
<div class="video">
  <video loop>
      <source src="/images/agar/moonwalk2.webm" />
  </video>
  <p></p>
</div>
<div class="video">
  <video loop>
      <source src="/images/agar/moonwalk3.webm" />
  </video>
  <p></p>
</div>
<div class="video">
  <video loop>
      <source src="/images/agar/moonwalk4.webm" />
  </video>
  <p></p>
</div>


<!--2:29, 14:20-->

### #6 Evading virus ejection <span class='grey small'>applicability: 2, effectiveness: 5</span>
If you see someone ejecting a virus, make sure the other guy explodes by retreating a bit. 
<div class="video">
  <video loop>
      <source src="/images/agar/virus_evasion1.webm" />
  </video>
  <p></p>
</div>
<div class="video">
  <video loop>
      <source src="/images/agar/virus_evasion2.webm" />
  </video>
  <p></p>
</div>

### #7 Script <span class='grey small'>applicability: 5, effectiveness: 2</span>
By pasting that in the chrome console, you can spam `w` just by keeping `x` pressed. 
(the code could be greatly simplified, but it works in this form...)

{% highlight javascript %}
sindex = 0;

function mySpam() {
    sindex++;
    window["onkeydown"]({keyCode: 87});
    window["onkeyup"]({keyCode: 87});
    window["onkeydown"]({keyCode: 87});
    window["onkeyup"]({keyCode: 87});
    if (sindex < 10) { setTimeout(mySpam, 10) }
  }

$(window).on('keydown', function(e) {
console.log(e.which);
  if (e.which == 88) {
    var i;
    for (i = 0; i < 4; i++) {
      window["onkeydown"]({keyCode: 87});
      window["onkeyup"]({keyCode: 87});
      window["onkeydown"]({keyCode: 87});
      window["onkeyup"]({keyCode: 87});
    }
  }

if (e.which == 67) {
  sindex = 0;
  mySpam();
    
  }
})
{% endhighlight %}

<div class="video">
  <video loop>
      <source src="/images/agar/script.webm" />
  </video>
  <p>Initializing the script while in-game</p>
</div>

<!--9:44, 11:20-->

### #8 Double split <span class='grey small'>applicability: 2, effectiveness: 4</span>
You can split twice to reach cells that are far away. 
<div class="video">
  <video loop>
      <source src="/images/agar/double_split1.webm" />
  </video>
  <p></p>
</div>
<div class="video">
  <video loop>
      <source src="/images/agar/double_split2.webm" />
  </video>
  <p></p>
</div>

<!--7:01-->

### #9 Counter virus ejection <span class='grey small'>applicability: 2, effectiveness: 5</span>
When an enemy cell tryes to eject a virus on you, shoot in the virus right bewore it is about to pop, so that
the virus is ejected in the opposite way. The timing is a bit random, but if you can pull it off, it is very effective.
<div class="video">
  <video loop>
      <source src="/images/agar/counter_virus_ejection.webm" />
  </video>
  <p></p>
</div>

<!--12:17-->
 
### #10 Man-in-the-middle <span class='grey small'>applicability: 1, effectiveness: 5</span>
Staying in the middle of two big cells is a way to evade.
<div class="video">
  <video loop>
      <source src="/images/agar/man_in_the_middle.webm" />
  </video>
  <p></p>
</div>

<!--6:10-->
 
### #11 Good aiming <span class='grey small'>applicability: 1, effectiveness: 5</span>
Catching many cells in a single split
<div class="video">
  <video loop>
      <source src="/images/agar/good_aiming.webm" />
  </video>
  <p></p>
</div>

<!--12:05-->

### #12 Satellite cell <span class='grey small'>applicability: 1, effectiveness: 5</span>
When you have a small cell, you can use it to shoot into viruses, or eat them to catch a cell that is running away.
<div class="video">
  <video loop>
      <source src="/images/agar/satellite.webm" />
  </video>
  <p></p>
</div>

<!--12:23-->

### #13 Virus eating <span class='grey small'>applicability: 2, effectiveness: 4</span>
When there are not many cells around, you can eat viruses to gain mass. Because you have a maximum of 16 cells,
if you are big enough, after eating the first virus you will gain mass.
<div class="video">
  <video loop>
      <source src="/images/agar/virus_eating.webm" />
  </video>
  <p></p>
</div>

<!--2:01-->

### #14 Tugboat <span class='grey small'>[applicability: 3, effectiveness: 3</span>
This is about getting in a position where you have a small cell pushing a bigger cell, so that the bigger cell goes faster.
<div class="video">
  <video loop>
      <source src="/images/agar/tugboat.webm" />
  </video>
  <p></p>
</div>

<!--4:29, 14:46-->

### #15 Feed <span class='grey small'>applicability: 4, effectiveness: 4</span>
Feeding another player. The hard part is becoming friend with the other player, and making sure he doesn't betray you.
<div class="video">
  <video loop>
      <source src="/images/agar/feed1.webm" />
  </video>
  <p></p>
</div>

<!--2:22-->

### #16 Signaling friendship <span class='grey small'> [applicability: 2, effectiveness: 5]</span>
Feeding just one time is usually a way to communicate the desire to become friends
<div class="video">
  <video loop>
      <source src="/images/agar/signaling_friendship.webm" />
  </video>
  <p>Bloop, be my friend</p>
</div>

-----

<br/>

# Other techniques:
Some other techniques that I've seen or used, but I do not have footage for them.

### Bait <span class='grey small'>applicability: 1, effectiveness: 2</span>
If you follow some cells and they are running away, you can try to eject mass in their direction to lure them
back in. As they do, split to eat them. This will not work on experienced players as they will not fall in the trap.

### Defensive splitting <span class='grey small'>applicability: 2, effectiveness: 4</span>
If you are a single cell and an enemy cell splits on you, you can split away right the moment where the other player
splits, and you will stay alive with 50% of your
remaining mass.

### Gavage <span class='grey small'>applicability: 1, effectiveness: 5</span>
When you are pursuing an enemy cell, and it is about to evade by passing between a virus and an edge, you can give it mass
so that it becomes too big and cannot pass anymore.

---

<br/>

# Closing notes

I hope that you now have a better idea of the many varieties of techniques that are possible in agar.io.

The footage in this post is from a single agar session:

<iframe width="640" height="360" src="https://www.youtube.com/embed/bHXmLu8gRIQ" frameborder="0" allowfullscreen></iframe>