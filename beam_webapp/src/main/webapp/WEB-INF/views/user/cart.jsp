<script src="${js}/angular.js"></script>
<script src="${js}/cart.js"></script>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div ng-app="cart" ng-controller="cal" ng-init="fetchCartItems()">

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
	<div ng-if="!isEmpty" class="container">
		<div class="page-header">
			<div class="row">
				<div class="text-center header-sign-up">
					<h1>In your cart right now..</h1>
					<br>
				</div>

			</div>
			<div>
				<div class="row col-md-12 col-xs-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<div class="panel-title">
								<div class="row">
									<div class="col-md-4 col-xs-4">
										<h4>Product Details</h4>
									</div>
									<div class="col-md-offset-3 col-md-2 col-xs-offset-3 col-xs-2">
										<h4>Per Unit</h4>
									</div>
									<div class=" col-md-2 col-xs-2">
										<h4>Total Amount</h4>
									</div>
								</div>
							</div>
						</div>
						<!-- Panel Body starts here -->

						<div ng-repeat="Item in cartItems">
							<div class="panel-body">
								<div class="row">

									<!-- Product Image will come here -->
									<div class="col-md-2 col-xs-12">
										<a ng-href="${contextRoot}/game/{{Item.product.product_id}}"><img
											class="img img-responsive cartImage" alt=""
											ng-src="${img}/products/{{Item.product.product_id}}.png"></a>
									</div>

									<!-- Product name will come here -->
									<div class="col-md-3 col-xs-12">
										<a ng-href="${contextRoot}/game/{{Item.product.product_id}}"><strong>{{Item.product.product_name}}</strong></a>
									</div>

									<!-- Quantity is added here -->
									<div class="col-md-2 col-xs-12">
										<input id="{{Item.id}}" type="number" min="1" max="10"
											ng-model="Item.quantity" ng-change="update(Item)">


										<%-- 										<form:form action="${contextRoot}/user/cart/update" --%>
										<%-- 											method="post" modelAttribute="cartItems"> --%>
										<%-- 											<form:input path="quantity" id="${cartItems.id}" --%>
										<%-- 												type="number" class="cartQuant" --%>
										<%-- 												value="${cartItems.quantity}"></form:input> --%>
										<%-- 											<form:hidden path="id" value="${cartItems.id}" /> --%>
										<%-- 											<input type="submit" id="save_${cartItems.id}" --%>
										<!-- 												class="btn btn-default" style="display: none;" value="Save" /> -->
										<%-- 										</form:form> --%>

									</div>

									<!-- per unit price will come here -->
									<div class="col-md-1 col-xs-12">
										<strong>&#8377; {{Item.product.product_price }}</strong>
									</div>

									<!-- Total price of a single product will come here -->
									<div class="col-md-offset-1 col-md-2">
										<strong>&#8377; {{Item.totalPrice}}</strong>
									</div>

									<!-- Option to remove cart item -->
									<div class="col-md-1 col-xs-12">
										<a href="${contextRoot}/user/cart/delete/{{Item.id}}"
											class="btn btn-default" data-toggle="tooltip"
											data-placement="bottom" title="Remove"><span
											class="glyphicon glyphicon-trash"></span></a>
									</div>

								</div>
							</div>

						</div>

						<div class="panel-heading">
							<div class="panel-title">
								<div class="row">
									<div class="col-md-6 ">
										<h4>Amount Due</h4>
									</div>
									<div class="col-md-offset-3 col-md-2">
										<h4>&#8377; {{grandTotal}}</h4>
									</div>
								</div>
							</div>
						</div>





					</div>
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
		</div>
	</div>
</div>