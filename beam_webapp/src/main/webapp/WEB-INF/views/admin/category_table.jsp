<table class="table table-hover">
	<thead>
		<tr>
			<th>CATEGORY NAME</th>
			<th>CATEGORY DESCRIPTION</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${categories}" var="category">
			<tr>
				<td>${category.category_name}</td>
				<td>${category.category_description}</td>
				<td><a
					href="${contextRoot}/admin/editcategory/${category.category_id}"><span
						class="glyphicon glyphicon-pencil"></span>&nbsp;</a> <a
					href="${contextRoot}/admin/deletecategory/${category.category_id}"><span
						class="glyphicon glyphicon-trash"></span></a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>

