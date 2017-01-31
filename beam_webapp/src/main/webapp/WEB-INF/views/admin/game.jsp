<div class="row col-mad-12">

	<div>
		<div class="col-md-4 body">
			<div class="thumbnail">
				<img src="${img}/products/${product.product_id}.png" alt="...">
			</div>
		</div>
		<div class="col-md-offset-1 col-md-7 body">
			<div class="caption">
				<h1>${product.product_name}</h1>
				<br>
				<h4>ABOUT THIS GAME</h4>
				<hr>
				<p>${product.product_description}</p>
				<br>

				<div class="row col-md-12">
					<div class="col-md-5">
						<a href="${contextRoot}/user/cart/add/${product.product_id}" class="btn btn-warning" role="button"> <span
							class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
						</a> <a href="${contextRoot}/user/cart/add/${product.product_id}" class="btn btn-success" role="button">BUY NOW</a>
					</div>
					<div class="col-md-5 col-md-offset 2">
						<h4>&#8377 ${product.product_price}</h4>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>