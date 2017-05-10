<script src="${js}/angular.js"></script>
<script src="${js}/cart.js"></script>



<div class="container" style="padding-top: 25px;" ng-app="cart"
	ng-controller="cal" ng-init="fetchCartItems()">

	<!-- If cart is empty show this message -->
	<div ng-if="isEmpty">
		<div class="panel">
			<div style="margin-top: 200px; margin-bottom: 200px;">
				<h1 class="text-center">Your cart is empty..</h1>
				<h1 class="text-center">Add a product right now!</h1>
				<div class="text-center" style="padding-top: 20px;">
					<a class="btn btn-primary text-center" type="submit"
						href="${contextRoot}/games/all">ADD PRODUCT</a>
				</div>
			</div>
		</div>
	</div>

	<!-- If cart items exist show cart here -->

	<div ng-if="!isEmpty" class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading"
			style="font-size: 25px; text-align: center; background-color: #3e3f3a; color: #fff;">IN
			YOUR CART</div>

		<!-- Cart starts here -->
		<table class="table table-hover">

			<thead>
				<tr>
					<th>PRODUCT DETAILS</th>
					<th>QUANTITY</th>
					<th>PRICE</th>
					<th>TOTAL PRICE</th>
					<th>TOOLS</th>
				</tr>
			</thead>


			<tbody>

				<tr ng-repeat="Item in cartItems">

					<!-- Product Image and name is here -->
					<td>
						<div class="clearfix float-my-children">
							<a ng-href="${contextRoot}/game/{{Item.product.product_id}}"><img
								class="img img-responsive cartImage" alt=""
								ng-src="${img}/products/{{Item.product.product_id}}.png"></a>
							<!-- <h4 style="padding-left: 10px;">Need for Speed Most Wanted</h4> -->
							<a ng-href="${contextRoot}/game/{{Item.product.product_id}}"
								style="padding-left: 10px;">{{Item.product.product_name}}</a>
						</div>
					</td>

					<!-- Quantity demanded is here -->
					<td><input id="{{Item.id}}" type="number" min="1" max="10"
						ng-model="Item.quantity" ng-change="update(Item)"></td>

					<!-- Product price is here -->
					<td>{{Item.product.product_price }} &#8377;</td>

					<!-- Total price is here -->
					<td>{{Item.totalPrice}} &#8377;</td>


					<!-- Options to remove cart item or to move to wishlist is here -->
					<td>
						<div class="clearfix float-my-children">
							<a href="${contextRoot}/user/cart/delete/{{Item.id}}"
								class="btn btn-danger" data-toggle="tooltip"
								data-placement="bottom" title="Move to Wishlist"><span
								class="glyphicon glyphicon-heart"></span></a> <a
								href="${contextRoot}/user/cart/delete/{{Item.id}}"
								class="btn btn-primary" data-toggle="tooltip"
								data-placement="bottom" title="Remove"><span
								class="glyphicon glyphicon-trash"></span></a>
						</div>
					</td>
				</tr>

			</tbody>
		</table>

		<div class="panel-footer text-right"
			style="font-size: 25px; background-color: #3e3f3a; color: #fff; padding-right: 50px;">AMOUNT
			DUE : {{grandTotal}} &#8377;</div>

		
	</div>
	
	<div class="row">
			<div class="col-md-2">
				<a class="btn btn-primary special-banner"
					href="${contextRoot}/games/all" role="navigation"> <span
					class="glyphicon glyphicon-arrow-left "></span>&nbsp;Continue
					Shopping
				</a>
			</div>


			<div class="col-md-offset-8 col-md-2">
				<div class="Text-container">
					<a class="btn btn-success special-banner"
						href="${contextRoot}/confirmDetails" role="button">Checkout&nbsp;<span
						class="glyphicon glyphicon-arrow-right"></span>
					</a>
				</div>
			</div>

		</div>
</div>