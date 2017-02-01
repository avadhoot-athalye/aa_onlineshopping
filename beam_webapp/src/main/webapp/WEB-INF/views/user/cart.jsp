<%-- <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>

<div class="page-header">
	<div class="row">
		<div class="text-center header-sign-up">
			<h3>
				In your cart right now <span
					class="glyphicon glyphicon-shopping-cart "></span>
			</h3>
		</div>

	</div>
	<div class="container">
		<div class="row col-md-12 col-xs-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="panel-title">
						<div class="row">
							<div class="col-md-6">
								<h4>Product Details</h4>
							</div>
							<div class="col-md-offset-3 col-md-2">
								<h4>Amount</h4>
							</div>
						</div>
					</div>
				</div>
				<!-- Panel Body starts here -->

				<c:forEach items="${cartItem}" var="cartItems">
					<div class="panel-body">
						<div class="row">
							<div class="col-md-2 col-xs-12">
								<a href="${contextRoot}/game/${cartItems.product.product_id}"><img
									class="img-responsive" alt=""
									src="${img}/products/${cartItems.product.product_id}.png"></a>
							</div>
							<div class="col-md-3 col-xs-12">
								<a href="${contextRoot}/game/${cartItems.product.product_id}"><strong>${cartItems.product.product_name}</strong></a>
							</div>

							<!-- Quantity is added here -->
							<div class="col-md-4 col-xs-12">
								<div class="col-md-12">

									<div class="row col-md-offset-4 col-md-2">
										<span>QUANTITY &nbsp;</span>
									</div>

									<div class="row col-md-offset-2 col-md-4">
										<div class="input-group">
											<input type="text" class="form-control cartQuant" value="1"
												id="quantity">
										</div>
									</div>

								</div>


							</div>


							<div class="col-md-1 col-xs-12">
								<strong>&#8377; ${cartItems.product.product_price }</strong>
							</div>
							<div class="col-md-2 col-xs-12">
								<a href="${contextRoot}/user/cart/delete/${cartItems.id}"><span class="glyphicon glyphicon-trash"> REMOVE</span></a>
							</div>

						</div>
					</div>
				</c:forEach>


				<div class="panel-heading">
					<div class="panel-title">
						<div class="row">
							<div class="col-md-6">
								<h4>Total Amount</h4>
							</div>
							<div class="col-md-offset-3 col-md-3">
								<h4>&#8377 1200</h4>
							</div>
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
			<a class="btn btn-success special-banner"
				href="${contextRoot}/confirmaddress" role="button">Proceed To
				Checkout&nbsp;<span class="glyphicon glyphicon-arrow-right"></span>
			</a>
		</div>

	</div>
</div>
