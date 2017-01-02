<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>${title} | Beam</title>
<!--Core css files -->
<link href="${css}/bootstrap-theme.css" rel="stylesheet">
<link href="${css}/bootstrap.css" rel="stylesheet">
<!--Custom css file -->
<link href="${css}/style.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<!-- Pace.css for loader -->
<%-- 		<link href="${css}/pace.css" rel="stylesheet"> --%>


</HEAD>

<!-- Body of the content starts here -->
<body>
	<div class="container margin-centered">
		<div class="no-margin no-padding">
			<img src="${img}/page-header.jpg" class="img img-responsive visible-lg">
		</div>
		<!--Header image ends -->

		<%@include file="./share/navbar.jsp"%>


		<c:if test="${ifUserClickedHome == true}">
			<%@include file="admin/home.jsp"%>
		</c:if>

		<c:if test="${ifUserClickedAbout == true}">
			<%@include file="admin/about.jsp"%>
		</c:if>

		<c:if test="${ifUserClickedContact == true}">
			<%@include file="admin/contact.jsp"%>
		</c:if>

		<c:if test="${ifUserClickedSupport == true}">
			<%@include file="admin/support.jsp"%>
		</c:if>

		<c:if test="${ifUserClickedWallpapers == true}">
			<%@include file="admin/wallpapers.jsp"%>
		</c:if>

		<c:if test="${ifUserClickedCart == true}">
			<%@include file="./cart.jsp"%>
		</c:if>

		<c:if test="${ifUserClickedLogIn == true}">
			<%@include file="./login.jsp"%>
		</c:if>

		<c:if test="${ifUserClickedSignUp == true}">
			<%@include file="./signup.jsp"%>
		</c:if>

		<c:if test="${ifUserClickedGameCatalogue == true}">
			<%@include file="admin/gamecatalogue.jsp"%>
		</c:if>

		<c:if test="${ifUserClickedGame == true}">
			<%@include file="admin/game.jsp"%>
		</c:if>

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