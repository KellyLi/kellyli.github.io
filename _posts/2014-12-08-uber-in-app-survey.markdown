---
layout: post
title: "Uber:In App Survey"
work-title:  "Uber:In App Survey"
subtitle: "Perfecting the pickup"
date:   2014-12-08 22:34:49
categories: jekyll update
img_url: uber_inapp_survey
css-class: inapp-survey
permalink: inapp-survey
---
<section>
  <p>
    Taken from my post on 
    <a href="http://productupdates.quora.com/Your-Quora-feed-making-it-easier-to-see-your-connection-to-stories" target='_blank'> Quora Product Updates blog </a>:
  </p>
  <p>
    In your Quora feed, we want to explain why a story is relevant to you -- whether it's related to a topic you like, people you're following, or both.
  </p>
  <p>
    We've updated the way stories in feed look so you can easily see your connection to them. Peoples' names are now shown alongside their profile photos, and topic names are more visually prominent.
  </p>

</section>

<figure>
  <img src="{{'/img/feed_reasons.png' | prepend: site.baseurl}}" alt="Quora feed reasons">
</figure>

<section>
<p>
  The challenge of designing the feed reasons lies in how to present all the information associated with a story in a succinct manner (especially important for mobile) that is easily scannable. After many iterations, I've decided on a format that consists of the following components: 
</p>

<ul>
  <li><strong>Topic</strong> - Provides context for the story. Quora shows you stories based on topics you follow, visually highlighting these topics and putting them at the front of the story makes this system more apparent.</li>
  <li><strong>Upvotes by friends</strong> - Social proof provides incentive for the user to engage with the story. Our data also shows that users are most likely to engage with a story when there is both social connection and connection to a topic that they are following.</li>
  <li><strong>Timestamp</strong> - Showing the timestamp makes the Quora community feel active, and recency is an important factor for writers when it comes to answering questions.</li>
</ul>

<p>
  Although the project was called <em>feed</em> reasons, this component is actually used all throughout the product- on user profiles, question feeds, topic feeds, etc. By following a carefully thought out pattern when displaying these reasons, stories can appear consistent throughout Quora, making it easy for users to quickly gain context, where ever they are.
</p>
</section>

<div class="CTA">
  <a href="https://quora.com" target='_blank'> Quora user? See it in action </a>
</div>