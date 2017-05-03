---
layout: post
title:  "How to disable the youtube overlay when pausing the video"
date:   2017-05-03 21:00:00
categories: youtube tips
---

Recently, youtube has released this horrendous feature:

<div class="image">
  <img src="/images/youtube-horrendous-overlay.png" alt="" style="width: 400px"/>
  <p>Seriously? Words cannot describe my feelings about this</p>
</div>

Luckily, you can disable this in a few simple steps:

 - Go to the chrome web store and [search for ublock origin](https://chrome.google.com/webstore/search/ublock%20origin)
 - Install it by clicking the `Add to chrome` button
 - Once installed, go to the settings of the extension by clicking extension icon, then the wrench icon:
 
 <div class="image">
   <img src="/images/ublock-settings.png" alt="" style="height: 400px"/>
 </div>

  <br/>
 - Then go to the `My filters` tab and paste the following: `##.ytp-pause-overlay` 
  <div class="image">
    <img src="/images/ublock-settings2.png" alt="" style="width: 750px"/>
  </div>

  <br/>
 - Open a [youtube video and pause it](https://www.youtube.com/watch?v=_OBlgSz8sSM). The overlay should not appear.

Credits to [this reddit thread](https://www.reddit.com/r/youtube/comments/5zlyt6/is_there_any_way_to_disable_this_new_feature/)