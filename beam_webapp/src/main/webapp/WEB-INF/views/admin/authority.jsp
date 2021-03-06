<div class="row panel panel-acctab	">

<!-- Account navigation tabs are here -->

	<div class="col-md-3">
		<%@include file="../share/admin_tab.jsp"%>
	</div>
	
<!-- Setting page will dynamically change here -->

	<div class="col-md-9">
		
		<c:if test="${ifAdminClickedAddNewProduct == true}">
			<%@include file="add_product_form.jsp"%>
		</c:if>
		
		<c:if test="${ifAdminClickedAddNewCategory == true}">
			<%@include file="add_new_category.jsp"%>
		</c:if>
		
		<c:if test="${ifAdminClickedAddNewSupplier == true}">
			<%@include file="add_supplier_form.jsp"%>
		</c:if>
		
		<c:if test="${ifAdminClickedAddNewWallpaper == true}">
			<%@include file="add_new_wallpaper.jsp"%>
		</c:if>
		
		<c:if test="${ifAdminClickedMySettings == true}">
			<%@include file="admin_settings.jsp"%>
		</c:if>
		
		<c:if test="${ifAdminClickedChangePassword == true}">
			<%@include file="admin_pwd.jsp"%>
		</c:if>
		
		<c:if test="${ifAdminClickedViewAllProducts == true}">
			<%@include file="product_table.jsp"%>
		</c:if>
		
		<c:if test="${ifAdminClickedViewAllCategories == true}">
			<%@include file="category_table.jsp"%>
		</c:if>
		
		<c:if test="${ifAdminClickedViewAllSuppliers == true}">
			<%@include file="supplier_table.jsp"%>
		</c:if>
		
	</div>
</div>