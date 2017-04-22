<c:if test="${not empty msg }">
	<div class="alert alert-danger alert-dismissible">
		<button type="button" class="close" data-dismiss="alert"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
		${msg}
	</div>
</c:if>

<div class="container" >
	<form class="form-horizontal sign-up-form" method="post"
		action="${contextRoot}/login" >
	<div style="padding-top: 50px;">
		<h1 class="text-center ">Log In</h1>
			<div class="form-group">
				<label for="username" class="col-sm-5 control-label">Username:</label>
				<div class="col-sm-3">
					<input type="text" id="username" name="username"
						placeholder="username" class="form-control" />
				</div>
			</div>

		<div class="form-group">
			<label for="password" class="col-sm-5 control-label">Password:</label>
			<div class="col-sm-3">
				<input type="password" id="password" name="password"
					class="form-control" placeholder="password" />
			</div>
		</div>
		
		<small style="margin-left: 550px;">First time here? <a href="memberShip" style="color: blue;">Register</a> right here!</small>
		<div class="form-group margin-centered">
			<div class="text-center" style="margin-top: 10px">
				<button id="login" type="submit" class="btn btn-primary  ">Log In</button>
			</div>
		</div>
		</div>	
	</form>
	
</div>
