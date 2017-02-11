	

<div class="well">
	<form:form class="form-horizontal sign-up-form"
		action="${contextRoot}/admin/category/save" method="post"
		modelAttribute="category">

		<!-- View all suppliers -->

		<div id="changepwd" class="form-group">
			<div id="viewallcategories" class="text-right">
				<a href="${contextRoot}/admin/allcategories" >View All Categories</a>
			</div>
		</div>

		<!-- Add a category here -->
		
		<h2 class="text-center header-sign-up">${pageTitle}</h2>


		<!-- Add a category name here -->


		<div class="form-group has-success has-feedback">
			<label for="categoryname" class="col-sm-5 control-label ">Category
				Name:</label>
			<div class="col-sm-3 input-group">
				<form:input path="category_name" type="text"
					placeholder="Add name of category" class="form-control" for="input-success"/>
				<form:input type="hidden" path="category_id"></form:input>
			</div>
		</div>


		<!-- Add a category description -->


		<div class="form-group">
			<label for="exampleTextarea" class="col-sm-5 control-label">Add
				a category description</label>
			<div class="col-sm-3 input-group">
				<form:textarea path="category_description" class="form-control" rows="3"></form:textarea>
			</div>
		</div>

		<div class="form-group">
			<div class="text-center">
				<button type="submit" class="btn btn-primary ">${buttonSet}</button>
			</div>
		</div>



	</form:form>
</div>