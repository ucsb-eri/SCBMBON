---
layout: article 
title: 'News Page'
description: Blog pages for news and other happening around SCB MBON 
---
<div class="container" id="landing-content">
	<div class="col-lg-12">
			<h1>SCB MBON News.</h1>
			<img class="featurette-image img-responsive center-block" src="{{site.url}}/img/news/oilrigimaging.jpg" alt="Generic placeholder image" style="float:right; PADDING-LEFT: 15px">
	<hr>
			
	<p><font size="3px">SCB MBON researchers and projects are distributed throughout the Southern California Bight. Check out what our researchers are doing and learn about other happenings within SCB MBON.</font></p>
<br>
<ul><font size="3px">
  {% for post in site.posts %}
    <li><a href="{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</font></ul>

</div>
