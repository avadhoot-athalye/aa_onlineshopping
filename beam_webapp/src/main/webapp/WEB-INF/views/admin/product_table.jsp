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
				<td>${product.product.product_name}</td>
				<td>${product.categoryName}</td>
 				<td>${product.supplierName}</td>
				<td>${product.product.product_price}</td>
				<td>${product.product.product_quantity}</td>
				<td>${product.product.product_description}</td>
				<td><a
					href="${contextRoot}/admin/editproduct/${product.product.product_id}"><span
						class="glyphicon glyphicon-pencil"></span>&nbsp;</a> <a
					href="${contextRoot}/admin/deleteproduct/${product.product.product_id}"><span
						class="glyphicon glyphicon-trash"></span></a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>