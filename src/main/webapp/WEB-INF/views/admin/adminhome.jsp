<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home Page</title>


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



</head>
<body style="margin-top:100px">




	<div class="container">

		<ul class="nav nav-tabs">
			<li class="active"><a href="#adminhome" data-toggle="tab">Home</a></li>
			<li><a href="#manageCategories" data-toggle="tab">ManageCategory</a></li>
			<li><a href="#manageSuppliers" data-toggle="tab">ManageSuppliers</a></li>
			<li><a href="#manageProducts" data-toggle="tab">ManageProducts</a></li>
		</ul>
		
	

		<div class="tab-content">
		<div id="adminhome" class="tab-pane fade in active">
				<h3>Home</h3>
				<p>
				${uploadMessage}
				${product}
				</p>
			</div>
		<div id="manageCategories" class="tab-pane fade">
				<h3>Manage Categories</h3>
				<jsp:include page="managecategory.jsp"></jsp:include>
			</div>

			<div id="manageSuppliers" class="tab-pane fade">
				<h3>Manage Suppliers</h3>
				<jsp:include page="managesupplier.jsp"></jsp:include>
			</div>

			<div id="manageProducts" class="tab-pane fade">
				<h3>Manage Products</h3>
				<jsp:include page="manageproducts.jsp"></jsp:include>
			</div>
			</div>
			</div>
			
			
			
			
			
		<!-- 	<div id="home" class="tab-pane fade in active">
				<h3>Home</h3> -->
				<%--  <p>--%>
				<%--  <center>

<table class="table table-bordered">

<tr>
<th> Operations</th>
</tr>
<tr>
<td>
<a href="manageCategories">Manage Category</a>
</td></tr>
<tr><td>
<a href="manageSuppliers">Manage Supplier</a>
</td></tr>
<tr><td>
<a href="manageProducts">Manage Products</a>
</td></tr>
</table>
</center>
</p> --%>

				<%-- <c:if test="${isAdminClickedManageCategories==true }">
					<jsp:include page="managecategory.jsp"></jsp:include>
				</c:if>

				<c:if test="${isAdminClickedManageSuppliers==true }">
					<jsp:include page="managecategory.jsp"></jsp:include>
				</c:if>

				<c:if test="${isAdminClickedManageProducts==true }">
					<jsp:include page="managecategory.jsp"></jsp:include>
				</c:if>
			</div> --%>
			
			
			
</body>
</html>