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

<title>Sign up|Beam</title>
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

<!-- Body of the content starts here -->
<body>
	<div class="container margin-centered">
		<div class="no-margin no-padding">
			<img src="${img}/page-header.jpg"
				class="img img-responsive hidden-xs">
		</div>
		<!--Header image ends -->

		<%@include file="./share/navbar.jsp"%>

		<div class="well">
			<form:form class="form-horizontal sign-up-form form-inline text-center"
				modelAttribute="user" method="post" >

				<h2 class="text-center header-sign-up">
					One Last Step To Go<small>&nbsp; For Billing Address</small>
				</h2>

				<div class="form-group">
					<label for="firstName" class="col-sm-5 control-label">First Name:</label>
					<div class="col-sm-3">
						<form:input path="firstname" type="text" id="firstname"
							name="firstname" placeholder="firstname" class="form-control" />
						
					</div>
				</div>

				&nbsp; &nbsp;
								
				<div class="form-group">
					<label for="lastname" class="col-sm-5 control-label">Last Name:</label>
					<div class="col-sm-3">
						<form:input path="lastname" type="text" id="lastname"
							name="lastname" placeholder="lastname" class="form-control" />
						
					</div>
				</div>
			</form:form>
			
			<form:form class="form-horizontal sign-up-form " modelAttribute="user" method="post">
				<div class="form-group">
					<div class="text-center">
						<input type="submit" class="btn btn-primary"
							name="_eventId_submit" value="SUBMIT" />
					</div>
				</div>
			</form:form>
			<%@include file="./share/footer.jsp"%>

			<!--End of the Footer -->
		</div>
		<!-- Script placed at the end -->
		<script src="${js}/jquery.js"></script>
		<script src="${js}/bootstrap.js"></script>
		<script src="${js}/app.js"></script>
		<%-- 		<script src="${js}/pace.js"></script> --%>
</body>
</HTML>