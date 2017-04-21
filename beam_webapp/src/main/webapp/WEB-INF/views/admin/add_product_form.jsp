<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="well">
	<form:form class="form-horizontal sign-up-form" method="post"
		action="${contextRoot}/admin/product/save" modelAttribute="product"
		enctype="multipart/form-data">

		<c:if test="${!empty msg}">
			<div class="alert-msg">
				<div id="success-alert" class="alert alert-success" role="alert">
					<strong>${msg}</strong>
				</div>
			</div>
		</c:if>
		<!-- View all products -->

		<div id="changepwd" class="form-group">
			<div id="viewallproducts" class="text-right">
				<a href="${contextRoot}/admin/allproducts">View All Products</a>
			</div>
		</div>


		<!-- Add a product here -->

		<h2 class="text-center header-sign-up">Add a Product</h2>

		<!-- Add a product name here -->
		<div class="col-md-offset-0 col-sm-offset-0 col-xs-offset-5">
			<div class="form-group">
				<label for="productname" class="col-sm-5 control-label">Product
					Name:</label>
				<div class="col-sm-3 input-group">
					<form:input path="product_name" type="text"
						placeholder="Add a name of product" class="form-control" />
					<form:input type="hidden" path="product_id"></form:input>
				</div>
			</div>
		</div>

		<!-- Choose category here -->

		<div class="form-group">
			<label for="productcategory" class="col-sm-5 control-label">Choose
				a category:</label>
			<div class="col-sm-3 input-group">
				<form:select path="category_id" class="form-control">
					<c:forEach items="${categories}" var="category">
						<form:option value="${category.category_id}">${category.category_name}</form:option>
					</c:forEach>
				</form:select>
			</div>
		</div>

		<!-- Choose supplier here -->

		<div class="form-group">
			<label for="choosesupplier" class="col-sm-5 control-label">Choose
				a supplier:</label>
			<div class="col-sm-3 input-group">
				<form:select path="supplierId" class="form-control">
					<c:forEach items="${suppliers}" var="supplier">
						<form:option value="${supplier.id}">${supplier.name}</form:option>
					</c:forEach>
				</form:select>
			</div>
		</div>

		<!-- Set a price here -->


		<div class="form-group">
			<label for="setprice" class="col-sm-5 control-label">Set a
				price:</label>
			<div class="col-sm-3 input-group">
				<form:input path="product_price" type="number" id="setprice"
					name="setprice" class="form-control" placeholder="Set a Price" />
			</div>
		</div>

		<!-- Set stock here -->

		<div class="form-group">
			<label for="quantity" class="col-sm-5 control-label">Available
				Stock:</label>
			<div class="col-sm-3 input-group">
				<form:input path="product_quantity" type="number" id="quantity"
					name="quantity" class="form-control"
					placeholder="Available in stock" />
			</div>
		</div>

		<!-- Add a product description -->


		<div class="form-group">
			<label for="exampleTextarea" class="col-sm-5 control-label">Add
				a product description</label>
			<div class="col-sm-3 input-group">
				<form:textarea path="product_description" class="form-control"
					id="exampleTextarea" rows="3"></form:textarea>
			</div>
		</div>

		<!-- Add photo here here -->

		<div class="form-group">
			<div class="row">
				<label for="exampleInputFile" class="col-sm-5 control-label">Add
					a cover photo</label>
				<div class="col-sm-3 input-group">
					<form:input path="image" type="file" class="form-control-file"
						id="uploadFile" aria-describedby="fileHelp" />
					<small id="fileHelp" class="form-text text-muted"></small>
				</div>
			</div>
		</div>

		<div class="form-group">
			<div class="text-center">
				<button type="submit" class="btn btn-primary ">Add a
					product</button>
			</div>
		</div>



	</form:form>
</div>
