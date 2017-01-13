<table class="table table-hover">
	<thead>
		<tr>
			<th>SUPPLIER NAME</th>
			<th>CONTACT NUMBER</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${suppliers}" var="supplier">
			<tr>
				<td>${supplier.name}</td>
				<td>${supplier.phoneNumber}</td>
				<td><a href="${contextRoot}/admin/editsupplier/${supplier.id}">Edit
						|</a> <a href="${contextRoot}/admin/deletesupplier/${supplier.id}">Delete</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>

