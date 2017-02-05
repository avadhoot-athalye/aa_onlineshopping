<script src="${js}/angular.js"></script>
<script src="${js}/product.js"></script>
<div class="row basic-setting">

	<%@include file="../share/featured & Recommeded.jsp"%>

	<form>
		<div class="input-group">
			<input type="text" class="form-control"
				placeholder="Search for a product">
			<div class="input-group-btn">
				<button class="btn btn-default" type="submit">
					<i class="glyphicon glyphicon-search"></i>
				</button>
			</div>
		</div>
	</form>
	<br />
	<div class="panel col-md-9 gamelist" ng-app="productList">

		<div ng-controller="productDetails" items="${products}" var="product">
			<div class="thumbnail thumbnail-setting col-md-4"
				ng-repeat="product in products">
				<div class="wrapper">
					<a href="${contextRoot}/game/{{product.product_id}}"><img
						src="${img}/products/{{product.product_id}}.png"
						class="product_images"></a>
					<sec:authorize access="hasAuthority('admin')">
						<a
							href="${contextRoot}/admin/editproduct/{{product.product_id}}"><span
							class="glyphicon glyphicon-pencil"></span>&nbsp;</a>
					</sec:authorize>
					<sec:authorize access="hasAuthority('customer')">
						<span class="glyphicon glyphicon-heart"></span>
					</sec:authorize>
				</div>
				<div class="caption ">
					<H4 class="text-center">
						<small><a ng-href="${contextRoot}/game/{{product.product_id}}"><b>{{product.product_name}}</b></a></small>
					</H4>
					<div class="row">
						<div class="col-md-4">
							<H4>
								<small>&#8377{{product.product_price}}</small>
							</H4>
						</div>
						<sec:authorize access="hasAuthority('customer') or isAnonymous()">
							<div class="col-md-offset-4 col-md-2">
								<a href="${contextRoot}/user/cart/add/{{product.product_id}}" class="btn btn-default" role="button"> <span
									class="glyphicon glyphicon-shopping-cart"></span>
								</a>
							</div>
						</sec:authorize>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Row 3 ended here -->
</div>
</div>