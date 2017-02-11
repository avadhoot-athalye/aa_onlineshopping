<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
<!-- Pace.css for loader -->
<%-- 		<link href="${css}/pace.css" rel="stylesheet"> --%>


</HEAD>



<body>
	<div class="container margin-centered">
		<div class="no-margin no-padding">
			<img src="${img}/page-header.jpg"
				class="img img-responsive hidden-xs">
		</div>
		<!--Header image ends -->

		<%@include file="../share/navbar.jsp"%>

		<div class="well">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">

					<form:form class="form-horizontal sign-up-form"
						modelAttribute="orderBean"
						action="${contextRoot}/user/address/save" method="POST">

						<!-- Change your address here -->

						<h2 class="text-center header-sign-up">Update Billing
							Information</h2>

						<!-- Update First Name here -->
						<div class="form-group">
							<label for="firstName"
								class="labelPadding control-label col-sm-5">Billar Name:
							</label>
							<div class="col-sm-3">
								<c:choose>
									<c:when test="${orderBean.user.firstname == null}">
										<i class="require">please provide biller name here</i>
									</c:when>
									<c:when test="${orderBean.user.lastname == null}">
										<i class="require">please provide biller name here</i>
									</c:when>
									<c:otherwise>
							${orderBean.user.firstname}&nbsp;${orderBean.user.lastname}
							</c:otherwise>
								</c:choose>
							</div>
						</div>

						<!-- Update address Line 1 here -->
						<div class="form-group">
							<label for="address_line_1"
								class="labelPadding control-label col-sm-5">Address Line
								1</label>
							<div class="col-sm-3">
							<c:choose>
									<c:when test="${orderBean.address.addressLine1 == null}">
										<i class="require">please provide address here</i>
									</c:when>
									<c:otherwise>
							${orderBean.address.addressLine1}
							</c:otherwise>
								</c:choose>
							</div>
						</div>

						<!-- Update address Line 2 here -->
						<div class="form-group">
							<label for="address_line_2"
								class=" labelPadding col-sm-5 control-label">Address
								Line 2</label>
							<div class="col-sm-5 ">
							<c:choose>
									<c:when test="${orderBean.address.addressLine2 == null}">
										<i class="require">please provide address here</i>
									</c:when>
									<c:otherwise>
							${orderBean.address.addressLine2}
							</c:otherwise>
								</c:choose>
							</div>
						</div>

						<!-- Update landmark here -->
						<div class="form-group">
							<label for="landmark" class="labelPadding col-sm-5 control-label">Landmark</label>
							<div class="col-sm-5 ">
								<c:choose>
									<c:when test="${orderBean.address.city == null}">
										<i class="require">please provide city</i>
									</c:when>
									<c:otherwise>
							${orderBean.address.landMark}
							</c:otherwise>
								</c:choose>
							</div>
						</div>

						<!-- Choose city here -->
						<div class="form-group">
							<label for="city" class="labelPadding col-sm-5 control-label">Choose
								a City:</label>
							<div class="col-sm-5 ">
								<c:choose>
									<c:when test="${orderBean.address.city == null}">
										<i class="require">please provide city</i>
									</c:when>
									<c:otherwise>
							${orderBean.address.city}
							</c:otherwise>
								</c:choose>
							</div>
						</div>

						<!-- Choose state here -->

						<div class="form-group">
							<label for="state" class="labelPadding col-sm-5 control-label">Choose
								a State:</label>
							<div class="col-sm-5 ">
								<c:choose>
									<c:when test="${orderBean.address.state == null}">
										<i class="require">please provide state</i>
									</c:when>
									<c:otherwise>
							${orderBean.address.state}
							</c:otherwise>
								</c:choose>
							</div>
						</div>

						<!-- Choose country here -->

						<div class="form-group">
							<label for="country" class="labelPadding col-sm-5 control-label">Choose
								a Country: </label>
							<div class="col-sm-5 ">
								<c:choose>
									<c:when test="${orderBean.address.country == null}">
										<i class="require">please provide country</i>
									</c:when>
									<c:otherwise>
							${orderBean.address.country}
							</c:otherwise>
								</c:choose>

							</div>
						</div>

						<!-- Update pincode here -->

						<div class="form-group">
							<label for="pincode" class="labelPadding col-sm-5 control-label">Pincode:</label>
							<div class="col-sm-5 ">
								<c:choose>
									<c:when test="${orderBean.user.mobilenumber == null}">
										<i class="require">please provide pincode</i>
									</c:when>
									<c:otherwise>
							${orderBean.address.pincode}
							</c:otherwise>
								</c:choose>
							</div>
						</div>

						<!-- Update mobile number here -->

						<div class="form-group">
							<label for="mobile" class="labelPadding col-sm-5 control-label">Mobile
								no:</label>
							<div class="col-sm-5 ">
								<c:choose>
									<c:when test="${orderBean.user.mobilenumber == null}">
										<i class="require">please provide mobile number</i>
									</c:when>
									<c:otherwise>
							${orderBean.user.mobilenumber}
							</c:otherwise>
								</c:choose>
							</div>
						</div>

						<!-- Update Mobile number here -->

						<!-- 						<div class="form-group"> -->
						<!-- 							<label for="mobile" class="labelPadding col-sm-5 control-label">Mobile:</label> -->
						<%-- 							<div class="col-sm-5 ">${orderBean.address.mobile}</div> --%>
						<!-- 						</div> -->


						<div class="row">
							<!-- Edit Button -->
							<div class="col-md-12 text-center">
								<div class="col-md-offset-5 col-md-1">
									<button type="submit" class="btn btn-primary ">Edit</button>
								</div>

								<!--  Continue Button -->

								<div class="col-md-1">
									<button type="submit" class="btn btn-success" >Confirm
										Details</button>
								</div>
							</div>
						</div>
						&nbsp;
					</form:form>

					<%@include file="../share/footer.jsp"%>
				</div>
			</div>
		</div>
	</div>

	<!-- Script placed at the end -->
	<script src="${js}/jquery.js"></script>
	<script src="${js}/bootstrap.js"></script>
	<script src="${js}/app.js"></script>
	<%-- 		<script src="${js}/pace.js"></script> --%>
</body>
</HTML>