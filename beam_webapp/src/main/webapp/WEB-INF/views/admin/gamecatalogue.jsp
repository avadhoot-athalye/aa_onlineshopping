
<div class="row basic-setting">

	<%@include file="../share/featured & Recommeded.jsp"%>

	<div class="panel col-md-9 ">
		
			<div class="thumbnail thumbnail-setting col-md-4">
				<div class="wrapper">
					<img src="http://placehold.it/180x215">
					<sec:authorize access="hasAuthority('admin')">
						<span class="glyphicon glyphicon-pencil"></span>
					</sec:authorize>
					<sec:authorize access="hasAuthority('customer')">
						<span class="glyphicon glyphicon-heart"></span>
					</sec:authorize>
				</div>
				<div class="caption ">
					<H4 class="text-center">
						<small>GAME TITLE</small>
					</H4>
					<div class="row">
						<div class="col-md-5">
							<H4>
								<small>&#8377 1200</small>
							</H4>
						</div>
						<sec:authorize access="hasAuthority('customer') or isAnonymous()">
							<div class="col-md-offset-3 col-md-2">
								<a href="#" class="btn btn-default" role="button"> <span
									class="glyphicon glyphicon-shopping-cart"></span>
								</a>
							</div>
						</sec:authorize>
					</div>
				</div>
			</div>
		
	</div>
	<!-- Row 3 ended here -->
</div>
</div>