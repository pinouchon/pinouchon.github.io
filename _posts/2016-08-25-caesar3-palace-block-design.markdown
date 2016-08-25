---
layout: post
title:  "Closed-loop palace block designs in caesar3"
date:   2016-08-25 18:00:00
categories: caesar3
---
 
Good housing block design is key to a prosperous city. A few tips about designing such blocks can be found 
[here](https://web.archive.org/web/20060712061659/http://caesaralan.co.uk/strategy.html#housing) and 
[here](http://caesar3.heavengames.com/strategy/housing/index.shtml). 
In this post I'll list some palace blocks: blocks where the 
[housing level](http://gaming.stackexchange.com/questions/282520/housing-steps-and-requirements-in-caesar-3)
 is luxury palace only.

A couple of notes:

# What constitutes a good block?
 - stability: housing must be rock-solid and never devolve
 - number of palaces: the block must accomodate for the maximum number of palaces
 - simplicity: the block must be easy to remember
 - cost: the block must be as cheap as possible to build (few expensive buildings, and less buildings overall)
 - footprint: Palace blocks tend to be very big. The block must be as small as possible otherwise it wont fit anywhere

# Generalities about palace design

Any block, however sophisticated, have to meet some hard constraints. These are:

 - 4 1x1 services buildings: The block must contain at least one prefecture, engineer post, barber and doctor. The prefecture is not mandatory for nordic climates.
 - 8 2x2 services buildings, excluding markets: 3 different temples, one forum, one theatre, one bath, one library, one school. The forum is not strictly necessary and may be replaced with a senate. The school may have to be doubled because its walkers cover less distance.
 - 3-6 markets. A good rule of thumb is one market per 2-3 palaces.
 - 5 3x3 services buildings: one amphitheater, one gladiator school, one lion house, one hospital, one academy.
 - 5x5 and 5x15 services buildings: one coliseum and one hippodrome.

I'll consider mostly closed-loop designs (but other road patterns are possible such as forced-walkers blocks). In a closed-loop design, the road must be a loop with the entrance guarded by a gatehouse. The road must not be too long. 54 tiles and below is considered safe. 54 to 60 is considered a bit risky. Above 60 tiles walker problems stars to appear consistently. In my experience, I never had problems with a 60 tile loop, though I would not recommend going any higher.

# A note about optimisation

All the blocks posted by myself are either mine or the author I mention, but in any case they have been crafted manually. I have not tried to automatically engineer/optimise a housing block. Methods that come to mind are genetic algorithms and simulated annealing. If anyone give this a try I would love to see the results.

# A note about statues and governor palaces

Big statues in caesar3 are overpowered. All efficient blocks make heavy use of big statues to the detriment of governor palaces and villas. As much as I tried, trying to fit a governor palace or villa always yields an inferior design. There is one exception with a variation of the speedrun-12 block (see below). In the general case, governor palaces are like your ex-girlfriend: pretty, but seldom useful.

# A note about oracles and triumphal archs

I completely avoid the use of triumphal archs (because are not available in every mission), but keep in mind that you can replace any big statue with an arch if you so desire, they generate much more desirability. I try to avoid oracles because they require marble, but you can often replace them with small temples or medium statues and compensating the lack of desirability with new buildings.

# A note about markets and goods distribution

In order to make markets more efficient, it is better to have 3 granaries with one food type in each. The granaries
should be placed as close as possible to the gatehouse. The warehouse can be a little further since the market
lady makes thips to the warehouses less often.

# A final note

Every design fall into one or few classes. They can be:

 - Fountain efficient. Good: one fountain for 4 palaces. Bad: one fountain for 3 palaces
 - Statue/oracle efficient: Good: 1.2 statue or oracle per palace. Bad: 2 statue or oracle per palace
 - Tile efficient: Few tiles of road wasted with no housing or service on each side. Good: 1 tile wasted. Bad: 10 tiles wasted.

Tile efficiency can also be achieved by putting large buildings (4x4, 5x5, 5x15) on corners. 
Fun-fact: I think there is a fundamental limit in closed-loop palace block optimisation. In order to be statue-efficient, a block must have statues with palaces on each side, which means that palaces must be inside the loop. In order to be tile-efficient, a block must have palaces outside the loop. So a block cannot be statue-efficient and tile-efficient at the same time, some efficiency aspect has to give. It is very interesting to analyse each block and compare the tradeoffs made by each.

<br/>

---
---
---
<br/>

# Speedrun-12

My original drive for designing palace blocks was because I was doing a speedrun of the game. 
I wanted to have a few good blocks to pick from. This is the block that I ended up choosing on 
every single map that needed palaces for my speedrun.

It features 12 palaces in a very symmetric, simple and efficient layout. Many variations are possible (see below)

<div class="image">
  <img src="/images/caesar3/speedrun12.png" alt=""/>
</div>

#### Characteristics:
 - number of palaces: 12
 - statues: 12, oracles: 2. statue efficiency: 1.17 (1.17 statues or oracle for each palace, the best I have achieved)
 - loop length: 60, tile efficiency: -10 (10 tiles adjacent to something else than a house or service)
 - fountains: 3, statue efficiency of 4 (4 palaces for every fountain)

#### Pros:
 - very simple and easy to remember
 - many variations are possible
 - very small footprint for 12 palaces
 - no empty tile  inside the loop

#### Cons:
 - 12 palaces is sometimes unnecessary
 - desirability sometimes is barely enough to get luxury palaces. In this case, simply add a big statue on either side.

#### Variations
 - Palaces H1 and H2 can be replaced with a governor villa to make sure desirability is enough. If you do so, you can replace the oracles with medium statues or small temples. You can also remove statues S1 S2 S3 S4.
 - On desert climate, simply add fountains to the right and left of the center fountain, and move the reservoir closer one tile (you can place it right to the right school).
 - This design can be made smaller by having only 4 or 6 palaces in the inner loop, instead of 8
  
<br/>

---
<br/>


# Centric-14

<div class="image">
  <img src="/images/caesar3/centric14.png" alt=""/>
</div>

#### Characteristics:
 - number of palaces: 14
 - statues: 30 statue efficiency: 2.14 (2.14 statues or oracle for each palace)
 - loop length: 54, tile efficiency: -1 (best that I know of)
 - fountains: 5, fountain efficiency of 2.8 (2.8 palaces for every fountain)

#### Pros:
 - good tile efficiency; good number of palaces for the loop length
 
#### Cons:
 - non-symetric; a bit complex to remember
 - lots of statues and large footprint
  
<br/>

---
<br/>



# Classic-13

One of the very first blocks I came up with. Later dethroned by the smaller speedrun-12.

<div class="image">
  <img src="/images/caesar3/classic13.png" alt=""/>
</div>

#### Characteristics:
 - number of palaces: 13
 - statues: 28 statue efficiency: 2.15 (2.15 statues or oracle for each palace)
 - loop length: 54, tile efficiency: -6 (6 tiles adjacent to statues)
 - fountains: 3, fountain efficiency of 4.33 (4.33 palaces for every fountain)

#### Pros:
 - relatively simple and easy to remember
 
#### Cons:
 - very long. Hard to fit on many maps

  
<br/>

---
<br/>



# Speedrun-8



<div class="image">
  <img src="/images/caesar3/speedrun8.png" alt=""/>
</div>

#### Characteristics:
 - number of palaces: 8
 - loop length: 56

  
<br/>

---
<br/>




# Caesar-Alan-8

[Found here](http://caesar3.heavengames.com/cgi-bin/forums/display.cgi?action=ct&f=2,1253,3250,all)

<div class="image">
  <img src="/images/caesar3/caesaralan8.png" alt=""/>
</div>

#### Characteristics:
 - number of palaces: 8
 - loop length: 58

  
<br/>

---
<br/>




# Brugle-6

A well known block by Brugle featuring 6 palaces.

Keep in mind that this block only has 4 of the 5 3x3 services buildings (in orange). So you will have to
build a lion house or a gladiator school outside the block.

Also found [here](http://caesar3.heavengames.com/cgi-bin/forums/display.cgi?action=ct&f=2,1248,3325,all)

<div class="image">
  <img src="/images/caesar3/brugle6.png" alt=""/>
</div>
    
#### Characteristics:
 - number of palaces: 6
 - loop length: 48

<br/>

---
<br/>




