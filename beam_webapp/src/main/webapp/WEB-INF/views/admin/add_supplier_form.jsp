<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="well">
	<form:form class="form-horizontal sign-up-form" method="post"
		action="${contextRoot}/admin/supplier/save" modelAttribute="supplier">

		<!-- View all suppliers -->

		<div id="changepwd" class="form-group">
			<div id="viewallsuppliers" class="text-right">
				<a href="${contextRoot}/admin/allsuppliers">View All Suppliers</a>
			</div>
		</div>

		<!-- Add a category here -->

		<h2 class="text-center header-sign-up">Add a Supplier</h2>

		<!-- Add a supplier name here -->
		<div class="form-group">
			<label for="suppliername" class="col-sm-5 control-label">Supplier
				Name:</label>
			<div class="col-sm-3 input-group">
				<form:input path="name" type="text" id="suppliername"
					name="suppliername" placeholder="Add supplier's name"
					class="form-control"></form:input>
				<form:input path="id" type="hidden"/>
			</div>
		</div>


		<!-- Add a supplier's contact number -->


		<div class="form-group">
			<label class="col-sm-5 control-label">Phone</label>
			<div class="col-sm-3 input-group">
				<form:input path="phoneNumber" name="phone"
					placeholder="Add a phone number" class="form-control" type="text"></form:input>
			</div>
		</div>


		<div class="form-group">
			<div class="text-center">
				<button type="submit" class="btn btn-primary ">Add a
					supplier</button>
			</div>
		</div>



	</form:form>
</div>
