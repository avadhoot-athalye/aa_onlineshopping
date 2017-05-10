<script src="${js}/angular.js"></script>
<script src="${js}/product.js"></script>

<div class="container">
	<div ng-app="productList" >
		<div style="padding-left: 75px;">
			<form>
				<div class="input-group col-md-10" >
					<input type="text" class="form-control" placeholder="Search for a game" ng-model="searchGame"/>
				</div>
			</form>
		</div>
	<br />
	
		<div ng-controller="productDetails" items="${products}" var="product" >
			<div class="thumbnail thumbnail-setting col-md-2"
				ng-repeat="product in products | filter:searchGame">
				<div class="wrapper">
					<a href="${contextRoot}/game/{{product.product_id}}"><img
						src="${img}/products/{{product.product_id}}.png"
						class="product_images" style="width: 180px; height: 225px;"></a>
					<sec:authorize access="hasAuthority('admin')">
						<a href="${contextRoot}/admin/editproduct/{{product.product_id}}"><span
							class="glyphicon glyphicon-pencil"></span>&nbsp;</a>
					</sec:authorize>
					<!-- <sec:authorize access="hasAuthority('customer')">
						<span class="glyphicon glyphicon-heart"></span>
					</sec:authorize> -->
				</div>
				<div class="caption ">
					<H6 class="text-center">
						<a ng-href="${contextRoot}/game/{{product.product_id}}"><b>{{product.product_name}}</b></a>
					</H6>
					<div class="row">
						<div class="col-md-6">
							<H4>
								<small>&#8377; {{product.product_price}}</small>
							</H4>
						</div>
						<sec:authorize access="hasAuthority('customer') or isAnonymous()">
							<div class="col-md-offset-2 col-md-2" data-toggle="tooltip" data-placement="bottom" title="Add to cart">
								<a href="${contextRoot}/user/cart/add/{{product.product_id}}" class="btn btn-default" role="button" > <span
									class="glyphicon glyphicon-shopping-cart" ></span>
								</a>
							</div>
						</sec:authorize>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>