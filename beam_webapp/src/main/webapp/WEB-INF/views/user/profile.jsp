
<div class="well">
	<form class="form-horizontal sign-up-form">

		<!-- Change your settings here -->

		<h2 class="text-center header-sign-up">Change User Settings</h2>

		<!-- Change username here -->
		<div class="form-group">
			<label for="change_username" class="col-sm-5 control-label">username:</label>
			<div class="col-sm-3 input-group">
				<input type="text" id="change_username" name="change_username"
					placeholder="john_2362" class="form-control" />
			</div>
		</div>

		<!-- Change firstname here -->
		<div class="form-group">
			<label for="change_firstname" class="col-sm-5 control-label">First
				name:</label>
			<div class="col-sm-3 input-group">
				<input type="text" id="change_firstname" name="change_firstname"
					placeholder="John" class="form-control" />
			</div>
		</div>

		<!-- Change lastname here -->
		<div class="form-group">
			<label for="change_lastname" class="col-sm-5 control-label">Last
				name:</label>
			<div class="col-sm-3 input-group">
				<input type="text" id="change_lastname" name="change_lastname"
					placeholder="Smith" class="form-control" />
			</div>
		</div>


		<!-- Change contact number -->


		<div class="form-group">
			<label class="col-sm-5 control-label">Phone</label>
			<div class="col-sm-3 input-group">
				<input name="phone" placeholder="Phone number" class="form-control"
					type="text">
			</div>
		</div>

		<!-- Change email address here -->

		<div class="form-group">
			<label for="updateemailid" class="col-sm-5 control-label">Change
				email address:</label>
			<div class="col-sm-3 input-group">
				<input type="email" id="updateemailid" name="updateemailid"
					class="form-control" placeholder="johnsmith@xyz.com" />
			</div>
		</div>

		<!-- Submit Button -->

		<div class="form-group">
			<div class="text-center">
				<button type="submit" class="btn btn-primary ">Update</button>
			</div>
		</div>

		<div class="form-group">
			<div id="changepwd" class="text-right">
				<a href="${contextRoot}/userpassword">Change password</a>
			</div>
		</div>
		
		


	</form>
</div>
