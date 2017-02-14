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
					<a href="${contextRoot}/game/232"><img src="${img}/gta5.jpg"
						alt="Grand Theft Auto V"></a>
				</div>

				<div class="item">
					<a href="${contextRoot}/game/238"><img
						src="${img}/GodOfWar3.jpg" alt="GodOfWar3"></a>
				</div>

				<div class="item">
					<a href="${contextRoot}/game/235"><img
						src="${img}/AssasinCreed3.jpg" alt="AssasinCreed3"></a>
				</div>

				<div class="item">
					<a href="${contextRoot}/game/236"><img
						src="${img}/Fallout4.png" alt="Fallout4"></a>
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
	<div
		class="col-md-9 text-center special-banner img img-responsive hidden-xs">
		<img alt="" src="${img}/Banner.jpg">
	</div>
</div>


<!-- Thumbnail carousel starts here -->

<div class="page-header thumbnail-adjust no-padding font-style ">
	<h3 class="header-margin">Recommended</h3>
</div>

<div class="container">
	<div class="panel">
		<div class="row">

			<div class="col-sm-6 col-md-3">
				<div class="thumbnail thumbnail-set" style="width: 270px">
					<a href="${contextRoot}/game/240"><img
						src="${img}/products/240.png" alt="..." class="thubnail-feat "></a>
					<div class="caption text-center">
						<a href="${contextRoot}/game/240"><h3>Resident Evil 7</h3></a>
						<p>
							<sec:authorize access="hasAuthority('admin')">
							<a href="${contextRoot}/admin/editproduct/240"
								class="btn btn-warning" role="button"> <span
								class="glyphicon glyphicon-pencil"></span> &nbsp; Edit
							</a> <a href="${contextRoot}/admin/deleteproduct/240"
								class="btn btn-danger" role="button"><span class="glyphicon glyphicon-trash"></span>&nbsp; Delete</a>
							</sec:authorize>
							
							<!-- For user Add to cart button should be displayed -->
							<sec:authorize access="hasAuthority('customer') or isAnonymous()">
							<a href="${contextRoot}/user/cart/add/240"
								class="btn btn-primary" role="button"> <span
								class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
							</a> <a href="${contextRoot}/user/cart/add/240"
								class="btn btn-default" role="button">BUY NOW</a>
							</sec:authorize>
						</p>
					</div>
				</div>
			</div>

			<div class="col-sm-6 col-md-3 thumb-pad">
				<div class="thumbnail thumbnail-set" style="width: 270px">
					<a href="${contextRoot}/game/241"><img
						src="${img}/products/241.png" alt="..." class="thubnail-feat "></a>
					<div class="caption text-center">
						<a href="${contextRoot}/game/241"><h3>PREY</h3></a>
						<p>
							<sec:authorize access="hasAuthority('admin')">
							<a href="${contextRoot}/admin/editproduct/241"
								class="btn btn-warning" role="button"> <span
								class="glyphicon glyphicon-pencil"></span> &nbsp; Edit
							</a> <a href="${contextRoot}/admin/deleteproduct/241"
								class="btn btn-danger" role="button"><span class="glyphicon glyphicon-trash"></span>&nbsp; Delete</a>
							</sec:authorize>
							
							<!-- For user Add to cart button should be displayed -->
							<sec:authorize access="hasAuthority('customer') or isAnonymous()">
							<a href="${contextRoot}/user/cart/add/241"
								class="btn btn-primary" role="button"> <span
								class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
							</a> <a href="${contextRoot}/user/cart/add/241"
								class="btn btn-default" role="button">BUY NOW</a>
							</sec:authorize>
						</p>
					</div>
				</div>
			</div>

			<div class="col-sm-6 col-md-3 thumb-pad">
				<div class="thumbnail thumbnail-set" style="width: 270px">
					<a href="${contextRoot}/game/242"><img
						src="${img}/products/242.png" alt="..." class="thubnail-feat "></a>
					<div class="caption text-center">
						<a href="${contextRoot}/game/242"><h3>Hitman</h3></a>
						<p>
							<sec:authorize access="hasAuthority('admin')">
							<a href="${contextRoot}/admin/editproduct/242"
								class="btn btn-warning" role="button"> <span
								class="glyphicon glyphicon-pencil"></span> &nbsp; Edit
							</a> <a href="${contextRoot}/admin/deleteproduct/242"
								class="btn btn-danger" role="button"><span class="glyphicon glyphicon-trash"></span>&nbsp; Delete</a>
							</sec:authorize>
							
							<!-- For user Add to cart button should be displayed -->
							<sec:authorize access="hasAuthority('customer') or isAnonymous()">
							<a href="${contextRoot}/user/cart/add/242"
								class="btn btn-primary" role="button"> <span
								class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
							</a> <a href="${contextRoot}/user/cart/add/243"
								class="btn btn-default" role="button">BUY NOW</a>
							</sec:authorize>
							
						</p>
					</div>
				</div>
			</div>

			<div class="col-sm-6 col-md-3 thumb-pad">
				<div class="thumbnail"
					style="width: 270px; margin: 10px 5px 10px 0px;">
					<a href="${contextRoot}/game/243"><img
						src="${img}/products/243.png" alt="..." class="thubnail-feat "></a>
					<div class="caption text-center">
						<a href="${contextRoot}/game/243"><h3>Watch Dogs 2</h3></a>
						<p>
							<!-- For admin both edit and delete button should be displayed -->
							
							<sec:authorize access="hasAuthority('admin')">
							<a href="${contextRoot}/admin/editproduct/243"
								class="btn btn-warning" role="button"> <span
								class="glyphicon glyphicon-pencil"></span> &nbsp; Edit
							</a> <a href="${contextRoot}/admin/deleteproduct/243"
								class="btn btn-danger" role="button"><span class="glyphicon glyphicon-trash"></span>&nbsp; Delete</a>
							</sec:authorize>
							
							<!-- For user Add to cart button should be displayed -->
							<sec:authorize access="hasAuthority('customer') or isAnonymous()">
							<a href="${contextRoot}/user/cart/add/243"
								class="btn btn-primary" role="button"> <span
								class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
							</a> <a href="${contextRoot}/user/cart/add/243"
								class="btn btn-default" role="button">BUY NOW</a>
							</sec:authorize>
						</p>
					</div>
				</div>
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
					<a href="${contextRoot}/game/244"><img
						src="${img}/products/244.png" alt="..." class="best-sell"></a>
				</div>
				<div class="media-body">
					<a href="${contextRoot}/game/244"><h4
							class="media-heading header-margin">Final Fantasy XV</h4></a>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
						Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque
						penatibus et magnis dis parturient montes, nascetur ridiculus mus.
						Donec quam felis, ultricies nec, pellentesque eu, pretium quis,
						sem.</p>
				</div>
			</div>
			<div class="media panel">
				<div class="media-left">
					<a href="${contextRoot}/game/245"><img
						src="${img}/products/245.png" alt="..." class="best-sell"></a>
				</div>
				<div class="media-body">
					<a href="${contextRoot}/game/245"><h4
							class="media-heading header-margin">Call Of Duty: Infinite
							Warfare</h4></a>
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
					<a href="${contextRoot}/game/246"><img
						src="${img}/products/246.png" alt="..." class="best-sell"></a>
				</div>
				<div class="media-body">
					<a href="${contextRoot}/game/246"><h4
							class="media-heading header-margin">Dishonored 2</h4></a>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
						Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque
						penatibus et magnis dis parturient montes, nascetur ridiculus mus.
						Donec quam felis, ultricies nec, pellentesque eu, pretium quis,
						sem.</p>
				</div>
			</div>
			<div class="media panel">
				<div class="media-left">
					<a href="${contextRoot}/game/247"><img
						src="${img}/products/247.png" alt="..." class="best-sell"></a> </a>
				</div>
				<div class="media-body">
					<a href="${contextRoot}/game/247"><h4
							class="media-heading header-margin">Dragon Ball Xenoverse</h4></a>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
						Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque
						penatibus et magnis dis parturient montes, nascetur ridiculus mus.
						Donec quam felis, ultricies nec, pellentesque eu, pretium quis,
						sem.</p>
				</div>
			</div>
		</div>
	</div>
</div>