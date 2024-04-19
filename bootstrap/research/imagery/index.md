---
layout: article
title: 'Imagery'
description: Still imagery collected by autonomous unmanned vehicles such as quadcopters and the SeaBED AUV provide a reliable and economically feasible source for both shallow and deep water reef biodiversity data. The Southern California Bight Marine Biodiversity Observation Network (SCB MBON) is developing methods in image analysis which couple user input with neural network machine learning methods, in order to maximize efficiency and accuracy in identification of marine taxa and physical factors within images.
---

<div class="row featurette">
	<div class="container">
		<h1 class="page-header">Imagery</h1>
		<div id="optical-imagery" class="internal-link"></div>
		<h4 class="text-muted">Shallow water</h4>
		<img class="featurette-image img-responsive" src="{{site.url}}/img/bgs/naple.jpg" alt="Generic placeholder image" style="float:right; PADDING-LEFT: 15px">
		<p>We use an SLR with a wide-angle lens mounted on a rigid-frame quadrapod to image shallow benthic and kelp forest communities at reef sites spanning the Southern California Bight — including several Channel Islands National Park monitoring sites — as well as seven offshore oil platforms.</p>
		<h4 class="text-muted">Deep water</h4>
		<p>Elizabeth Clarke, head of the AUV program at NOAA NMFS NWFSC in Seattle WA, has provided us with deep water imagery data collected with a SeaBED class autonomous underwater vehicle (AUV), which has surveyed the benthos in the Southern California Bight region. The SeaBED AUV is a hover-capable robotic vehicle that is able to work as close as 2m off the seafloor while maintaining precise altitude and navigation control. Its 2,000m depth rating makes it an ideal tool for conducting surveys of reef, shelf and deep slope habitats. Its small footprint allows it to be operated from platforms ranging from global class oceanographic research ships to small vessels of opportunity. The SeaBed AUV can carry a wide variety of optical, acoustic, and oceanographic sensors for non-extractive surveys of the benthic communities in habitats that are too deep for divers and surface acoustics and too rugose for towed camera sleds and traditional bottom trawling.</p>
		<p>Transects in the Southern California Bight were conducted on two seamounts known as the “Footprint” and “Piggy Bank.” The Piggy Bank is about 30 km<sup>2</sup> in area, ranging in depth from 275 to 900 meters; the Footprint Bank is about 10 km<sup>2</sup> in area, ranging in depth from 80 to 500 meters. The underwater visual surveys were planned to span from 400 m to the top of each seamount. The imagery includes stereo pairs that can be used to estimate size and biomass of organisms.</p>
		<div id="image-analysis" class="internal-link"></div>
		</div>
		<div class="container">
		<h3>Image Analysis</h3>
		<p>Imagery is very useful for underwater exploration and measurements, and is essential for recording biodiversity from 
		autonomous vehicles. However, most imagery is presently analyzed manually, which is time-consuming and expensive. We are 
		developing image analysis techniques targeted at underwater image classification on the operational level. Our main interest 
		is in finding techniques that can be trained automatically based only on provided training data, and thus can be deployed automatically 
		in our cloud-based image analysis and annotations system: <a href= "http://bisque.ece.ucsb.edu" target= "_blank"><strong><em>BisQue</em></strong></a>. 
		Such techniques must overcome the complexities inherent in the multitude of existing image feature descriptions and classifications techniques.</p>
		<img class="featurette-image img-responsive" src="{{site.url}}/img/All/bisque.png" alt="Generic placeholder image" style="float:right; PADDING-LEFT: 15px">
		<p>We began by exploring several feature aggregation techniques which allow for automated classification based on a large number of computable feature 
		descriptors and a distributed cloud based system, and have proposed and published in peer-reviewed conferences two novel techniques:
			<ul>
				<li>Feature aggregation based on a CRF modeling of feature dependencies</li>
				<li>K-NN classification using dropout regularization</li>
			</ul>
		</p>
		<p>During these studies we have used the extensive dataset of over 2000 underwater images acquired during the benthic field effort described above and manually annotated for percent coverage of sessile species in the <a href= "http://bisque.ece.ucsb.edu" target= "_blank"><strong>BisQue system.</strong></a> Each image contains 100 annotated locations amounting to 200K data points with over 30 species. We have obtained very encouraging results on automated identification of the 11 most abundant classes (over 80% of data points) with classification accuracy of over 85%.</p>
		<p>We further explored state of the art deep learning techniques using Convolutional Neural Networks on the same dataset and obtained comparable results. The primary advantage of these techniques is that CNN’s learn image features automatically, and operate directly on image pixels that can be efficiently accessed via the <a href= "http://bisque.ece.ucsb.edu" target= "_blank"><strong> BisQue system.</strong></a> A disadvantage of this technique is the computational complexity that requires use of the latest GPUs.</p>
	</div>
	<div class="col-md-5">
	</div>
</div>