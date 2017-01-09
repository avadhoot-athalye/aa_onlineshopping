
<div class="well">
	<form class="form-horizontal sign-up-form">

		<!-- View all suppliers -->

		<div id="changepwd" class="form-group">
			<div id="viewallsuppliers" class="text-right">
				<a href="${contextRoot}/allsuppliers">View All Suppliers</a>
			</div>
		</div>

		<!-- Add a category here -->

		<h2 class="text-center header-sign-up">Add a Supplier</h2>

		<!-- Add a supplier name here -->
		<div class="form-group">
			<label for="suppliername" class="col-sm-5 control-label">Supplier
				Name:</label>
			<div class="col-sm-3 input-group">
				<input type="text" id="suppliername" name="suppliername"
					placeholder="Add supplier's name" class="form-control" />
			</div>
		</div>


		<!-- Add a supplier's contact number -->


		<div class="form-group">
			<label class="col-sm-5 control-label">Phone</label>
			<div class="col-sm-3 input-group">
				<input name="phone" placeholder="Add a phone number"
					class="form-control" type="text">
			</div>
		</div>


		<div class="form-group">
			<div class="text-center">
				<button type="submit" class="btn btn-primary ">Add a
					supplier</button>
			</div>
		</div>



	</form>
</div>
