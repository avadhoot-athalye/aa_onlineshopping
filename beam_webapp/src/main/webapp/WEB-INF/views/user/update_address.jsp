
<div class="well">
	<form class="form-horizontal sign-up-form">

		<!-- Change your address here -->

		<h2 class="text-center header-sign-up">Update User Address</h2>

		<!-- Update address Line 1 here -->
		<div class="form-group">
			<label for="address_line_1" class="col-sm-5 control-label">Address Line 1</label>
			<div class="col-sm-3 input-group">
				<input type="text" id="address_line_1" name="address_line_1"
					placeholder="Room no, Street name" class="form-control" />
			</div>
		</div>

		<!-- Update address Line 2 here -->
		<div class="form-group">
			<label for="address_line_2" class="col-sm-5 control-label">Address Line 2</label>
			<div class="col-sm-3 input-group">
				<input type="text" id="address_line_2" name="address_line_2"
					placeholder="local area name" class="form-control" />
			</div>
		</div>
		
		<!-- Update landmark here -->
		<div class="form-group">
			<label for="landmark" class="col-sm-5 control-label">Landmark</label>
			<div class="col-sm-3 input-group">
				<input type="text" id="landmark" name="landmark"
					placeholder="landmark" class="form-control" />
			</div>
		</div>

		<!-- Choose country here -->

		<div class="form-group">
			<label for="ccountry" class="col-sm-5 control-label">Choose
				a Country: </label>
			<div class="col-sm-3 input-group">
				<div class="dropdown">
					<button class="btn btn-default dropdown-toggle" type="button"
						id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="true">
						Choose a country <span class="caret"></span>
					</button>
					<ul id="ad_setting" class="dropdown-menu"
						aria-labelledby="dropdownMenu1">
						<li><a href="#">USA</a></li>
						<li><a href="#">China</a></li>
						<li><a href="#">India</a></li>
					</ul>
				</div>
			</div>
		</div>
		
		<!-- Choose state here -->

		<div class="form-group">
			<label for="state" class="col-sm-5 control-label">Choose
				a State:</label>
			<div class="col-sm-3 input-group">
				<div class="dropdown">
					<button class="btn btn-default dropdown-toggle" type="button"
						id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="true">
						Choose a state <span class="caret"></span>
					</button>
					<ul id="ad_setting" class="dropdown-menu"
						aria-labelledby="dropdownMenu1">
						<li><a href="#">Andhra Pradesh</a></li>
						<li><a href="#">Gujarat</a></li>
						<li><a href="#">Maharashtra</a></li>
					</ul>
				</div>
			</div>
		</div>
		
		<!-- Choose state here -->

		<div class="form-group">
			<label for="city" class="col-sm-5 control-label">Choose
				a City:</label>
			<div class="col-sm-3 input-group">
				<div class="dropdown">
					<button class="btn btn-default dropdown-toggle" type="button"
						id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="true">
						Choose a city <span class="caret"></span>
					</button>
					<ul id="ad_setting" class="dropdown-menu"
						aria-labelledby="dropdownMenu1">
						<li><a href="#">Mumbai</a></li>
						<li><a href="#">Pune</a></li>
						<li><a href="#">Nagpur</a></li>
					</ul>
				</div>
			</div>
		</div>

		<!-- Update pincode here -->

		<div class="form-group">
			<label for="pincode" class="col-sm-5 control-label">Pincode:</label>
			<div class="col-sm-3 input-group">
				<input type="text" id="pincode" name="pincode"
					class="form-control" placeholder="pincode" />
			</div>
		</div>

		<!-- Submit Button -->

		<div class="form-group">
			<div class="text-center">
				<button type="submit" class="btn btn-primary ">Update</button>
			</div>
		</div>		

	</form>
</div>
