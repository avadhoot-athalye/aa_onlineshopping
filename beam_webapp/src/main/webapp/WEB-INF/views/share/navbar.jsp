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
			<a class="navbar-brand no-padding padding-left" href="${contextRoot}/index"><img
				src="${img}/Logo.png"></a>
		</div>
		<div class="collapse navbar-collapse" id="bs-games-navbar-collapse-1">
			<div class="navbar-header">
				<ul class="nav navbar-nav">
					<li><a href="${contextRoot}/index">Store</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Games <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">All Games</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">New Releases</a></li>
							<li><a href="#">Most Popular</a></li>
							<li><a href="#">Early Access</a></li>
							<li role="separator" class="divider"></li>
							<!--  <div class="popup_menu_subheader">Browse by genre:</div> -->
							<li><a href="#">Action</a></li>
							<li><a href="#">Adventure</a></li>
							<li><a href="#">Casual</a></li>
							<li><a href="#">Indie</a></li>
							<li><a href="#">Racing</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Mac OS X</a></li>
							<li><a href="#">Windows</a></li>
						</ul></li>
					<%-- 					<li><a href="${contextRoot}/about">About</a></li> --%>
					<li><a href="${contextRoot}/wallpapers">Wallpapers</a></li>
				</ul>
			</div>
			<div class="navbar-header navbar-right padding-right">
				<form class="navbar-form navbar-left" role="Search">
					<div class="form-group">
						<input type="text" class="form-control"
							placeholder="Search for a game">
					</div>
					<button type="submit" class="btn btn-default">Search</button>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li role="presentation"><a href="${contextRoot}/cart"><span
							class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
							Cart <span class="badge">0</span></a></li>
					<li><a href="${contextRoot}/login">Log In</a></li>
					<li><a href="${contextRoot}/signup">Sign Up</a></li>
					<li><a href="#" data-toggle="dropdown"
						class="dropdown-toggle dropdown">Admin<span class="caret"
							aria-haspopup="true" aria-expanded="true"></span></a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
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