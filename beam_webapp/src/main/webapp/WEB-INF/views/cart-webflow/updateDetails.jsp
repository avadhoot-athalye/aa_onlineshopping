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

<title>${title}|Beam</title>
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

		<div class="well">
			<form:form class="form-horizontal sign-up-form"
				modelAttribute="orderBean" method="POST" id="updateDetails"
				data-toggle="validator">

				<!-- Change your address here -->

				<h2 class="text-center header-sign-up">Update User Address</h2>

				<!-- Update First Name here -->
				<div class="form-group">
					<label for="firstname" class="col-sm-5 control-label">First
						Name</label>
					<div class="col-sm-3">
						<form:input path="user.firstname" placeholder="John"
							class="form-control" id="firstname"
							value="${orderBean.user.firstname}" type="text" />
						<form:hidden path="user.id" value="${orderBean.user.id}" />
						<form:hidden path="address.id" value="${orderBean.address.id}" />

					</div>
				</div>

				<!-- Update Last Name here -->
				<div class="form-group">
					<label for="lastname" class="col-sm-5 control-label">Last
						Name</label>
					<div class="col-sm-3">
						<form:input path="user.lastname" placeholder="Smith"
							class="form-control" value="${orderBean.user.lastname}"
							id="lastname" type="text" />
					</div>
				</div>

				<!-- Update address Line 1 here -->
				<div class="form-group">
					<label for="address_line_1" class="col-sm-5 control-label">Address
						Line 1</label>
					<div class="col-sm-3">
						<form:input path="address.addressLine1"
							placeholder="Room no, Street name" class="form-control"
							value="${orderBean.address.addressLine1}" id="addressLine1"
							type="text" />
					</div>
				</div>

				<!-- Update address Line 2 here -->
				<div class="form-group">
					<label for="address_line_2" class="col-sm-5 control-label">Address
						Line 2</label>
					<div class="col-sm-3">
						<form:input path="address.addressLine2" type="text"
							id="addressLine2" name="address_line_2"
							placeholder="local area name" class="form-control" />
					</div>
				</div>

				<!-- Update landmark here -->
				<div class="form-group">
					<label for="landmark" class="col-sm-5 control-label">Landmark</label>
					<div class="col-sm-3">
						<form:input path="address.landMark" type="text" id="landmark"
							name="landmark" placeholder="landmark" class="form-control" />
					</div>
				</div>

				<!-- Choose city here -->
				<div class="form-group">
					<label for="city" class="col-sm-5 control-label">Choose a
						City:</label>
					<div class="col-sm-3">
						<form:select path="address.city" class="form-control" id="city">
							<form:option value="${orderBean.address.city}">${orderBean.address.city}</form:option>
							<form:option value="Mumbai">Mumbai</form:option>
							<form:option value="Nagpur">Nagpur</form:option>
							<form:option value="Pune">Pune</form:option>
						</form:select>
					</div>
				</div>

				<!-- Choose state here -->

				<div class="form-group">
					<label for="state" class="col-sm-5 control-label">Choose a
						State:</label>
					<div class="col-sm-3">
						<form:select path="address.state" class="form-control" id="state">

							<form:option value="Maharashtra">Maharashtra</form:option>
						</form:select>
					</div>
				</div>

				<!-- Choose country here -->

				<div class="form-group">
					<label for="country" class="col-sm-5 control-label">Choose
						a Country: </label>
					<div class="col-sm-3">
						<form:select path="address.country" class="form-control"
							id="country">

							<form:option value="India">India</form:option>
						</form:select>

					</div>
				</div>

				<!-- Update pincode here -->

				<div class="form-group">
					<label for="pincode" class="col-sm-5 control-label">Pincode:</label>
					<div class="col-sm-3">
						<form:input path="address.pincode" type="text" id="pincode"
							name="pincode" class="form-control" placeholder="pincode"
							pattern="[0-9]{4}" />
					</div>
				</div>

				<!-- Update Mobile number here -->
				<div class="form-group has-feedback">
					<label for="mobileno" class="col-sm-5 control-label">Mobile
						No.</label>
					<div class="col-sm-3">
						<form:input path="user.mobilenumber" placeholder="mobile no."
							id="mobilenumber" class="form-control" />
					</div>
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<div class="help-block with-errors"></div>
				</div>
				
				<!-- Submit Button -->

				<div class="form-group">
					<div class="text-center">
						<input name="_eventId_update" type="submit"
							class="btn btn-primary" value="Update"></input>

					</div>
				</div>
			</form:form>
		</div>
		<%@include file="../share/footer.jsp"%>
<!--End of the Footer -->

		<!-- Script placed at the end -->
		<script src="${js}/jquery.js"></script>
		<script src="${js}/jquery.validate.js"></script>
		<script src="${js}/validation.js"></script>
		<script src="${js}/bootstrap.js"></script>
		<%-- 	<script src="${js}/angular.js"></script>
 --%>
		<script src="${js}/app.js"></script>
		<%-- 	<script src="${js}/cart.js"></script>
 --%>
		<%-- 		<script src="${js}/pace.js"></script> --%>
	</div>
</body>
</HTML>