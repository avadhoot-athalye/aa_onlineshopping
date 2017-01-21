<c:if test="${not empty msg }">
	<div class="alert alert-success alert-dismissible">
		<button type="button" class="close" data-dismiss="alert"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
		${msg}
	</div>
</c:if>

<div class=" font-style">
	<h3 class="header-margin">Featured & Popular</h3>
</div>
<div class="row div-featured ">

	<%@include file="../share/featured & Recommeded.jsp"%>

	<div class="col-md-9">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active img img-responsive">
					<img src="${img}/gta5.jpg" alt="Grand Theft Auto V">
				</div>

				<div class="item">
					<img src="${img}/GodOfWar3.jpg" alt="GodOfWar3">
				</div>

				<div class="item">
					<img src="${img}/AssasinCreed3.jpg" alt="AssasinCreed3">
				</div>

				<div class="item">
					<img src="${img}/Fallout4.png" alt="Fallout4">
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<!--Carousal ends -->

	</div>
	<div class="col-md-9 text-center special-banner img img-responsive hidden-xs">
		<img alt="" src="http://placehold.it/817x150">
	</div>
</div>


<!-- Thumbnail carousel starts here -->

<div class="page-header thumbnail-adjust no-padding font-style ">
	<h3 class="header-margin">Recommended</h3>
</div>

<div class="container">
	<div class="row">
		<div class="span12">
			<div class="well">
				<div id="myCarousel" class="carousel fdi-Carousel slide">
					<!-- Carousel items -->
					<div class="carousel fdi-Carousel slide" id="eventCarousel"
						data-interval="0">
						<div class="carousel-inner onebyone-carosel">
							<div class="item active">
								<div class="col-md-4">
									<a href="#"><img src="http://placehold.it/250x250"
										class="img-responsive center-block"></a>
									<div class="text-center">1</div>
								</div>
							</div>
							<div class="item">
								<div class="col-md-4">
									<a href="#"><img src="http://placehold.it/250x250"
										class="img-responsive center-block"></a>
									<div class="text-center">2</div>
								</div>
							</div>
							<div class="item">
								<div class="col-md-4">
									<a href="#"><img src="http://placehold.it/250x250"
										class="img-responsive center-block"></a>
									<div class="text-center">3</div>
								</div>
							</div>
							<div class="item">
								<div class="col-md-4">
									<a href="#"><img src="http://placehold.it/250x250"
										class="img-responsive center-block"></a>
									<div class="text-center">4</div>
								</div>
							</div>
							<div class="item">
								<div class="col-md-4">
									<a href="#"><img src="http://placehold.it/250x250"
										class="img-responsive center-block"></a>
									<div class="text-center">5</div>
								</div>
							</div>
							<div class="item">
								<div class="col-md-4">
									<a href="#"><img src="http://placehold.it/250x250"
										class="img-responsive center-block"></a>
									<div class="text-center">6</div>
								</div>
							</div>
						</div>
						<a class="left carousel-control" href="#eventCarousel"
							data-slide="prev"></a> <a class="right carousel-control"
							href="#eventCarousel" data-slide="next"></a>
					</div>
					<!--/carousel-inner-->
				</div>
				<!--/myCarousel-->
			</div>
			<!--/well-->
		</div>
	</div>
</div>




<div class="page-header thumbnail-adjust no-padding font-style ">
	<h3 class="header-margin">Best-seller</h3>
</div>
<div class="row bottom-featured-game">
	<!-- Left side featured games -->
	<div class="col-md-6">
		<div class="media panel">
			<div class="media-left">
				<a href="#"> <img class="media-object"
					src="http://placehold.it/150x150" alt="...">
				</a>
			</div>
			<div class="media-body">
				<h4 class="media-heading header-margin">GAME TITLE</h4>
				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
					Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque
					penatibus et magnis dis parturient montes, nascetur ridiculus mus.
					Donec quam felis, ultricies nec, pellentesque eu, pretium quis,
					sem.</p>
			</div>
		</div>
		<div class="media panel">
			<div class="media-left">
				<a href="#"> <img class="media-object"
					src="http://placehold.it/150x150" alt="...">
				</a>
			</div>
			<div class="media-body">
				<h4 class="media-heading header-margin">GAME TITLE</h4>
				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
					Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque
					penatibus et magnis dis parturient montes, nascetur ridiculus mus.
					Donec quam felis, ultricies nec, pellentesque eu, pretium quis,
					sem.</p>
			</div>
		</div>
	</div>

	<!-- Right side featured games -->
	<div class="col-md-6">
		<div class="media panel">
			<div class="media-left">
				<a href="#"> <img class="media-object"
					src="http://placehold.it/150x150" alt="...">
				</a>
			</div>
			<div class="media-body">
				<h4 class="media-heading header-margin">GAME TITLE</h4>
				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
					Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque
					penatibus et magnis dis parturient montes, nascetur ridiculus mus.
					Donec quam felis, ultricies nec, pellentesque eu, pretium quis,
					sem.</p>
			</div>
		</div>
		<div class="media panel">
			<div class="media-left">
				<a href="#"> <img class="media-object"
					src="http://placehold.it/150x150" alt="...">
				</a>
			</div>
			<div class="media-body">
				<h4 class="media-heading header-margin">GAME TITLE</h4>
				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
					Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque
					penatibus et magnis dis parturient montes, nascetur ridiculus mus.
					Donec quam felis, ultricies nec, pellentesque eu, pretium quis,
					sem.</p>
			</div>
		</div>
	</div>
</div>