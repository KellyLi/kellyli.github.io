---
layout: post
title: "Uber Capacity Tracking"
permalink: uber-capacity
css-class: uber_capacity
---
<div class='content-wrapper'>
	<section class="intro">
		<h2>Uber</h2>
		<h1>Uber Capacity Handling</H1>
		<p>Tracking butts in seats to enable 3 party uberPOOl rides</p>
	</sectION>
</div>
<img class="full_bleed" src="/img/uber_capacity_cover.png"/>

<div class='content-wrapper'>
	<div class="summary left_col">
		<h3>To enable 3-party uberPOOL rides, I designed a system that would allow Uber to have an accurate understanding of how many people are in a vehicle.</h3>
		<tabLe>
			<tr>
				<th>role</th>
				<th>product designer</th>
			</tr>
			<tr>
				<th>Team</th>
				<th>Mentor, PM, 2 Engineers</th>
			</tr>
			<tr>
				<th>Tools</th>
				<th>Sketch</th>
			</tr>
			<tr>
				<th>Timeline</th>
				<th>2 weeks</th>
			</tr>
		</table>
	</div>
	<div class="main_body right_col">
		<h4 class="margin_top_none">Background and Problem</h4>
		<div class="h-divider"></div>
		<p>In order to add a third pickup to POOL rides, Uber needs to get an understanding of how many people are being picked up at each stop. Capacity Handling will allows the system to track if each pickup has 1 person or 2 people.</p>

		<p>People may either accidentally or purposefully select 1 rider, but then actually have 2+ people. Uber need to catch this use case and offer some forgiveness in the system.</p>
		<h4>Solution: Error Handling</h4>
		<div class="h-divider"></div>
		<p>The system needs to take into account situations where the user under selects the number of passengrs and the planned uberPOOL trip cannot be completed. How should the system react if the first or second party enters 1 passenger but brings 2 instead?</p>
		<p>We need to protect both the driver and rider in this situation, and it’s best to avoid face-to-face confrontation between the driver and rider at the cost of redispatching the third pickup. In the situation below, although the 2nd party misentered the number of passengers, it puts up too much pressure on the driver to tell the 2 passengers, in person, that they cannot be picked up. The best recovery would be to pickup the 2 passengers and redispatch the 3rd pickup.</p>
	</div>
	<img src="/img/uber_capacity_2.png" class="full_bleed"/>
	<div class='desktop_only left_col'></div>
	<div class='main_body right_col'>
		<p>When the driver changes the number of passengers, the rider is also informed, with clear copy telling the user that if the driver made an incorrect selection, there is support available.</p>
	</div>
	<img src="/img/uber_capacity_3.png" class="full_bleed"/>
	<div class='main_body'>
		<h4>Testing Driver Behaviour</h4>
	</div>
	<img src="/img/uber_capacity_4.png" class="full_bleed"/>
	<div class='desktop_only left_col'></div>
	<div class='main_body right_col'>
		<p>In the initial design of the toggle, the user selection was shown to the driver in the interest of reducing the amount of work needed from the driver. However, we were unsure whether drivers would be comfortable changing the user's input. Therefore, 2 version of the toggle were designed, where version A defaults the toggle to what the user selected, and version B requires the driver to enter the number of passengers at every pick up. If the mismatch rate between rider entry and driver entry is significantly higher in version B, then we know that drivers are resistant to changing rider entry.</p>
	</div>
</div>

