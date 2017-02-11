<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="well">
	<form:form class="form-horizontal sign-up-form"
		modelAttribute="address" action="${contextRoot}/user/address/save"
		method="POST">

		<!-- Change your address here -->

		<h2 class="text-center header-sign-up">Update User Address</h2>

		<!-- Update address Line 1 here -->
		<div class="form-group">
			<label for="address_line_1" class="col-sm-5 control-label">Address
				Line 1</label>
			<div class="col-sm-3 input-group">
				<form:input path="addressLine1" placeholder="Room no, Street name"
					class="form-control" value="${address.addressLine1}" />
				<form:hidden path="id" value="${address.id}" />


			</div>
		</div>

		<!-- Update address Line 2 here -->
		<div class="form-group">
			<label for="address_line_2" class="col-sm-5 control-label">Address
				Line 2</label>
			<div class="col-sm-3 input-group">
				<form:input path="addressLine2" type="text" id="address_line_2"
					name="address_line_2" placeholder="local area name"
					class="form-control" />
			</div>
		</div>

		<!-- Update landmark here -->
		<div class="form-group">
			<label for="landmark" class="col-sm-5 control-label">Landmark</label>
			<div class="col-sm-3 input-group">
				<form:input path="landMark" type="text" id="landmark"
					name="landmark" placeholder="landmark" class="form-control" />
			</div>
		</div>

		<!-- Choose city here -->
		<div class="form-group">
			<label for="city" class="col-sm-5 control-label">Choose a
				City:</label>
			<div class="col-sm-3 input-group">
				<form:select path="city" class="form-control">
					<form:option value="Mumbai">Mumbai</form:option>
					<form:option value="Nagpur">Nagpur</form:option>
					<form:option value="Pune">Pune</form:option>
				</form:select>
			</div>
		</div>
		
		<!-- Choose state here -->

		<div class="form-group">
			<label for="state" class="col-sm-5 control-label">Choose a
				State:</label>
			<div class="col-sm-3 input-group">
				<form:select path="state" class="form-control">
					<form:option value="Maharashtra">Maharashtra</form:option>
					
				</form:select>
			</div>
		</div>

		<!-- Choose country here -->

		<div class="form-group">
			<label for="country" class="col-sm-5 control-label">Choose a
				Country: </label>
			<div class="col-sm-3 input-group">
				<form:select path="country" class="form-control">
					<form:option value="INDIA">India</form:option>
				</form:select>

			</div>
		</div>
		
		<!-- Update pincode here -->

		<div class="form-group">
			<label for="pincode" class="col-sm-5 control-label">Pincode:</label>
			<div class="col-sm-3 input-group">
				<form:input path="pincode" type="text" id="pincode" name="pincode"
					class="form-control" placeholder="pincode" />
			</div>
		</div>

		
		<!-- Submit Button -->

		<div class="form-group">
			<div class="text-center">
				<button type="submit" class="btn btn-primary ">Update</button>
			</div>
		</div>
	</form:form>
</div>
