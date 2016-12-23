<!--Navigation bar starts -->
<nav class="navbar navbar-inverse navbar-static-top no-margin"
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
			<a class="navbar-brand no-padding padding-left" href="${contextRoot}/"><img
				src="${img}/Logo.png"></a>
		</div>
		<div class="collapse navbar-collapse" id="bs-games-navbar-collapse-1">
			<div class="navbar-header">
				<ul class="nav navbar-nav">
					<li><a href="${contextRoot}/store">STORE</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">GAMES <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${contextRoot}/games/all">ALL GAMES</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">NEW RELEASES</a></li>
							<li><a href="#">MOST POPULAR</a></li>
							<li><a href="#">EARLY ACCESS</a></li>
							<li role="separator" class="divider"></li>
							<!--  <div class="popup_menu_subheader">Browse by genre:</div> -->
							<li><a href="#">ACTION</a></li>
							<li><a href="#">ADVENTURE</a></li>
							<li><a href="#">CASUAL</a></li>
							<li><a href="#">INDIE</a></li>
							<li><a href="#">RACING</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">MAC OS X</a></li>
							<li><a href="#">WINDOWS</a></li>
						</ul></li>
					<%-- 					<li><a href="${contextRoot}/about">About</a></li> --%>
					<li><a href="${contextRoot}/wallpapers">WALLPAPERS</a></li>
				</ul>
			</div>
			<div class="navbar-header navbar-right padding-right">
				<form class="navbar-form navbar-left" role="Search">
					<div class="form-group">
						<input type="text" class="form-control"
							placeholder="Search for a game">
					</div>
					<button type="submit" class="btn btn-default">SEARCH</button>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li role="presentation"><a href="${contextRoot}/cart"><span
							class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
							CART <span class="badge">0</span></a></li>
					<li><a href="${contextRoot}/login">LOG IN</a></li>
					<li><a href="${contextRoot}/signup">SIGN UP</a></li>
					<li><a href="#" data-toggle="dropdown"
						class="dropdown-toggle dropdown">ADMIN<span class="caret"
							aria-haspopup="true" aria-expanded="true"></span></a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li><a href="#">ACTION</a></li>
							<li><a href="#">ANOTHER ACTION</a></li>
							<li><a href="#">SOMETHING ELSE</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul></li>
						
				</ul>

			</div>
			<!--navbar-right closed -->

		</div>
		
	</div>
	<!--container closed -->
</nav>
<!--navbar closed -->
