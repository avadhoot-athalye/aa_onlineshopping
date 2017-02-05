<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:choose>
	<c:when test="${cartItemsIsEmpty == true}">
		<h1>Cart is empty</h1>
	</c:when>
	<c:otherwise>
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

						<c:forEach items="${cartItem}" var="cartItems">
							<div class="panel-body">

								<div class="row">

									<!-- Product Image will come here -->
									<div class="col-md-2 col-xs-12">
										<a href="${contextRoot}/game/${cartItems.product.product_id}"><img
											class="img img-responsive cartImage" alt=""
											src="${img}/products/${cartItems.product.product_id}.png"></a>
									</div>

									<!-- Product name will come here -->
									<div class="col-md-3 col-xs-12">
										<a href="${contextRoot}/game/${cartItems.product.product_id}"><strong>${cartItems.product.product_name}</strong></a>
									</div>

									<!-- Quantity is added here -->
									<div class="col-md-2 col-xs-12">
										<form:form action="${contextRoot}/user/cart/update"
											method="post" modelAttribute="cartItems">
											<form:input path="quantity" id="${cartItems.id}"
												type="number" class="cartQuant"
												value="${cartItems.quantity}"></form:input>
											<form:hidden path="id" value="${cartItems.id}" />
											<input type="submit" id="save_${cartItems.id}"
												class="btn btn-default" style="display: none;" value="Save" />
										</form:form>
									</div>

									<!-- per unit price will come here -->
									<div class="col-md-1 col-xs-12">
										<strong>&#8377; ${cartItems.product.product_price }</strong>
									</div>

									<!-- Total price of a single product will come here -->
									<div class="col-md-offset-1 col-md-2">
										<strong>&#8377; ${cartItems.quantity * cartItems.product.product_price }</strong>
									</div>

									<!-- Option to remove cart item -->
									<div class="col-md-1 col-xs-12">
										<a href="${contextRoot}/user/cart/delete/${cartItems.id}"
											class="btn btn-default"><span
											class="glyphicon glyphicon-trash"></span></a>
									</div>

								</div>
							</div>
						</c:forEach>


						<div class="panel-heading">
							<div class="panel-title">
								<div class="row">
									<div class="col-md-6 ">
										<h4>Amount Due</h4>
									</div>
									<div class="col-md-offset-3 col-md-2">
										<h4>&#8377; ${cart.grandTotal}</h4>
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
	</c:otherwise>
</c:choose>