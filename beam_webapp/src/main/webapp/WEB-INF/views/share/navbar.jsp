<nav class="navbar navbar-default " style="border-radius: 0 !important;">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${contextRoot}/" style="font-size: 25px;">BEAM</a>

		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">

				<li class="dropdown text-center"><a class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">GAMES <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="${contextRoot}/games/all">ALL GAMES</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">NEW RELEASES</a></li>
						<li><a href="#">MOST POPULAR</a></li>
						<li><a href="#">EARLY ACCESS</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">ACTION</a></li>
						<li><a href="#">ADVENTURE</a></li>
						<li><a href="#">CASUAL</a></li>
						<li><a href="#">INDIE</a></li>
						<li><a href="#">RACING</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">MAC OS X</a></li>
						<li><a href="#">WINDOWS</a></li>
					</ul></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<form class="navbar-form navbar-left visible-lg" role="search">
					<div class="input-group" style="width: 400px;">
						<input type="text" class="form-control"
							placeholder="Search for a game">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form>
				<li data-toggle="tooltip" data-placement="bottom" title="Home"><a href="${contextRoot}/store" class="text-center">
						<span class="glyphicon glyphicon-home" aria-hidden="true" ></span>
				</a></li>
				<sec:authorize access="hasAuthority('customer')">
				<li role="presentation" class="text-center"><a
					href="${contextRoot}/user/cart/"><span
						class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
						CART <span class="badge">${noOfCartItems}</span></a></li>
				</sec:authorize>
				<sec:authorize access="isAnonymous()">
				<li data-toggle="tooltip" data-placement="bottom" title="LogIn"><a href="${contextRoot}/login" class="text-center"><span class="glyphicon glyphicon-log-in" aria-hidden="true" ></span></a></li>
				<li data-toggle="tooltip" data-placement="bottom" title="SignUp"><a href="memberShip" class="text-center"><i class="fa fa-user-plus" ></i></a></li>
				</sec:authorize>		
						
				<sec:authorize access="hasAuthority('admin')">
				<li><a href="#" data-toggle="dropdown"
					class="dropdown-toggle dropdown text-center"><sec:authentication property="name"/>(ADMIN)<span
						class="caret" aria-haspopup="true" aria-expanded="true"></span></a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
						<li><a href="${contextRoot}/admin/addproduct"
							class="text-center">ADD NEW PRODUCT</a></li>
						<li><a href="${contextRoot}/admin/addcategory"
							class="text-center">CREAT NEW CATEGORY</a></li>
						<li><a href="${contextRoot}/admin/addsupplier"
							class="text-center">ADD NEW SUPPLIER</a></li>
						<li><a href="${contextRoot}/admin/addwallpaper"
							class="text-center">ADD NEW WALLPAPER</a></li>
						<li><a href="${contextRoot}/admin/adminsettings"
							class="text-center">SETTINGS</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="${contextRoot}/logout" class="text-center">LOG OUT</a></li>
					</ul></li>
				</sec:authorize>
				
				<sec:authorize access="hasAuthority('customer')">
				<li><a href="#" data-toggle="dropdown"
					class="dropdown-toggle dropdown text-center"><sec:authentication
							property="name" /><span class="caret" aria-haspopup="true"
						aria-expanded="true"></span></a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
						<li><a href="${contextRoot}/user/profile" class="text-center">HELLO
								<sec:authentication property="name"/></a></li>
						<li><a href="${contextRoot}/user/myorders" class="text-center">MY
								ORDERS</a></li>
						<li><a href="${contextRoot}/user/mywishlist" class="text-center">MY
								WISHLIST</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="${contextRoot}/logout" class="text-center">LOG OUT</a></li>
					</ul></li>
				</sec:authorize>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>












