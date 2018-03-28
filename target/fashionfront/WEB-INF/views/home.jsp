<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home page</title>
<style>

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a, .dropbtn {
	display: inline-block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
	background-color: red;
}

li.dropdown {
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #f1f1f1
}

.dropdown:hover .dropdown-content {
	display: block;
}
</style>
</head>
<body>
	<h1 align=center>
		<b>welcome to Fashion Wing</b>
	</h1>
	<ul>
	
		<li><a href="homePage">Home</a></li>
		<c:forEach var="categories" items="${categories}">
		
		<li class="dropdown"><a href="javascript:void(0)" class="dropbtn"> ${categories.name}</a>
			<div class="dropdown-content">
				<a href="#">laptop</a> <a href="#">mobile</a> <a href="#">tv</a>
			</div></li>
			</c:forEach>
		<li style="float:right"><a href="login">Login</a></li>
		<li style="float:right"><a href="register">Register</a></li>
	</ul>
	
	<c:if test="${isUserClickedLogin==true}">
<jsp:include page="login.jsp"></jsp:include>

</c:if>

<c:if test="${isUserClickedRegister==true }">
<jsp:include page="register.jsp"></jsp:include>
</c:if>




<c:if test="${isUserAdmin==true }">
<jsp:include page="admin/adminhome.jsp"></jsp:include>
</c:if>

<c:if test="${isAdminClickedManageProducts==true }">
<jsp:include page="admin/adminhome.jsp"></jsp:include>
</c:if>

<c:if test="${isAdminClickedManageCategories==true }">
<jsp:include page="admin/adminhome.jsp"></jsp:include>
</c:if>

<c:if test="${isAdminClickedManageSuppliers==true }">
<jsp:include page="admin/adminhome.jsp"></jsp:include>
</c:if>

<c:if test="${isAdminClickedSaveCategory==true }">
<jsp:include page="admin/adminhome.jsp"></jsp:include>
</c:if>
<c:if test="${isAdminClickedDeleteCategory==true }">
<jsp:include page="admin/adminhome.jsp"></jsp:include>
</c:if>


<c:if test="${isAdminClickedSaveSupplier==true }">
<jsp:include page="admin/adminhome.jsp"></jsp:include>
</c:if>
<c:if test="${isAdminClickedDeleteSupplier==true }">
<jsp:include page="admin/adminhome.jsp"></jsp:include>
</c:if>


<c:if test="${isAdminClickedSaveProducts==true }">
<jsp:include page="admin/adminhome.jsp"></jsp:include>
</c:if>
<c:if test="${isAdminClickedDeleteProducts==true }">
<jsp:include page="admin/adminhome.jsp"></jsp:include>
</c:if>

${username}
${failmsg}
${category}
</body>

</html>
