<table class="table table-hover">
	<thead>
		<tr>
			<th>PRODUCT NAME</th>
			<th>CATEGORY NAME</th>
			<th>SUPPLIER NAME</th>
			<th>PRICE</th>
			<th>STOCK</th>
			<th>DESCRIPTION</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${products}" var="product">
			<tr>
				<td>${product.product_name}</td>
				<td></td>
				<td>${product.supplierId}</td>
				<td>${product.product_price}</td>
				<td>${product.product_quantity}</td>
				<td>${product.product_description}</td>
				<td><a
					href="${contextRoot}/admin/editproduct/${product.product_id}"><span
						class="glyphicon glyphicon-pencil"></span>&nbsp;</a> <a
					href="${contextRoot}/admin/deleteproduct/${product.product_id}"><span
						class="glyphicon glyphicon-trash"></span></a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>