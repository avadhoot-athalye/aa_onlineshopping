
<div class="well">
	<form class="form-horizontal sign-up-form">

		<!-- View all suppliers -->

		<div id="changepwd" class="form-group">
			<div id="viewallcategories" class="text-right">
				<a href="${contextRoot}/allcategories">View All Categories</a>
			</div>
		</div>

		<!-- Add a category here -->

		<h2 class="text-center header-sign-up">Add a Category</h2>


		<!-- Add a product name here -->


		<div class="form-group">
			<label for="categoryname" class="col-sm-5 control-label">Category
				Name:</label>
			<div class="col-sm-3 input-group">
				<input type="text" id="categoryname" name="categoryname"
					placeholder="Add name of category" class="form-control" />
			</div>
		</div>


		<!-- Add a category description -->


		<div class="form-group">
			<label for="exampleTextarea" class="col-sm-5 control-label">Add
				a category description</label>
			<div class="col-sm-3 input-group">
				<textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
			</div>
		</div>

		<div class="form-group">
			<div class="text-center">
				<button type="submit" class="btn btn-primary ">Create a
					category</button>
			</div>
		</div>



	</form>
</div>
