<div class="container">
<div class="row" style="padding-top: 50px;" >
		<div class="col-md-4 col-md-offset-1" style="width: 346px;">
			<div class="thumbnail" style="width: 326px;">
				<img src="${img}/products/${product.product_id}.png" alt="..." style="margin-left: 0px; margin-right: 0px; width: 100%">
			</div>
		</div>
		<div class="col-md-offset-1 col-md-6">
			<div class="caption">
				<h1>${product.product_name}</h1>
				<br>
				<h4>ABOUT THIS GAME</h4>
				<hr>
				<p>${product.product_description}</p>
				<br>

				<sec:authorize access="hasAuthority('customer') or isAnonymous()">
					<div class="row">
						<div class="col-md-6">
							<a href="${contextRoot}/user/cart/add/${product.product_id}"
								class="btn btn-warning" role="button"> <span
								class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
							</a> <a href="${contextRoot}/user/cart/add/${product.product_id}"
								class="btn btn-success" role="button">BUY NOW</a>
						</div>
						<div class="col-md-6">
							<h4>&#8377 ${product.product_price}</h4>
						</div>
					</div>
				</sec:authorize>
				<sec:authorize access="hasAuthority('admin')">
					<div class="row" items="${products}" var="product">
						<div class="col-md-5">
							<a href="${contextRoot}/admin/editproduct/${product.product_id}"
								class="btn btn-warning" role="button"> <span
								class="glyphicon glyphicon-pencil"></span> &nbsp; Edit
							</a> <a href="${contextRoot}/admin/deleteproduct/${product.product_id}"
								class="btn btn-danger" role="button"><span class="glyphicon glyphicon-trash"></span>&nbsp; Delete</a>
						</div>
						<div class="col-md-5 col-md-offset 2">
							<h4>&#8377 ${product.product_price}</h4>
						</div>
					</div>
				</sec:authorize>
			</div>

		</div>
	
</div>
</div>