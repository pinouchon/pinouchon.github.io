now = Time.now
til_id = `ls _tils/*TIL*`.split("\n")[-1][/TIL(\d+)/, 1].to_i + 1

title = "_tils/#{now.strftime('%Y-%m-%d')}-TIL#{til_id}.markdown"
content = <<-CONTENT
---
layout: post
title:  "TIL##{til_id}"
date:   #{Time.now.strftime('%Y-%m-%d %H:%M:%S')}
categories: til
---

Summary of today:
Thoughts:
 -  
 
Things:
 -
CONTENT

File.open(title, 'w') do |f|
  f.write(content)
end