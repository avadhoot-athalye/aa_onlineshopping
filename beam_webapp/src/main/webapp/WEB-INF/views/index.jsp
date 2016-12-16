<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<s:url value = "/resources/css" var="css" />
<s:url value = "/resources/js" var="js" />
<s:url value = "/resources/img" var="img" />
<c:set value = "${pageContext.request.contextPath}" var="contextRoot" />
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
    	<link rel="apple-touch-icon" sizes="57x57" href="${img}/favicon/apple-icon-57x57.png">
		<link rel="apple-touch-icon" sizes="60x60" href="${img}/favicon/apple-icon-60x60.png">
		<link rel="apple-touch-icon" sizes="72x72" href="${img}/favicon/apple-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="76x76" href="${img}/favicon/apple-icon-76x76.png">
		<link rel="apple-touch-icon" sizes="114x114" href="${img}/favicon/apple-icon-114x114.png">
		<link rel="apple-touch-icon" sizes="120x120" href="${img}/favicon/apple-icon-120x120.png">
		<link rel="apple-touch-icon" sizes="144x144" href="${img}/favicon/apple-icon-144x144.png">
		<link rel="apple-touch-icon" sizes="152x152" href="${img}/favicon/apple-icon-152x152.png">
		<link rel="apple-touch-icon" sizes="180x180" href="${img}/favicon/apple-icon-180x180.png">
		<link rel="icon" type="image/png" sizes="192x192"  href="${img}/favicon/android-icon-192x192.png">
		<link rel="icon" type="image/png" sizes="32x32" href="${img}/favicon/favicon-32x32.png">
		<link rel="icon" type="image/png" sizes="96x96" href="${img}/favicon/favicon-96x96.png">
		<link rel="icon" type="image/png" sizes="16x16" href="${img}/favicon/favicon-16x16.png">
		<link rel="manifest" href="/manifest.json">
		<meta name="msapplication-TileColor" content="#ffffff">
		<meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
		<meta name="theme-color" content="#ffffff">

		<title>Welcome to beam | ${title}</title>
		<!--Core css files -->
		<link href="${css}/bootstrap-theme.css" rel="stylesheet">
		<link href="${css}/bootstrap.css" rel="stylesheet">
		<!--Custom css file -->
		<link href="${css}/style.css" rel="stylesheet">
	</HEAD>
	<body>
		<!--Header image starts -->
	<div class="container margin-centered">
		<div class="page-header no-margin no-padding">
				<img src="${img}/page-header.jpg" class="img-responsive">
		</div> <!--Header image ends -->
		
		<%@include file="./share/navbar.jsp" %>
		
		<div class="mainright">
			<div class="page-header no-padding no-margin">
			  <h3>Featured & Popular</h3>
			</div>
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
				  <!-- Indicators -->
				  <ol class="carousel-indicators">
				    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				    <li data-target="#myCarousel" data-slide-to="1"></li>
				    <li data-target="#myCarousel" data-slide-to="2"></li>
				    <li data-target="#myCarousel" data-slide-to="3"></li>
				  </ol>

				  <!-- Wrapper for slides -->
				  <div class="carousel-inner" role="listbox">
				    <div class="item active margin-centered">
				      <img src="${img}/gta5.jpg" alt="Grand Theft Auto V">
				    </div>

				    <div class="item">
				      <img src="${img}/GodOfWar3.jpg" alt="GodOfWar3">
				    </div>

				    <div class="item">
				      <img src="${img}/AssasinCreed3.jpg" alt="AssasinCreed3">
				    </div>

				    <div class="item">
				      <img src="${img}/Fallout4.png" alt="Fallout4">
				    </div>
				  </div>

				  <!-- Left and right controls -->
				  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
				    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
				    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				  </a>
				</div><!--Carousal ends -->
			<!-- Custom Content comes here -->
			<div class="page-header no-padding no-margin">
			  <h3>Recommended</h3>
			</div>
			<div class="row">
	  			<div class="col-sm-6 col-md-4">
	    			<div class="thumbnail">
	      				<img src="${img}/theforest-content-img.png" alt="theforest-content-img">
	      				<div class="caption text-center">
	        				<h3>The Forest</h3>
	        				<!-- <p>...</p> -->
	        				<p><a href="#" class="btn btn-primary" role="button">View</a> <a href="#" class="btn btn-default" role="button">Add to Cart</a></p>
	      				</div>
	    			</div>
	  			</div>
	  			<div class="col-sm-6 col-md-4">
	    			<div class="thumbnail">
	      				<img src="${img}/civilisation5-content-img.png" alt="civilisation5-content-img">
	      				<div class="caption text-center">
	        				<h3>Civilisation V</h3>
	        				<!-- <p>...</p> -->
	        				<p><a href="#" class="btn btn-primary" role="button">View</a> <a href="#" class="btn btn-default" role="button">Add to Cart</a></p>
	      				</div>
	    			</div>
	  			</div>
	  			<div class="col-sm-6 col-md-4">
	    			<div class="thumbnail">
	      				<img src="${img}/counterstrikego-content-img.png" alt="counterstrikego-content-img">
	      				<div class="caption text-center">
	        				<h3>CS: Global Offensive</h3>
	        				<!-- <p>...</p> -->
	        				<p><a href="#" class="btn btn-primary" role="button">View</a> <a href="#" class="btn btn-default" role="button">Add to Cart</a></p>
	      				</div>
	    			</div>
	  			</div>
			</div>
		</div>
		<!--Start of the Footer -->
		<footer class="site-footer">
			<div class="container">
					<div class="bottom-footer">
						<div class="col-md-12 text-center">
							<h6>@ Copyright by Avadhoot Athalye 2016</h6>
							<ul class="footer-nav">
								<li><a href="#">About us</a></li>
								<li><a href="#">Contact us</a></li>
								<li><a href="#">Like us</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!--End of the Footer -->
	</div>	
		<!-- Script placed at the end -->
		<script src="${js}/jquery.js"></script>
		<script src="${js}/bootstrap.js"></script>
	</body>
</HTML>