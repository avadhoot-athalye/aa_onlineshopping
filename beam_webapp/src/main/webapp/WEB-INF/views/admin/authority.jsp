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
		
	</div>
</div>