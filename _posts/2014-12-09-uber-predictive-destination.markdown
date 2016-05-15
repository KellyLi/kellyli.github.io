---
layout: post
title: "Uber Destination Prediction"
css-class: uber_predictive_destination
permalink: uber-predictive-destination
---
<div class='block_container text_align_center'>
		<h1>Uber Destination Prediction</h1>
		<h2>One tap destination entry powered by machine learning</h2>
		<div class='divider'></div>
</div>
<section class='block_container'>
	<figure class='hero_image'>
		<img src='/img/destination_prediction_full.png'>
	</figure>
	<div>
		<h3>Quick Destination Entry</h3>
		<p>Destination entry is difficult on mobile keyboards. Regular commuters have to power through the ride request flow daily, and the added friction of destination entry makes the process tiresome overtime.</p>
		<p>Based on historic trip data, Uber can predict whether a rider is going to work or home with a fairly high degree of accuracy. With destination prediction, Uber can do the repetitive for regular commuters and allow the rider to enter the destination with just one tap.</p>
	</div>
	<h3>Designing for Uncertainty</h3>
	<p>During the design process, it was essential to consider the limitations of the machine learning model. The confidence interval of the predictive model must be taken into account of the design, and the feature must fail gracefully when the prediction is incorrect. The best solution should feel magical when the model is correct, and should never make the user frustrated when the model fails.</p>
	<div class='flex_container space_between solns'>
		<div class='soln'>
			<img src='/img/least_intrusive.png'>
			<p><em><strong>Least Intrusive</strong><br>Show prompt post request</em></p>
		</div>
		<div class='soln'>
			<img src='/img/more_intrusive.png'>
			<p><em><strong>More Intrusive</strong><br>Show non blocking prompt upfront</em></p>
		</div>
		<div class='soln'>
			<img src='/img/most_intrusive.png'>
			<p><em><strong>Most Intrusive</strong><br>Show blocking prompt upfront</em></p>
		</div>
	</div>
	<p>The variant showing the prompt post request would potentially miss the users who put away their phone post request, and the blocking prompt would create a very high friction experience if the  prediction were incorrect. The variant with the non block prompt upfront was chosen as the final design as it is unintrusive yet helpful, and has the potential to reach the most riders at the top of the funnel. </p>
</section>

