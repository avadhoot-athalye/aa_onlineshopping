<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<s:url value="/resources/css" var="css" />
<s:url value="/resources/js" var="js" />
<s:url value="/resources/img" var="img" />
<c:set value="${pageContext.request.contextPath}" var="contextRoot" />
<!DOCTYPE HTML>
<HTML>
<HEAD>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="This is a home Page of gaming website">
<meta name="author" content="Avadhoot Athalye">
<!--Files for Favicon -->
<link rel="apple-touch-icon" sizes="57x57"
	href="${img}/favicon/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="${img}/favicon/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="${img}/favicon/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="${img}/favicon/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="${img}/favicon/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="${img}/favicon/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="${img}/favicon/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="${img}/favicon/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="${img}/favicon/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"
	href="${img}/favicon/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="${img}/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="${img}/favicon/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="${img}/favicon/favicon-16x16.png">
<link rel="manifest" href="${img}/favicon/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage"
	content="${img}/favicon/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">

<title>Order Details | Beam</title>
<!--Core css files -->
<link href="${css}/bootstrap_sandstone.css" rel="stylesheet">
<%-- <link href="${css}/bootstrap-theme.css" rel="stylesheet"> --%>
<%-- <link href="${css}/bootstrap.css" rel="stylesheet"> --%>
<!--Custom css file -->
<link href="${css}/style.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Crimson+Text"
	rel="stylesheet">
<!-- Pace.css for loader -->
<%-- 		<link href="${css}/pace.css" rel="stylesheet"> --%>


</HEAD>

<!-- Body of the content starts here -->
<body>

	<div class="main-wrapper">
		<!--Header image ends -->

		<%@include file="../share/navbar.jsp"%>


		<div class="content container">

			<div class="row">

				<div class="col-md-8">
					<div class="row">
						<div class="col-md-3">
							<h3>Order Summary</h3>
						</div>

						<div class=" col-md-offset-5 col-md-4" style="padding-top: 10px;">
							<div class="text-right">
								<input name="_eventId_continue" type="submit"
									class="btn btn-primary" value="back to cart"></input>

							</div>
						</div>
					</div>
					<div class="row">

						<div class="col-md-6 clearfix float-my-children"
							style="padding-top: 20px;">
							<img src="http://placehold.it/150x150" alt="..." class="rounded">
							<h4 style="padding-left: 10px;">
								<b>PRODUCT NAME</b>
							</h4>
							<p style="padding-left: 10px;">
								<i>5 Units</i>
							</p>
							<p style="padding-left: 10px;">
								<i>&#8377; 5000</i>
							</p>
						</div>

						<div class="col-md-6 clearfix float-my-children"
							style="padding-top: 20px;">
							<img src="http://placehold.it/150x150" alt="..." class="rounded">
							<h4 style="padding-left: 10px;">
								<b>PRODUCT NAME</b>
							</h4>
							<p style="padding-left: 10px;">
								<i>5 Units</i>
							</p>
							<p style="padding-left: 10px;">
								<i>&#8377; 5000</i>
							</p>
						</div>

						<div class="col-md-6 clearfix float-my-children"
							style="padding-top: 20px;">
							<img src="http://placehold.it/150x150" alt="..." class="rounded">
							<h4 style="padding-left: 10px;">
								<b>PRODUCT NAME</b>
							</h4>
							<p style="padding-left: 10px;">
								<i>5 Units</i>
							</p>
							<p style="padding-left: 10px;">
								<i>&#8377; 5000</i>
							</p>
						</div>

						<div class="col-md-6 clearfix float-my-children"
							style="padding-top: 20px;">
							<img src="http://placehold.it/150x150" alt="..." class="rounded">
							<h4 style="padding-left: 10px;">
								<b>PRODUCT NAME</b>
							</h4>
							<p style="padding-left: 10px;">
								<i>5 Units</i>
							</p>
							<p style="padding-left: 10px;">
								<i>&#8377; 5000</i>
							</p>
						</div>

					</div>

					<h3 style="padding-top: 10px;" class="text-right">AMOUNT
						PAYABLE : &#8377; 7000</h3>

				</div>

				<div class="col-md-4">
					<form class="text-center" method="POST">

						<div style="margin-top: 75px;">

							<div class="row">
								<div class="col-md-4">
								<h4 class="text-left">
									<b>Biller Details</b>
								</h4>
								</div>
								<div class="col-md-offset-2 col-md-6">
									<a><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>&nbsp;&nbsp;Edit Biller Details</a>
								</div>
							</div>
							<p class="text-left" style="margin-bottom: 0px;">Gauri
								Athalye</p>
							<p class="text-left" style="margin-bottom: 0px;">A-202,
								NEELKANTH DHARA II, NEAR GANGESHWAR TOWER,</p>
							<p class="text-left" style="margin-bottom: 0px;">RAJU NAGAR,
								DOMBIVLI WEST</p>
							<p class="text-left" style="margin-bottom: 0px;">421202</p>
							<p class="text-left" style="margin-bottom: 0px;">Contact
								Number : 7738262982</p>

							<div class="form-group"
								style="padding-bottom: 15px; padding-top: 15px;">
								<h4 class="text-left">
									<b>Payment Method</b>
								</h4>
								<select class="form-control" id="exampleSelect1">
									<option>PAY ONLINE</option>
									<option>CASH ON DELIVERY</option>
								</select>
							</div>

							<div class="form-group">
								<div class="text-right">
									<input name="_eventId_continue" type="submit"
										class="btn btn-primary" value="Confirm"></input>

								</div>
							</div>

							<!-- <div class="form-group">
								<input type="radio" name="payOnline" value="CCDC"
									checked="checked">&nbsp; <label for="Pay Online"
									class="radio-opt " style="font-size: 25px;">PAY ONLINE
								</label>
							</div>

							<div class="form-group">
								<input type="radio" name="COD" value="COD">&nbsp; <label
									for="Pay Online" class="radio-opt" style="font-size: 25px;">Cash
									On Delivery</label>
							</div>

							<div class="form-group">
								<div class="text-center">
									<input name="_eventId_continue" type="submit"
										class="btn btn-primary" value="Continue"></input>

								</div>
							</div> -->

						</div>
					</form>
				</div>




			</div>
		</div>
	</div>
	<%@include file="../share/footer.jsp"%>
	</div>


	<!-- Script placed at the end -->
	<script src="${js}/jquery.js"></script>
	<script src="${js}/bootstrap.js"></script>
	<script src="${js}/app.js"></script>
	<%-- 		<script src="${js}/pace.js"></script> --%>
</body>
</HTML>