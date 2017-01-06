<!--Navigation bar starts -->
<nav class="nav-main navbar-static-top no-margin"
	role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-games-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand no-padding padding-left"
				href="${contextRoot}/"><img src="${img}/Logo.png"></a>
		</div>
		
		<div class="collapse navbar-collapse nav-main" id="bs-games-navbar-collapse-1">
			<div class="navbar-header">
				<ul class="nav navbar-nav nav-main nav-item">
					<li><a href="${contextRoot}/store" class="nav-item">STORE</a></li>
					
					<li class="dropdown "><a href="#" class="dropdown-toggle nav-item"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">GAMES <span class="caret"></span></a>
						<ul class="dropdown-menu nav-item">
							<li><a href="${contextRoot}/games/all" class="nav-item">ALL GAMES</a></li>
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
						</ul>
				</ul>
			</div>
			<div class="navbar-header navbar-right padding-right">

				<form class="navbar-form navbar-left visible-lg" role="search">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search for a game">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form>

				<ul class="nav navbar-nav navbar-right nav-item">
					<li role="presentation"><a href="${contextRoot}/cart" class="nav-item"><span
							class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
							CART <span class="badge"></span></a></li>
					<li><a href="${contextRoot}/login" class="nav-item">LOG IN</a></li>
					<li><a href="${contextRoot}/signup" class="nav-item">SIGN UP</a></li>
					<li><a href="#" data-toggle="dropdown"
						class="dropdown-toggle dropdown nav-item">ADMIN<span class="caret"
							aria-haspopup="true" aria-expanded="true"></span></a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li><a href="${contextRoot}/addproduct">ADD NEW PRODUCT</a></li>
							<li><a href="${contextRoot}/addcategory">CREAT NEW CATEGORY</a></li>
							<li><a href="${contextRoot}/addsupplier">ADD NEW SUPPLIER</a></li>
							<li><a href="${contextRoot}/addwallpaper">ADD NEW WALLPAPER</a></li>
							<li><a href="${contextRoot}/adminsettings">SETTINGS</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">LOG OUT</a></li>
						</ul></li>
					<li><a href="#" data-toggle="dropdown"
						class="dropdown-toggle dropdown nav-item padding-right">USER<span class="caret"
							aria-haspopup="true" aria-expanded="true"></span></a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li><a href="${contextRoot}/profile">HELLO USER</a></li>
							<li><a href="${contextRoot}/myorders">MY ORDERS</a></li>
							<li><a href="${contextRoot}/mywishlist">MY WISHLIST</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">LOG OUT</a></li>
						</ul></li>

				</ul>

			</div>
			<!--navbar-right closed -->

		</div>

	</div>
	<!--container closed -->
</nav>
<!--navbar closed -->
