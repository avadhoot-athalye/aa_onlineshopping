
<div class="well">
	<form class="form-horizontal sign-up-form">

		<!-- View all products -->
		
		<div id="changepwd" class="form-group">
			<div id="viewallproducts" class="text-right">
				<a href="${contextRoot}/allproducts">View All Products</a>
			</div>
		</div>
		
		
		<!-- Add a product here -->

		<h2 class="text-center header-sign-up">Add a Product</h2>

		<!-- Add a product name here -->
		<div class="form-group">
			<label for="productname" class="col-sm-5 control-label">Product
				Name:</label>
			<div class="col-sm-3 input-group">
				<input type="text" id="productname" name="productname"
					placeholder="Add a name of product" class="form-control" />
			</div>
		</div>

		<!-- Choose category here -->

		<div class="form-group">
			<label for="productcategory" class="col-sm-5 control-label">Choose
				a category:</label>
			<div class="col-sm-3 input-group">
				<div class="dropdown">
					<button class="btn btn-default dropdown-toggle" type="button"
						id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="true">
						Add a category <span class="caret"></span>
					</button>
					<ul id="ad_setting" class="dropdown-menu"
						aria-labelledby="dropdownMenu1">
						<li><a href="#">New Releases</a></li>
						<li><a href="#">Most Popular</a></li>
						<li><a href="#">Early Access</a></li>
						<li><a href="#">Demo</a></li>
						<li><a href="#">Pre-Order</a></li>
					</ul>
				</div>
			</div>
		</div>

		<!-- Choose supplier here -->

		<div class="form-group">
			<label for="choosesupplier" class="col-sm-5 control-label">Choose
				a supplier:</label>
			<div class="col-sm-3 input-group">
				<div class="dropdown">
					<button class="btn btn-default dropdown-toggle" type="button"
						id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="true">
						Choose a supplier <span class="caret"></span>
					</button>
					<ul id="ad_setting" class="dropdown-menu"
						aria-labelledby="dropdownMenu1">
						<li><a href="#">Game.Inc</a></li>
						<li><a href="#">BlackWheels.pvt.ltd</a></li>
						<li><a href="#">RedL.corp</a></li>
					</ul>
				</div>
			</div>
		</div>

		<!-- Set a price here -->


		<div class="form-group">
			<label for="setprice" class="col-sm-5 control-label">Set a
				price:</label>
			<div class="col-sm-3 input-group">
				<input type="number" id="setprice" name="setprice"
					class="form-control" placeholder="Set a Price" />
			</div>
		</div>

		<!-- Set stock here -->

		<div class="form-group">
			<label for="quantity" class="col-sm-5 control-label">Available
				Stock:</label>
			<div class="col-sm-3 input-group">
				<input type="number" id="quantity" name="quantity"
					class="form-control" placeholder="Available in stock" />
			</div>
		</div>

		<!-- Add a product description -->


		<div class="form-group">
			<label for="exampleTextarea" class="col-sm-5 control-label">Add
				a product description</label>
			<div class="col-sm-3 input-group">
				<textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
			</div>
		</div>

		<!-- Add photo here here -->

		<div class="form-group">
			<div class="row">
				<label for="exampleInputFile" class="col-sm-5 control-label">Add
					a cover photo</label>
				<div class="col-sm-3 input-group">
					<input type="file" class="form-control-file" id="exampleInputFile"
						aria-describedby="fileHelp"> <small id="fileHelp"
						class="form-text text-muted"></small>
				</div>
			</div>
		</div>

		<div class="form-group">
			<div class="text-center">
				<button type="submit" class="btn btn-primary ">Add a
					product</button>
			</div>
		</div>



	</form>
</div>
