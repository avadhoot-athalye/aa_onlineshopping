<div class="row panel panel-acctab	">
<!-- Account navigation tabs are here -->
	<div class="col-md-3">
		<%@include file="../share/account-share.jsp"%>
	</div>
	
<!-- Setting page will dynamically change here -->
	<div class="col-md-9">
		
		<c:if test="${ifUserClickedProfile == true}">
			<%@include file="profile.jsp"%>
		</c:if>
		
		<c:if test="${ifUserClickedmyorders == true}">
			<%@include file="myorders.jsp"%>
		</c:if>
		
		<c:if test="${ifUserClickedmywishlist == true}">
			<%@include file="mywishlist.jsp"%>
		</c:if>
		
		<c:if test="${ifUserClickedChangePassword == true}">
			<%@include file="user_pwd.jsp"%>
		</c:if>
		
	</div>
</div>